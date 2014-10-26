require 'rails_helper'

RSpec.describe "AgendamentoDeVisita", :type => :request do
  describe "GET /agendamento_de_visitas" do
    it "works! (now write some real specs)" do
      get agendamento_de_visitas_path
      expect(response.status).to be(200)
    end
  end
end
