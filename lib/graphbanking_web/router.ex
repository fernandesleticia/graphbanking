defmodule GraphbankingWeb.Router do
  use GraphbankingWeb, :router

  pipeline :graphql do
	  plug Graphql.Context  #custom plug written into lib/graphql_web/plug/context.ex folder
  end

  scope "/api" do
    pipe_through(:graphql)  #pipeline through which the request have to be routed
  
    forward("/",  Absinthe.Plug, schema: GraphqlWeb.Schema)
    forward("/graphiql", Absinthe.Plug.GraphiQL, schema: GraphqlWeb.Schema)
  end  
end
