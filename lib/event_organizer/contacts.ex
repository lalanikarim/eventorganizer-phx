defmodule EventOrganizer.Contacts do
  @moduledoc """
  The Contacts context.
  """

  import Ecto.Query, warn: false
  import EventOrganizer
  alias EventOrganizer.Repo

  alias EventOrganizer.Models.Contact

  @doc """
  Returns the list of contacts.

  ## Examples

      iex> list_contacts()
      [%Contact{}, ...]

  """
  def list_contacts(options \\ []) do
    [page: page, per_page: per_page, offset: offset] = get_pager_options(options)
    total = Contact
      |> select(count())
      |> Repo.one()
    %{contacts: Contact
      |> offset(^offset) 
      |> limit(^per_page)
      |> order_by([:givenName,:lastName])
      |> Repo.all(),
      total: total,
      page: page,
      per_page: per_page,
      last_page: (total / per_page) |> :math.ceil |> round
    }
  end

  @doc """
  Gets a single contact.

  Raises if the Contact does not exist.

  ## Examples

      iex> get_contact!(123)
      %Contact{}

  """
  def get_contact!(id), do: raise "TODO"

  @doc """
  Creates a contact.

  ## Examples

      iex> create_contact(%{field: value})
      {:ok, %Contact{}}

      iex> create_contact(%{field: bad_value})
      {:error, ...}

  """
  def create_contact(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a contact.

  ## Examples

      iex> update_contact(contact, %{field: new_value})
      {:ok, %Contact{}}

      iex> update_contact(contact, %{field: bad_value})
      {:error, ...}

  """
  def update_contact(%Contact{} = contact, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Contact.

  ## Examples

      iex> delete_contact(contact)
      {:ok, %Contact{}}

      iex> delete_contact(contact)
      {:error, ...}

  """
  def delete_contact(%Contact{} = contact) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking contact changes.

  ## Examples

      iex> change_contact(contact)
      %Todo{...}

  """
  def change_contact(%Contact{} = contact, _attrs \\ %{}) do
    raise "TODO"
  end
end
