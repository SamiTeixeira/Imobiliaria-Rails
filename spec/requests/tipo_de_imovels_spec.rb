require 'rails_helper'

RSpec.describe "TipoDeImovels", :type => :request do
  describe "GET /tipo_de_imovels" do
    it "works! (now write some real specs)" do
      get tipo_de_imovels_path
      expect(response.status).to be(200)
    end
  end
end
