defmodule App do
  alias App.Items.Create, as: ItemCreate

  alias App.Orders.Create, as: OrderCreate

  alias App.Users.Create, as: UserCreate
  alias App.Users.Delete, as: UserDelete
  alias App.Users.Get, as: UserGet
  alias App.Users.Update, as: UserUpdate

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
  defdelegate delete_user(id), to: UserDelete, as: :call
  defdelegate update_user(params), to: UserUpdate, as: :call

  defdelegate create_item(params), to: ItemCreate, as: :call

  defdelegate create_order(params), to: OrderCreate, as: :call
end
