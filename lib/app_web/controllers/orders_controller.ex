defmodule AppWeb.OrdersController do
  use AppWeb, :controller

  alias App.Order
  alias AppWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Order{} = order} <- App.create_order(params) do
      conn
      |> put_status(:created)
      |> render("create.json", order: order)
    end
  end
end
