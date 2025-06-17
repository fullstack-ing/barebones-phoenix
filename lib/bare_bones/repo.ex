defmodule BareBones.Repo do
  use Ecto.Repo,
    otp_app: :bare_bones,
    adapter: Ecto.Adapters.SQLite3
end
