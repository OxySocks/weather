defmodule Weather.PageController do
  use Weather.Web, :controller
  alias Weather.Measurement
  import Ecto.Query

  def index(conn, _params) do
    query = from m in Measurement,
            order_by: [desc: m.inserted_at],
            limit: 1,
            select: m

    measurements= Repo.all(query)
    render conn, "index.html", measurements: measurements
  end
end
