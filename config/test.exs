use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :image_gallery, ImageGalleryWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :image_gallery, ImageGallery.Repo,
  username: "postgres",
  password: "postgres",
  database: "image_gallery_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :arc, storage: Arc.Storage.Local

