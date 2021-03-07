# In this file, we load production configuration and secrets
# from environment variables. You can also hardcode secrets,
# although such is generally not recommended and you have to
# remember to add this file to your .gitignore.
use Mix.Config

#Databse settings

config :chat, Chat.Repo,
  # ssl: true,
  host: "127.0.0.1",
  port: 5432,
  database: "chat_prod",
  username: "postgres",
  password: "abhishek",
  pool_size: 10

#Web Endpoint settings
config :chat, ChatWeb.Endpoint,
  server: true,
  http: [port: 4000,  transport_options: [socket_opts: [:inet6]]],
  url: [host: "139.59.38.199", port:80],
  check_origin: [
    "http://139.59.38.199"
    "http://139.59.38.199:4000"
  ]
  secret_key_base: "qNUhygNa5vioTE0pQuChsCqTe5B9km4EXmXh6GRV/YH+tZ1uKmEHjc0L/n/zNz20"

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
#     config :chat, ChatWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.
