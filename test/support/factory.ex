defmodule App.Factory do
  use ExMachina.Ecto, repo: App.Repo

  alias App.User

  def user_params_factory do
    %{
      "age" => 27,
      "address" => "Rua test, 5",
      "cep" => "30150365",
      "cpf" => "01578456912",
      "email" => "teste@teste.com",
      "password" => "123456",
      "name" => "Rafael"
    }
  end

  def user_factory do
    %User{
      age: 27,
      address: "Rua test, 5",
      cep: "30150365",
      cpf: "01578456912",
      email: "teste@teste.com",
      password: "123456",
      name: "Rafael",
      id: "6cfd80fa-afc9-4988-aeb3-5f49852c349b"
    }
  end
end
