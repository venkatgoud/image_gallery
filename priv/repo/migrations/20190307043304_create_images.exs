defmodule ImageGallery.Repo.Migrations.CreateImages do
  use Ecto.Migration

  def change do
    create table(:images) do
      add :caption, :string
      add :path, :string

      timestamps()
    end

  end
end
