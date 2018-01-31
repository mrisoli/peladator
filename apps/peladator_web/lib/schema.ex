defmodule Peladator.Web.Schema do
  @moduledoc """
  Absinthe's graphql schema definition
  """
  use Absinthe.Schema
  import_types(Peladator.Web.Schema.Types)

  query do
  end
end
