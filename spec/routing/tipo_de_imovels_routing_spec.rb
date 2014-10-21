require "rails_helper"

RSpec.describe TipoDeImovelsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tipo_de_imovels").to route_to("tipo_de_imovels#index")
    end

    it "routes to #new" do
      expect(:get => "/tipo_de_imovels/new").to route_to("tipo_de_imovels#new")
    end

    it "routes to #show" do
      expect(:get => "/tipo_de_imovels/1").to route_to("tipo_de_imovels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tipo_de_imovels/1/edit").to route_to("tipo_de_imovels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tipo_de_imovels").to route_to("tipo_de_imovels#create")
    end

    it "routes to #update" do
      expect(:put => "/tipo_de_imovels/1").to route_to("tipo_de_imovels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tipo_de_imovels/1").to route_to("tipo_de_imovels#destroy", :id => "1")
    end

  end
end
