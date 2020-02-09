# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :elections, ElectionsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xbVYwfBH2jHIiPYrVo9NCtZF0lQweB6sCcDWVqdKuz4+82e/bZ8QcGZmM3OQUkMJ",
  render_errors: [view: ElectionsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Elections.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configures Neo4j DB Connection
config :bolt_sips, Bolt,
  url: "bolt://localhost:7687",
  pool_size: 10

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
