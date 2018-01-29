use Mix.Config

config :peladator, ecto_repos: [Peladator.Repo]

import_config "#{Mix.env()}.exs"
