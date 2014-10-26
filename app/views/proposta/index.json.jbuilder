json.array!(@proposta) do |propostum|
  json.extract! propostum, :id, :valor, :status, :imovel_id, :usuario_id
  json.url propostum_url(propostum, format: :json)
end
