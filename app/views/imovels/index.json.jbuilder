json.array!(@imovels) do |imovel|
  json.extract! imovel, :id, :endereco, :area, :quarto, :sala, :cozinha, :banheiro, :areaExterna, :areaDeServico, :garagem, :tipo_de_imovel_id, :proprietario_id
  json.url imovel_url(imovel, format: :json)
end
