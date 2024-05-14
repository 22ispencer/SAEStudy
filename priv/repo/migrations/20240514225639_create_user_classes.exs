defmodule Study.Repo.Migrations.CreateUserClasses do
  use Ecto.Migration

  def change do
    create table(:user_classes) do
      add :grade, :float
      add :user_id, references(:users, on_delete: :nothing)
      add :class_id, references(:classes, on_delete: :nothing)
      add :semester_id, references(:semesters, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:user_classes, [:user_id])
    create index(:user_classes, [:class_id])
    create index(:user_classes, [:semester_id])
  end
end
