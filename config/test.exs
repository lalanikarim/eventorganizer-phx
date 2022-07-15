import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :event_organizer, EventOrganizer.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "event_organizer_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :event_organizer, EventOrganizerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "s4BcD8cEKasvX8KP40Nb7yRmEKB/pIn3Z8bWBjnSu5W8edX8NSnRN1VUXISmcbLc",
  server: false

# In test we don't send emails.
config :event_organizer, EventOrganizer.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
