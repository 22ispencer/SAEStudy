defmodule Study.Repo.Migrations.CreateSemesters do
  use Ecto.Migration

  def change do
    create table(:semesters) do
      add :name, :string

      timestamps(type: :utc_datetime)
    end
  end
end
