defmodule AppWeb.ItemsController do
  use AppWeb, :controller

  alias App.Item
  alias AppWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Item{} = item} <- App.create_item(params) do
      conn
      |> put_status(:created)
      |> render("create.json", item: item)
    end
  end
end
