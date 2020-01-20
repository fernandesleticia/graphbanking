defmodule GraphbankingWeb.Router do
  use GraphbankingWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GraphbankingWeb do
    pipe_through :api
  end
end
