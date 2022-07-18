defmodule EventOrganizer.Models.EventType do
  use Ecto.Schema
  
  schema "EVENTTYPES" do
    field :name, :string
  end
end