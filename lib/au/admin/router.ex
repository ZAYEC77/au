defmodule Au.Admin.Router do
  use Phoenix.Router

  pipeline :admin do
    plug :put_layout, {Au.Admin.LayoutView, :admin}
  end
end