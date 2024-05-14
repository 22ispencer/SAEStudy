defmodule Study.Class do
  use Ecto.Schema
  import Ecto.Changeset

  schema "classes" do
    field :code, :string
    field :name, :string
    field :hours, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(class, attrs) do
    class
    |> cast(attrs, [:code, :name, :hours])
    |> validate_required([:code, :name, :hours])
  end
end
