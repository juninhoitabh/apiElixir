defmodule AppWeb.OrdersView do
  use AppWeb, :view

  alias App.Order

  def render("create.json", %{order: %Order{} = order}) do
    %{
      message: "Order created",
      order: order
    }
  end
end
