defmodule DivideEtImperaNIF do
  use Rustler,
    otp_app: :divide_et_impera,
    crate: :divide_et_impera_nif

  # When loading a NIF module, dummy clauses for all NIF function are required.
  # NIF dummies usually just error out when called when the NIF is not loaded, as that should never normally happen.
  def search(_arg1, _arg2), do: :erlang.nif_error(:nif_not_loaded)
end
