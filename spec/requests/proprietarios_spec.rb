require 'rails_helper'

RSpec.describe "Proprietarios", :type => :request do
  describe "GET /proprietarios" do
    it "works! (now write some real specs)" do
      get proprietarios_path
      expect(response.status).to be(200)
    end
  end
end
