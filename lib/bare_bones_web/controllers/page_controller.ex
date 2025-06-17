defmodule BareBonesWeb.PageController do
  use BareBonesWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
