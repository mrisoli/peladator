use Mix.Config

# Configure your database
config :peladator, Peladator.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "peladator_dev",
  hostname: "localhost",
  pool_size: 10
