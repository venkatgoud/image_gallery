# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :image_gallery,
  ecto_repos: [ImageGallery.Repo]

# Configures the endpoint
config :image_gallery, ImageGalleryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sIe4xXQXNK33OqqFkd9O/9DcIvuA66HQWTw5xH09cB8hG0JpGeY9dUNbmqh/tjjr",
  render_errors: [view: ImageGalleryWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ImageGallery.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
