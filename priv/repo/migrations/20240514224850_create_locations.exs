defmodule Study.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string
      add :latitude, :float
      add :longitudea, :float
      add :radius, :float

      timestamps(type: :utc_datetime)
    end
  end
end
