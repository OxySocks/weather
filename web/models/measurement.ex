defmodule Weather.Measurement do
  use Weather.Web, :model

  schema "measurements" do
    field :temperature, :float
    field :humidity, :float
    field :mac_address, :string

    timestamps
  end

  @required_fields ~w(temperature humidity mac_address)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
