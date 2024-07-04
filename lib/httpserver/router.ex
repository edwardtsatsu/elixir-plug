defmodule Httpserver.Router do
  use Plug.Router

  plug :match
  plug :dispatch


  get "/" do
    send_resp(conn, 200, "Welcome to my api")
  end

  match _ do
    send_resp(conn, 404, "There is no route here to call")
  end
end
