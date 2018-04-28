# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tinamirka,
  ecto_repos: [Tinamirka.Repo]

# Configures the endpoint
config :tinamirka, Tinamirka.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ykGRpaCamkuVEC0rwns0HHuKb7gZZc5JMnMrcogD6ZNSP/gOrNPddG4Veix6h9O6",
  render_errors: [view: Tinamirka.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tinamirka.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :tinamirka, Tinamirka.Mailer,
  adapter: Bamboo.MandrillAdapter,
  api_key: "NT697U-IxI9KgRAcbets3g"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
