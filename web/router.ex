defmodule Peepchat.Router do
  use Peepchat.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
  end

  scope "/api", Peepchat do
    pipe_through :api
    # Registration
    post "register", RegistrationController, :create
    # SessionController
    resources "session", SessionController, only: [:index]
  end
end
