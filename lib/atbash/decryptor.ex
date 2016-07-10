defmodule Atbash.Decryptor do
  @moduledoc """
  Provides `decrypt`, which decrypts a string.
  """

  import Atbash.Encryptor, only: [ encrypt: 1 ]

  @doc """
  Decrypts a string.

  ## Examples

      iex> Atbash.Decryptor.decrypt("ZGGZXP ZG WZDM")
      "ATTACK AT DAWN"

      iex> Atbash.Decryptor.decrypt("")
      ""
  """
  def decrypt(string) do
    encrypt(string)
  end
end
