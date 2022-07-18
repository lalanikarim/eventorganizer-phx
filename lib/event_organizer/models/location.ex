defmodule EventOrganizer.Models.Location do
  use Ecto.Schema
  
  schema "LOCATIONS" do
    field :name, :string
  end
end