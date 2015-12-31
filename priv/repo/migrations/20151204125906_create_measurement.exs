defmodule Weather.Repo.Migrations.CreateMeasurement do
  use Ecto.Migration

  def change do
    create table(:measurements) do
      add :temperature, :float
      add :humidity, :float
      add :mac_address, :string

      timestamps
    end

  end
end
