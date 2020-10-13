defmodule PhoenixLiveViewExample.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :string
      add :enabled, :boolean, default: false, null: false

      timestamps()
    end
  end
end
