defmodule Phonecodelib do
  @moduledoc """
  Documentation for `Phonecodelib`.
  """

  @doc """
  Filter using country iso.˚

  ## Examples

      iex> Phonecodelib.filter_by_iso "ke"
      [
         "%"{
            "id"=> 110,
            "iso""=>""KE",
            "iso3""=>""KEN",
            "name""=>""KENYA",
            "nicename""=>""Kenya",
            "numcode"=> 404,
            "phonecode"=> 254
         }
      ]

  """
  def filter_by_iso(incoming) do
    IO.puts incoming
    {_a, b } = get_json()
     b
     |> get_in( [Access.filter(&(&1["iso"] === String.upcase(incoming)))])
  end

  @doc """
  Filter using country iso3.

  ## Examples

      iex> Phonecodelib.filter_by_iso3 "ken"
      [
         "%"{
            "id"=> 110,
            "iso""=>""KE",
            "iso3""=>""KEN",
            "name""=>""KENYA",
            "nicename""=>""Kenya",
            "numcode"=> 404,
            "phonecode"=> 254
         }
      ]

  """
  def filter_by_iso3(incoming) do
    IO.puts incoming
    {_a, b } = get_json()
     b
     |> get_in( [Access.filter(&(&1["iso3"] === String.upcase(incoming)))])
  end

  @doc """
  Filter using country name.

  ## Examples

      iex> Phonecodelib.filter_by_name "kenya"
      [
         "%"{
            "id"=> 110,
            "iso""=>""KE",
            "iso3""=>""KEN",
            "name""=>""KENYA",
            "nicename""=>""Kenya",
            "numcode"=> 404,
            "phonecode"=> 254
         }
      ]

  """
  def filter_by_name(incoming) do
    IO.puts incoming
    {_a, b } = get_json()
     b
     |> get_in( [Access.filter(&(&1["name"] === String.upcase(incoming)))])
  end

  @doc """
  Filter using country code/phonecode.

  ## Examples

      iex>  Phonecodelib.filter_by_phonecode 254
      [
         "%"{
            "id"=> 110,
            "iso""=>""KE",
            "iso3""=>""KEN",
            "name""=>""KENYA",
            "nicename""=>""Kenya",
            "numcode"=> 404,
            "phonecode"=> 254
         }
      ]

  """
  def filter_by_phonecode(incoming) do
    IO.puts incoming
    {_a, b } = get_json()
     b
     |> get_in( [Access.filter(&(&1["phonecode"] === incoming))])
  end

  def get_json() do
    with {:ok, body} <- File.read("countries.json"),
         {:ok, json} <- Poison.decode(body), do: {:ok, json}
  end

end
