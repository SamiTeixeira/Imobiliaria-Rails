class CreateProposta < ActiveRecord::Migration
  def change
    create_table :proposta do |t|
      t.float :valor
      t.string :status
      t.references :imovel, index: true
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
