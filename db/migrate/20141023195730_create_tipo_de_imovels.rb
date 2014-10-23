class CreateTipoDeImovels < ActiveRecord::Migration
  def change
    create_table :tipo_de_imovels do |t|
      t.string :descricao
      t.string :tipoDeContrato
      t.float :valor

      t.timestamps
    end
  end
end
