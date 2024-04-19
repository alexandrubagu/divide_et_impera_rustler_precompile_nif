list = Enum.to_list(1..2_000_000)
search_value = 42

Benchee.run(
  %{
    "elixir_implementation" => fn -> DivideEtImpera.search(list, search_value) end,
    "rust_implementation" => fn -> DivideEtImperaNIF.search(list, search_value) end
  }
)
