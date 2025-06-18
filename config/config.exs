# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :bare_bones, :scopes,
  user: [
    default: true,
    module: BareBones.Accounts.Scope,
    assign_key: :current_scope,
    access_path: [:user, :id],
    schema_key: :user_id,
    schema_type: :id,
    schema_table: :users,
    test_data_fixture: BareBones.AccountsFixtures,
    test_login_helper: :register_and_log_in_user
  ]

config :bare_bones,
  ecto_repos: [BareBones.Repo],
  generators: [timestamp_type: :utc_datetime]

# Configures the endpoint
config :bare_bones, BareBonesWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  render_errors: [
    formats: [html: BareBonesWeb.ErrorHTML, json: BareBonesWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: BareBones.PubSub,
  live_view: [signing_salt: "U0v50v2O"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :bare_bones, BareBones.Mailer, adapter: Swoosh.Adapters.Local

# Configures Elixir's Logger
config :logger, :default_formatter,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
