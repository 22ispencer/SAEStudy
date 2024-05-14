defmodule Study.Location do
  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field :name, :string
    field :latitude, :float
    field :longitudea, :float
    field :radius, :float

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(location, attrs) do
    location
    |> cast(attrs, [:name, :latitude, :longitudea, :radius])
    |> validate_required([:name, :latitude, :longitudea, :radius])
  end
end
