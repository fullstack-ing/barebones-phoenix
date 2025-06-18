defmodule BareBones.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :slug, :string
      add :body, :text
      add :description, :text
      add :published_at, :date
      add :draft, :boolean, default: false, null: false
      add :free, :boolean, default: false, null: false
      add :user_id, references(:users, type: :id, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create index(:posts, [:user_id])
  end
end
