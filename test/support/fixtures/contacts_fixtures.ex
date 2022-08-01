defmodule EventOrganizer.ContactsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `EventOrganizer.Contacts` context.
  """

  @doc """
  Generate a contact.
  """
  def contact_fixture(attrs \\ %{}) do
    {:ok, contact} =
      attrs
      |> Enum.into(%{

      })
      |> EventOrganizer.Contacts.create_contact()

    contact
  end
end
