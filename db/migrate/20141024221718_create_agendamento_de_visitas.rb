class CreateAgendamentoDeVisitas < ActiveRecord::Migration
  def change
    create_table :agendamento_de_visitas do |t|
      t.date :data
      t.string :hora
      t.references :imovel, index: true
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
