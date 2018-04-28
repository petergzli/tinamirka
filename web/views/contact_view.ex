defmodule Tinamirka.ContactView do
  use Tinamirka.Web, :view

  def render("show.json",  _anything) do
    %{message: "OK" }
  end
end