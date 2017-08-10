# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :apba, Apba.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nzU+EjQo4fcLAS0s1pIYYph9P76ryr3XiHYEKioUvTU+L9jM8qoewxzu2Zs7qfcp",
  render_errors: [view: Apba.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Apba.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
