defmodule Neurochem.Release do
  @moduledoc """
  Used for executing DB release tasks when run in production without Mix
  installed.
  """
  @app :neurochem

  def migrate do
    load_app()

    for repo <- repos() do
      {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :up, all: true))
    end
  end

  def rollback(repo, version) do
    load_app()
    {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :down, to: version))
  end

  def seed do
    load_app()

    for repo <- repos() do
      {:ok, _, _} =
        Ecto.Migrator.with_repo(repo, fn _repo ->
          Code.eval_file(Path.join(:code.priv_dir(:neurochem), "repo/seeds.exs"))
        end)
    end
  end

  defp repos do
    Application.fetch_env!(@app, :ecto_repos)
  end

  defp load_app do
    case Application.load(@app) do
      :ok ->
        :ok

      {:error, {:already_loaded, _}} ->
        :ok

      {:error, reason} ->
        raise "Failed to load application: #{inspect(reason)}"
    end
  end

  if Mix.env() == :test do
    @doc false
    # Allow injecting a custom loader function for testing the different branches
    def __test_load_app_fun(loader_fun) when is_function(loader_fun, 1) do
      case loader_fun.(@app) do
        :ok ->
          :ok

        {:error, {:already_loaded, _}} ->
          :ok

        {:error, reason} ->
          raise "Failed to load application: #{inspect(reason)}"
      end
    end

    @doc false
    def __test_repos, do: repos()
  end
end
