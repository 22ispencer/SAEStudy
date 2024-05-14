defmodule Study.Hour do
  use Ecto.Schema
  import Ecto.Changeset

  schema "hours" do
    field :start, :naive_datetime
    field :end, :naive_datetime
    field :user_id, :id
    field :location_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(hour, attrs) do
    hour
    |> cast(attrs, [:start, :end])
    |> validate_required([:start, :end])
  end
end
