# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :conduit_svelte,
  ecto_repos: [ConduitSvelte.Repo]

# Configures the endpoint
config :conduit_svelte, ConduitSvelteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AAq1Ye0G689D+eSWYcqTeJljyi4hXxI0QK9oz4hL0H5bHgmdUBLxHGhbzOIrtK1D",
  render_errors: [view: ConduitSvelteWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ConduitSvelte.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
