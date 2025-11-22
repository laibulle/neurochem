defmodule NeurochemWeb.Corporate.PageController do
  use NeurochemWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def about(conn, _params) do
    render(conn, :about)
  end

  def research(conn, _params) do
    render(conn, :research)
  end

  def products(conn, _params) do
    render(conn, :products)
  end

  def contact(conn, _params) do
    render(conn, :contact)
  end
end
