defmodule GraphqlWeb.Schema do
    use Absinthe.Schema
    import_types(GraphqlWeb.Schema.Types)
  
    query do
      field :account_information, type: :account_information do
        arg(:id, non_null(:id))
        resolve(&Graphql.Accounts.AccountResolver.find/2)
      end

    end
end