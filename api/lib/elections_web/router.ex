defmodule ElectionsWeb.Router do
  use ElectionsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElectionsWeb do
    pipe_through :api
    get "/", TestController, :index
  end
end
