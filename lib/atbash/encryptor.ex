defmodule Atbash.Encryptor do
  @moduledoc """
  Provides `encrypt`, which encrypts a string.
  """

  @atbash_map [
    A: "Z", B: "Y", C: "X", D: "W", E: "V", F: "U", G: "T", H: "S", I: "R", J:
    "Q", K: "P", L: "O", M: "N", N: "M", O: "L", P: "K", Q: "J", R: "I", S:
    "H", T: "G", U: "F", V: "E", W: "D", X: "C", Y: "B", Z: "A", a: "z", b:
    "y", c: "x", d: "w", e: "v", f: "u", g: "t", h: "s", i: "r", j: "q", k:
    "p", l: "o", m: "n", n: "m", o: "l", p: "k", q: "j", r: "i", s: "h", t:
    "g", u: "f", v: "e", w: "d", x: "c", y: "b", z: "a"
  ]

  @doc """
  Encrypts a string.

  ## Examples

      iex> Atbash.Encryptor.encrypt("ATTACK AT DAWN!")
      "ZGGZXP ZG WZDM!"

      iex> Atbash.Encryptor.encrypt("attack at dawn")
      "zggzxp zg wzdm"

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
    encoded = Access.get(@atbash_map, String.to_atom(h), h)
    encrypt(t, list ++ [encoded])
  end
end
