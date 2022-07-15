defmodule EventOrganizerWeb.PageController do
  use EventOrganizerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
