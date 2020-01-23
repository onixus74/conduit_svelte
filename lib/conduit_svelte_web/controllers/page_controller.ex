defmodule ConduitSvelteWeb.PageController do
  use ConduitSvelteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
