defmodule Tinamirka.Mailer do
  use Bamboo.Mailer, otp_app: :tinamirka
end

defmodule Tinamirka.Onboarding.Email do
  import Bamboo.Email
  import Bamboo.MandrillHelper

  def send_request_ping(email, name, message) do
    new_email()
    |> template("tina")
    |> to(["tinamirka@gmail.com"])
    |> from("ideas@belinkedapp.com")
    |> subject(Enum.join(["New email form from ", name], " "))
    |> put_param("global_merge_vars", [
      %{
        "name": "email",
        "content": email
      }, %{
        "name": "FNAME",
        "content": name
      }, %{
        "name": "message",
        "content": message
      }
    ])
    |> Tinamirka.Mailer.deliver_later
  end
end