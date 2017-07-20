require "rails_helper"

RSpec.describe MyconcertsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/myconcerts").to route_to("myconcerts#index")
    end

    it "routes to #new" do
      expect(:get => "/myconcerts/new").to route_to("myconcerts#new")
    end

    it "routes to #show" do
      expect(:get => "/myconcerts/1").to route_to("myconcerts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/myconcerts/1/edit").to route_to("myconcerts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/myconcerts").to route_to("myconcerts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/myconcerts/1").to route_to("myconcerts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/myconcerts/1").to route_to("myconcerts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/myconcerts/1").to route_to("myconcerts#destroy", :id => "1")
    end

  end
end
