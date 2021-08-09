defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render("index.html")

    #    redirect(conn, to: "/redirect_test")
  end

  def redirect_test(conn, _params) do
    render(conn, "index.html")
  end
end
