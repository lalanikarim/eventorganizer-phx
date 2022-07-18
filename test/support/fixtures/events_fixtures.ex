defmodule EventOrganizer.EventsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `EventOrganizer.Events` context.
  """

  @doc """
  Generate a event.
  """
  def event_fixture(attrs \\ %{}) do
    {:ok, event} =
      attrs
      |> Enum.into(%{

      })
      |> EventOrganizer.Events.create_event()

    event
  end

  @doc """
  Generate a event_type.
  """
  def event_type_fixture(attrs \\ %{}) do
    {:ok, event_type} =
      attrs
      |> Enum.into(%{

      })
      |> EventOrganizer.Events.create_event_type()

    event_type
  end

  @doc """
  Generate a location.
  """
  def location_fixture(attrs \\ %{}) do
    {:ok, location} =
      attrs
      |> Enum.into(%{

      })
      |> EventOrganizer.Events.create_location()

    location
  end
end
