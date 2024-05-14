defmodule Study.ClassesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Study.Classes` context.
  """

  @doc """
  Generate a class.
  """
  def class_fixture(attrs \\ %{}) do
    {:ok, class} =
      attrs
      |> Enum.into(%{
        code: "some code",
        hours: 42,
        name: "some name"
      })
      |> Study.Classes.create_class()

    class
  end
end
