# Atbash

Implements the [Atbash Cipher](http://www.practicalcryptography.com/ciphers/classical-era/atbash-cipher/) in
Elixir.

This project was written for learning purposes. Don't use the Atbash cipher; it
offers almost no security.

### Installation

```sh
$ git clone https://github.com/jwworth/atbash
$ cd atbash
$ iex -S mix
```

### Usage

Encryption:

```elixir
iex> Atbash.Encryptor.encrypt("OPERATION WARRIOR COWBELL")
"LKVIZGRLM DZIIRLI XLDYVOO"
```

Decryption:

```elixir
iex> Atbash.Decryptor.decrypt("LKVIZGRLM ILNZM ZOTVYIZ")
"OPERATION ROMAN ALGEBRA"
```

### Tests

```sh
$ mix test
```

### License

Atbash is released under the [MIT License](http://www.opensource.org/licenses/MIT).
