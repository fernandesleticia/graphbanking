defmodule Graphql.Accounts.AccountResolver do
    alias Graphql.Accounts    
                  
    def find(%{id: id}, _info) do
      case Accounts.get_account_by_id(id) do
        nil -> {:error, "Account id #{id} not found!"}
        account -> {:ok, account}
      end
    end
  end