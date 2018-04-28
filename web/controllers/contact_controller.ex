defmodule Tinamirka.ContactController do
  use Tinamirka.Web, :controller

  def post_email(conn, %{"data" => email_params}) do
    Tinamirka.Onboarding.Email.send_request_ping(email_params["email"], email_params["name"], email_params["message"])

    conn
        |> put_status(:created)
        |> render("show.json")
  end
end
