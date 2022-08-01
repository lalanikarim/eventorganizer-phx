defmodule EventOrganizerWeb.EventLive do
  use EventOrganizerWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, events: EventOrganizer.Events.list_event())}
  end
end
