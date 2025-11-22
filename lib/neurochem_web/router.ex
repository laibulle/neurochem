defmodule NeurochemWeb.Router do
  use NeurochemWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {NeurochemWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :corporate do
    plug :browser
    plug :put_layout, html: {NeurochemWeb.Layouts, :corporate}
  end

  pipeline :underground do
    plug :browser
    plug :put_layout, html: {NeurochemWeb.Layouts, :underground}
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # Corporate Neurochem Site (main pharmaceutical company)
  # Matches: neurochem.com, localhost:4000
  scope "/", NeurochemWeb.Corporate, host: "neurochem." do
    pipe_through :corporate

    get "/", PageController, :home
    get "/about", PageController, :about
    get "/research", PageController, :research
    get "/products", PageController, :products
    get "/contact", PageController, :contact
  end

  # Underground SUBMISSYN Site (illicit ordering/marketplace)
  # Matches: submissyn.com, localhost:4001, 127.0.0.1:4000
  scope "/", NeurochemWeb.Underground, host: "submissyn." do
    pipe_through :underground

    get "/", PageController, :home
    get "/catalog", PageController, :catalog
    get "/product/:id", PageController, :product
    get "/order", PageController, :order
    get "/discretion", PageController, :discretion
    get "/manual", PageController, :manual
    get "/order-confirmation", PageController, :order_confirmation
    get "/receipt", PageController, :receipt
    live "/consentement", ConsentementLive
  end

  # Fallback for development - route based on port
  # localhost:4000 -> Corporate, 127.0.0.1:4000 -> Underground
  scope "/", NeurochemWeb.Corporate do
    pipe_through :corporate

    get "/", PageController, :home
    get "/about", PageController, :about
    get "/research", PageController, :research
    get "/products", PageController, :products
    get "/contact", PageController, :contact
  end

  # Other scopes may use custom stacks.
  # scope "/api", NeurochemWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:neurochem, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: NeurochemWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
