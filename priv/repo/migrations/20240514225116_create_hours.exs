defmodule Study.Repo.Migrations.CreateHours do
  use Ecto.Migration

  def change do
    create table(:hours) do
      add :start, :naive_datetime
      add :end, :naive_datetime
      add :user_id, references(:users, on_delete: :nothing)
      add :location_id, references(:locations, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:hours, [:user_id])
    create index(:hours, [:location_id])
  end
end
