defmodule EventOrganizer.Repo do
  use Ecto.Repo,
    otp_app: :event_organizer,
    adapter: Ecto.Adapters.Postgres
end
