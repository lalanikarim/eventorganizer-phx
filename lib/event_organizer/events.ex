defmodule EventOrganizer.Events do
  @moduledoc """
  The Events context.
  """

  import Ecto.Query, warn: false
  import EventOrganizer
  alias EventOrganizer.Repo

  alias EventOrganizer.Models.Event
  alias EventOrganizer.Models.EventType
  alias EventOrganizer.Models.Location

  @doc """
  Returns the list of event.

  ## Examples

      iex> list_event()
      [%Event{}, ...]

  """
  def list_event(options \\ []) do
    [page: page, per_page: per_page, offset: offset] = get_pager_options(options)
    total = Event
    |> select(count())
    |> Repo.one()
    %{data: Event 
    |> order_by([desc: :date])
    |> offset(^offset) 
    |> limit(^per_page)
    |> preload([:event_type, :location])
    |> Repo.all(),
    total: total,
    page: page,
    per_page: per_page,
    last_page: (total / per_page) |> :math.ceil |> round
    }
  end

  @doc """
  Gets a single event.

  Raises if the Event does not exist.

  ## Examples

      iex> get_event!(123)
      %Event{}

  """
  def get_event!(id) do
    Repo.get!(Event, id)
    |> Repo.preload([:event_type, :location])
  end

  @doc """
  Creates a event.

  ## Examples

      iex> create_event(%{field: value})
      {:ok, %Event{}}

      iex> create_event(%{field: bad_value})
      {:error, ...}

  """
  def create_event(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a event.

  ## Examples

      iex> update_event(event, %{field: new_value})
      {:ok, %Event{}}

      iex> update_event(event, %{field: bad_value})
      {:error, ...}

  """
  def update_event(%Event{} = event, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Event.

  ## Examples

      iex> delete_event(event)
      {:ok, %Event{}}

      iex> delete_event(event)
      {:error, ...}

  """
  def delete_event(%Event{} = event) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking event changes.

  ## Examples

      iex> change_event(event)
      %Todo{...}

  """
  def change_event(%Event{} = event, _attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Returns the list of event_type.

  ## Examples

      iex> list_event_type()
      [%EventType{}, ...]

  """
  def list_event_type do
    Repo.all(EventType)
  end

  @doc """
  Gets a single event_type.

  Raises if the Event type does not exist.

  ## Examples

      iex> get_event_type!(123)
      %EventType{}

  """
  def get_event_type!(id), do: Repo.get!(EventType,id)

  @doc """
  Creates a event_type.

  ## Examples

      iex> create_event_type(%{field: value})
      {:ok, %EventType{}}

      iex> create_event_type(%{field: bad_value})
      {:error, ...}

  """
  def create_event_type(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a event_type.

  ## Examples

      iex> update_event_type(event_type, %{field: new_value})
      {:ok, %EventType{}}

      iex> update_event_type(event_type, %{field: bad_value})
      {:error, ...}

  """
  def update_event_type(%EventType{} = event_type, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a EventType.

  ## Examples

      iex> delete_event_type(event_type)
      {:ok, %EventType{}}

      iex> delete_event_type(event_type)
      {:error, ...}

  """
  def delete_event_type(%EventType{} = event_type) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking event_type changes.

  ## Examples

      iex> change_event_type(event_type)
      %Todo{...}

  """
  def change_event_type(%EventType{} = event_type, _attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Returns the list of location.

  ## Examples

      iex> list_location()
      [%Location{}, ...]

  """
  def list_location do
    Repo.all(Location)
  end

  @doc """
  Gets a single location.

  Raises if the Location does not exist.

  ## Examples

      iex> get_location!(123)
      %Location{}

  """
  def get_location!(id), do: Repo.get!(Location, id)

  @doc """
  Creates a location.

  ## Examples

      iex> create_location(%{field: value})
      {:ok, %Location{}}

      iex> create_location(%{field: bad_value})
      {:error, ...}

  """
  def create_location(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a location.

  ## Examples

      iex> update_location(location, %{field: new_value})
      {:ok, %Location{}}

      iex> update_location(location, %{field: bad_value})
      {:error, ...}

  """
  def update_location(%Location{} = location, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Location.

  ## Examples

      iex> delete_location(location)
      {:ok, %Location{}}

      iex> delete_location(location)
      {:error, ...}

  """
  def delete_location(%Location{} = location) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking location changes.

  ## Examples

      iex> change_location(location)
      %Todo{...}

  """
  def change_location(%Location{} = location, _attrs \\ %{}) do
    raise "TODO"
  end
end
