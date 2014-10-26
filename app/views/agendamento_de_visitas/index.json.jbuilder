json.array!(@agendamento_de_visitas) do |agendamento_de_visita|
  json.extract! agendamento_de_visita, :id, :data, :hora, :imovel_id, :usuario_id
  json.url agendamento_de_visita_url(agendamento_de_visita, format: :json)
end
