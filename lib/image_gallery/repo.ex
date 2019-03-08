defmodule ImageGallery.Repo do
  use Ecto.Repo,
    otp_app: :image_gallery,
    adapter: Ecto.Adapters.Postgres
end
