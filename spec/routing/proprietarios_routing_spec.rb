require "rails_helper"

RSpec.describe ProprietariosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/proprietarios").to route_to("proprietarios#index")
    end

    it "routes to #new" do
      expect(:get => "/proprietarios/new").to route_to("proprietarios#new")
    end

    it "routes to #show" do
      expect(:get => "/proprietarios/1").to route_to("proprietarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/proprietarios/1/edit").to route_to("proprietarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/proprietarios").to route_to("proprietarios#create")
    end

    it "routes to #update" do
      expect(:put => "/proprietarios/1").to route_to("proprietarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/proprietarios/1").to route_to("proprietarios#destroy", :id => "1")
    end

  end
end
