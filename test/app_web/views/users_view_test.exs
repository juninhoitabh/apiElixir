defmodule AppWeb.UsersViewTest do
  use AppWeb.ConnCase, async: true

  import Phoenix.View
  import App.Factory

  alias AppWeb.UsersView

  test "renders create.json" do
    user = build(:user)

    response = render(UsersView, "create.json", user: user)

    assert %{
             message: "User created",
             user: %App.User{
               address: "Rua test, 5",
               age: 27,
               cep: "30150365",
               cpf: "01578456912",
               email: "teste@teste.com",
               id: "6cfd80fa-afc9-4988-aeb3-5f49852c349b",
               inserted_at: nil,
               name: "Rafael",
               password: "123456",
               password_hash: nil,
               updated_at: nil
             }
           } = response
  end
end
