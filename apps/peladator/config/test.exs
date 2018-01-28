use Mix.Config

# Configure your database
config :peladator, Peladator.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "peladator_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
