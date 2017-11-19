defmodule BokWeb.Router do
  use BokWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BokWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/login", LoginController, :index
    get "/about", AboutController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", BokWeb do
  #   pipe_through :api
  # end
end
