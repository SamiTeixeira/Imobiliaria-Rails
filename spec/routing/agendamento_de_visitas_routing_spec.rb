require "rails_helper"

RSpec.describe AgendamentoDeVisitasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/agendamento_de_visitas").to route_to("agendamento_de_visitas#index")
    end

    it "routes to #new" do
      expect(:get => "/agendamento_de_visitas/new").to route_to("agendamento_de_visitas#new")
    end

    it "routes to #show" do
      expect(:get => "/agendamento_de_visitas/1").to route_to("agendamento_de_visitas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/agendamento_de_visitas/1/edit").to route_to("agendamento_de_visitas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/agendamento_de_visitas").to route_to("agendamento_de_visitas#create")
    end

    it "routes to #update" do
      expect(:put => "/agendamento_de_visitas/1").to route_to("agendamento_de_visitas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/agendamento_de_visitas/1").to route_to("agendamento_de_visitas#destroy", :id => "1")
    end

  end
end
