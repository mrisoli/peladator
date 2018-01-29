defmodule PeladatorWeb.Router do
  use PeladatorWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", PeladatorWeb do
    pipe_through(:api)
  end
end
