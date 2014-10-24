class CreateImovels < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
      t.string :endereco
      t.float :area
      t.integer :quarto
      t.integer :sala
      t.integer :cozinha
      t.integer :banheiro
      t.float :areaExterna
      t.float :areaDeServico
      t.integer :garagem
      t.references :tipo_de_imovel, index: true
      t.references :proprietario, index: true

      t.timestamps
    end
  end
end
