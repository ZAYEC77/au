defmodule Au.Admin.DefaultController do
  use Au.Admin.Controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  
end