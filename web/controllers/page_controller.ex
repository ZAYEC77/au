defmodule Au.PageController do
  use Au.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
