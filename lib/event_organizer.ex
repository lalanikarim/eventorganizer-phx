defmodule EventOrganizer do
  @moduledoc """
  EventOrganizer keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def get_pager_options(options \\ []) do
    options = [page: page, per_page: per_page] =
      [page: 1, per_page: 20]
      |> Keyword.merge(options)
    Keyword.merge(options,[offset: (page - 1) * per_page])
  end
end
