class CreateProprietarios < ActiveRecord::Migration
  def change
    create_table :proprietarios do |t|
      t.string :nome
      t.string :endereco
      t.string :cpf
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
