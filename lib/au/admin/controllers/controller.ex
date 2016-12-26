defmodule Au.Admin.Controller do
  defmacro __using__(_) do
    quote do
      use Au.Admin.Web, :controller
      @moduledoc false
      plug :put_layout, "admin.html"
    end
  end
end