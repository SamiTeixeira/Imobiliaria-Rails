require 'rails_helper'

RSpec.describe "Imovels", :type => :request do
  describe "GET /imovels" do
    it "works! (now write some real specs)" do
      get imovels_path
      expect(response.status).to be(200)
    end
  end
end
