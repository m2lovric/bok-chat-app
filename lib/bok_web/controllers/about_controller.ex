defmodule BokWeb.AboutController do
    use BokWeb, :controller
  
    def index(conn, _params) do
      render conn, "index.html"
    end
  end