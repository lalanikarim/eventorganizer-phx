defmodule EventOrganizer.Models.Contact do
  use Ecto.Schema
  import Ecto.Changeset
  
  schema "CONTACTS" do
    field :givenName, :string 
    field :lastName, :string
    field :groupId, :string
    field :sex, Ecto.Enum, values: [male: "m",female: "f"]
    field :category, Ecto.Enum, values: [student: "r", adult: "a", senior: "s"]
    field :notes, :string
  end

  def changeset(contact, params \\ %{}) do
    contact
    |> cast(params,[:givenName, :lastName, :groupId, :sex, :category, :notes])
    |> validate_required([:givenName, :lastName])
  end
end
