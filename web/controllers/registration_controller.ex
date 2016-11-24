defmodule Peepchat.RegistrationController do
  use Peepchat.Web, :controller

  def create(conn, %{"data" => %{"type" => "user",
                                 "attributes" => %{"email" => email,
                                                   "password" => password,
                                                   "password_confirmation" => password_confirmation}}}) do
    conn
    |> json(%{status: "OK"})
  end
end
