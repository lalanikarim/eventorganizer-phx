defmodule EventOrganizerWeb.Plugs.AuthenticateUser do
  import Plug.Conn

  def init(_params) do
  end

  def call(%{cookies: %{"PLAY_SESSION" => play_session}} = conn, _params) do
    case Regex.named_captures(~r/(?<session_id>.*)-user=(?<user>.*)/, play_session) do
      %{"session_id" => session_id, "user" => user} ->
        conn |> assign(:play_session_id, session_id) |> assign(:user, Jason.decode!(URI.decode(user)))

      nil ->
        conn
    end
  end

  def call(conn, _params) do
    IO.puts("Not logged in")
    conn
  end

end
