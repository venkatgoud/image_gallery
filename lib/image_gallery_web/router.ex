defmodule ImageGalleryWeb.Router do
  use ImageGalleryWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ImageGalleryWeb do
    pipe_through :browser

    get "/", ImageController, :index
    resources "/images", ImageController
  end

  # Other scopes may use custom stacks.
  # scope "/api", ImageGalleryWeb do
  #   pipe_through :api
  # end
end
