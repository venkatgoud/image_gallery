defmodule ImageGallery.Media.Image do
  use Ecto.Schema
  use Arc.Ecto.Schema

  import Ecto.Changeset

  schema "images" do
    field :caption, :string
    field :path, ImageGallery.Path.Type

    timestamps()
  end

  @doc false
  def changeset(image, attrs) do
    image
    |> cast(attrs, [:caption])
    |> cast_attachments(attrs, [:path])
    |> validate_required([:caption,:path])
  end
end
