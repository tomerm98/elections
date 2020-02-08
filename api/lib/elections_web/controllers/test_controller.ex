defmodule ElectionsWeb.TestController do
  use ElectionsWeb, :controller

  def index(conn, _params) do
    json(conn, "test")
  end
end
