# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :peladator_web,
  namespace: PeladatorWeb,
  ecto_repos: [Peladator.Repo]

# Configures the endpoint
config :peladator_web, PeladatorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gTCGYsDzpFButL7PzhWMH8i0hLt6HzPtXjSbzDsBI6sy4kQqWVzLmC8/TkDfF4km",
  render_errors: [view: PeladatorWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PeladatorWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :peladator_web, :generators,
  context_app: :peladator

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
