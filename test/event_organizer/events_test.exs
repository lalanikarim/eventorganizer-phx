defmodule EventOrganizer.EventsTest do
  use EventOrganizer.DataCase

  alias EventOrganizer.Events

  describe "event" do
    alias EventOrganizer.Events.Event

    import EventOrganizer.EventsFixtures

    @invalid_attrs %{}

    test "list_event/0 returns all event" do
      event = event_fixture()
      assert Events.list_event() == [event]
    end

    test "get_event!/1 returns the event with given id" do
      event = event_fixture()
      assert Events.get_event!(event.id) == event
    end

    test "create_event/1 with valid data creates a event" do
      valid_attrs = %{}

      assert {:ok, %Event{} = event} = Events.create_event(valid_attrs)
    end

    test "create_event/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Events.create_event(@invalid_attrs)
    end

    test "update_event/2 with valid data updates the event" do
      event = event_fixture()
      update_attrs = %{}

      assert {:ok, %Event{} = event} = Events.update_event(event, update_attrs)
    end

    test "update_event/2 with invalid data returns error changeset" do
      event = event_fixture()
      assert {:error, %Ecto.Changeset{}} = Events.update_event(event, @invalid_attrs)
      assert event == Events.get_event!(event.id)
    end

    test "delete_event/1 deletes the event" do
      event = event_fixture()
      assert {:ok, %Event{}} = Events.delete_event(event)
      assert_raise Ecto.NoResultsError, fn -> Events.get_event!(event.id) end
    end

    test "change_event/1 returns a event changeset" do
      event = event_fixture()
      assert %Ecto.Changeset{} = Events.change_event(event)
    end
  end

  describe "event_type" do
    alias EventOrganizer.Events.EventType

    import EventOrganizer.EventsFixtures

    @invalid_attrs %{}

    test "list_event_type/0 returns all event_type" do
      event_type = event_type_fixture()
      assert Events.list_event_type() == [event_type]
    end

    test "get_event_type!/1 returns the event_type with given id" do
      event_type = event_type_fixture()
      assert Events.get_event_type!(event_type.id) == event_type
    end

    test "create_event_type/1 with valid data creates a event_type" do
      valid_attrs = %{}

      assert {:ok, %EventType{} = event_type} = Events.create_event_type(valid_attrs)
    end

    test "create_event_type/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Events.create_event_type(@invalid_attrs)
    end

    test "update_event_type/2 with valid data updates the event_type" do
      event_type = event_type_fixture()
      update_attrs = %{}

      assert {:ok, %EventType{} = event_type} = Events.update_event_type(event_type, update_attrs)
    end

    test "update_event_type/2 with invalid data returns error changeset" do
      event_type = event_type_fixture()
      assert {:error, %Ecto.Changeset{}} = Events.update_event_type(event_type, @invalid_attrs)
      assert event_type == Events.get_event_type!(event_type.id)
    end

    test "delete_event_type/1 deletes the event_type" do
      event_type = event_type_fixture()
      assert {:ok, %EventType{}} = Events.delete_event_type(event_type)
      assert_raise Ecto.NoResultsError, fn -> Events.get_event_type!(event_type.id) end
    end

    test "change_event_type/1 returns a event_type changeset" do
      event_type = event_type_fixture()
      assert %Ecto.Changeset{} = Events.change_event_type(event_type)
    end
  end

  describe "location" do
    alias EventOrganizer.Events.Location

    import EventOrganizer.EventsFixtures

    @invalid_attrs %{}

    test "list_location/0 returns all location" do
      location = location_fixture()
      assert Events.list_location() == [location]
    end

    test "get_location!/1 returns the location with given id" do
      location = location_fixture()
      assert Events.get_location!(location.id) == location
    end

    test "create_location/1 with valid data creates a location" do
      valid_attrs = %{}

      assert {:ok, %Location{} = location} = Events.create_location(valid_attrs)
    end

    test "create_location/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Events.create_location(@invalid_attrs)
    end

    test "update_location/2 with valid data updates the location" do
      location = location_fixture()
      update_attrs = %{}

      assert {:ok, %Location{} = location} = Events.update_location(location, update_attrs)
    end

    test "update_location/2 with invalid data returns error changeset" do
      location = location_fixture()
      assert {:error, %Ecto.Changeset{}} = Events.update_location(location, @invalid_attrs)
      assert location == Events.get_location!(location.id)
    end

    test "delete_location/1 deletes the location" do
      location = location_fixture()
      assert {:ok, %Location{}} = Events.delete_location(location)
      assert_raise Ecto.NoResultsError, fn -> Events.get_location!(location.id) end
    end

    test "change_location/1 returns a location changeset" do
      location = location_fixture()
      assert %Ecto.Changeset{} = Events.change_location(location)
    end
  end
end
