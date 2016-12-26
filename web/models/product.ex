defmodule Au.Product do
  use Au.Web, :model

  schema "products" do
    field :name, :string
    field :price, :float
    field :description, :string
    field :type, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :price, :description, :type])
    |> validate_required([:name, :price, :description, :type])
  end
end
