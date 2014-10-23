json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :endereco, :cpf, :telefone, :email
  json.url usuario_url(usuario, format: :json)
end
