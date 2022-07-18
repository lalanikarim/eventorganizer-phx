defmodule EventOrganizer.Models.Event do
  use Ecto.Schema
  import Ecto.Changeset
  
  alias EventOrganizer.Models
  
  schema "EVENTS" do
    field :name, :string
    field :date, :date
    field :state, :integer, default: 0
    belongs_to :event_type, Models.EventType, [foreign_key: :eventTypeId, source: :eventTypeId]
    belongs_to :location, Models.Location, [foreign_key: :locationId, source: :locationId]
  end
  
  def changeset(event, attrs) do
    event
    |> cast(attrs,[:name, :date, :eventTypeId, :locationId])
    |> validate_required([:name, :date, :eventTypeId, :locationId])
  end
end