defmodule Weather.MeasurementTest do
  use Weather.ModelCase

  alias Weather.Measurement

  @valid_attrs %{humidity: "120.5", mac_address: "some content", temperature: "120.5"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Measurement.changeset(%Measurement{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Measurement.changeset(%Measurement{}, @invalid_attrs)
    refute changeset.valid?
  end
end
