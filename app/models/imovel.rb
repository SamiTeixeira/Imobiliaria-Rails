class Imovel < ActiveRecord::Base
  belongs_to :tipo_de_imovel
  belongs_to :proprietario
end
