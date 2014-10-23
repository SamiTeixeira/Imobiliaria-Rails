json.array!(@proprietarios) do |proprietario|
  json.extract! proprietario, :id, :nome, :endereco, :cpf, :telefone, :email
  json.url proprietario_url(proprietario, format: :json)
end
