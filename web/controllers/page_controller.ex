defmodule Tinamirka.PageController do
  use Tinamirka.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
