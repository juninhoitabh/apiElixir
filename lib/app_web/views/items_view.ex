defmodule AppWeb.ItemsView do
  use AppWeb, :view

  alias App.Item

  def render("create.json", %{item: %Item{} = item}) do
    %{
      message: "Item created",
      item: item
    }
  end
end
