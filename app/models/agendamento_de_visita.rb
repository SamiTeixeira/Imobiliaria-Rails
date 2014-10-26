class AgendamentoDeVisita < ActiveRecord::Base
  belongs_to :imovel
  belongs_to :usuario
end
