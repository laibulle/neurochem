defmodule NeurochemWeb.Underground.PageController do
  use NeurochemWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def catalog(conn, _params) do
    render(conn, :catalog)
  end

  def product(conn, %{"id" => id}) do
    render(conn, :product, product_id: id)
  end

  def order(conn, _params) do
    render(conn, :order)
  end

  def discretion(conn, _params) do
    render(conn, :discretion)
  end

  def manual(conn, _params) do
    render(conn, :manual)
  end

  def order_confirmation(conn, _params) do
    render(conn, :order_confirmation)
  end

  def receipt(conn, params) do
    render(conn, :receipt,
      recipient_name: Map.get(params, "name", ""),
      delivery_address: Map.get(params, "address", "")
    )
  end
end
