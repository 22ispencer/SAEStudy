defmodule Study.Repo.Migrations.CreateClasses do
  use Ecto.Migration

  def change do
    create table(:classes) do
      add :code, :string
      add :name, :string
      add :hours, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
