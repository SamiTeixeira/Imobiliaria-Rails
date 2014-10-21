json.array!(@tipo_de_imovels) do |tipo_de_imovel|
  json.extract! tipo_de_imovel, :id, :descricao
  json.url tipo_de_imovel_url(tipo_de_imovel, format: :json)
end
