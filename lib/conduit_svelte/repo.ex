defmodule ConduitSvelte.Repo do
  use Ecto.Repo,
    otp_app: :conduit_svelte,
    adapter: Ecto.Adapters.Postgres
end
