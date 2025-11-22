defmodule Neurochem.Repo do
  use Ecto.Repo,
    otp_app: :neurochem,
    adapter: Ecto.Adapters.Postgres
end
