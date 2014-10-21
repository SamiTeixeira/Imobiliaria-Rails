class CreateTipoDeImovels < ActiveRecord::Migration
  def change
    create_table :tipo_de_imovels do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
