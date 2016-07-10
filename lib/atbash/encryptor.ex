defmodule Atbash.Encryptor do
  @moduledoc """
  Provides `encrypt`, which encrypts a string.
  """

  @doc """
  Encrypts a string.

  ## Examples

      iex> Atbash.Encryptor.encrypt("ATTACK AT DAWN")
      "ZGGZXP ZG WZDM"

      iex> Atbash.Encryptor.encrypt("")
      ""
  """
  def encrypt(string) do
    encrypt(String.split(string, ""), [])
  end

  defp encrypt([""], result) do
    List.to_string(result)
  end

  defp encrypt([h|t], list) do
    atbash_map = [ A: "Z", B: "Y", C: "X", D: "W", E: "V", F: "U", G: "T", H:
      "S", I: "R", J: "Q", K: "P", L: "O", M: "N", N: "M", O: "L", P: "K", Q:
      "J", R: "I", S: "H", T: "G", U: "F", V: "E", W: "D", X: "C", Y: "B", Z:
      "A", ]

    encoded = atbash_map[String.to_atom(h)] || " "

    encrypt(t, list ++ [encoded])
  end
end
