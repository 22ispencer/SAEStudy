defmodule Study.User.Class do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_classes" do
    field :grade, :float
    field :user_id, :id
    field :class_id, :id
    field :semester_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(class, attrs) do
    class
    |> cast(attrs, [:grade])
    |> validate_required([:grade])
  end
end
