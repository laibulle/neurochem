defmodule NeurochemWeb.PageController do
  use NeurochemWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
