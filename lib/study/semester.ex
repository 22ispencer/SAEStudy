defmodule Study.Semester do
  use Ecto.Schema
  import Ecto.Changeset

  schema "semesters" do
    field :name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(semester, attrs) do
    semester
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
