defmodule AppWeb.UsersView do
  use AppWeb, :view

  alias App.User

  # def render("create.json", %{user: %User{id: id, name: name}}) do
  def render("create.json", %{user: %User{} = user}) do
    %{
      message: "User created",
      user: user
    }
  end

  def render("user.json", %{user: %User{} = user}), do: %{user: user}
end
