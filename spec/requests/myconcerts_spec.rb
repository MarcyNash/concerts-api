require 'rails_helper'

RSpec.describe "Myconcerts", type: :request do
  describe "GET /myconcerts" do
    it "works! (now write some real specs)" do
      get myconcerts_path
      expect(response).to have_http_status(200)
    end
  end
end
