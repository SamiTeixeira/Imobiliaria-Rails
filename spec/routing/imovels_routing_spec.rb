require "rails_helper"

RSpec.describe ImovelsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/imovels").to route_to("imovels#index")
    end

    it "routes to #new" do
      expect(:get => "/imovels/new").to route_to("imovels#new")
    end

    it "routes to #show" do
      expect(:get => "/imovels/1").to route_to("imovels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/imovels/1/edit").to route_to("imovels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/imovels").to route_to("imovels#create")
    end

    it "routes to #update" do
      expect(:put => "/imovels/1").to route_to("imovels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/imovels/1").to route_to("imovels#destroy", :id => "1")
    end

  end
end
