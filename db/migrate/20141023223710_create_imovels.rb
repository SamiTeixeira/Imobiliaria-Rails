class CreateImovels < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
      t.string :endereco
      t.float :area
      t.int :quarto
      t.int :sala
      t.string :cozinha
      t.string :banheiro
      t.float :areaExterna
      t.float :areaDeServico
      t.int :garagem
      t.references :tipo_de_imovel, index: true
      t.references :proprietario, index: true

      t.timestamps
    end
  end
end
