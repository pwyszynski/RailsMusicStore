require "rails_helper"

RSpec.describe MusiccdsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/musiccds").to route_to("musiccds#index")
    end

    it "routes to #new" do
      expect(:get => "/musiccds/new").to route_to("musiccds#new")
    end

    it "routes to #show" do
      expect(:get => "/musiccds/1").to route_to("musiccds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/musiccds/1/edit").to route_to("musiccds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/musiccds").to route_to("musiccds#create")
    end

    it "routes to #update" do
      expect(:put => "/musiccds/1").to route_to("musiccds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/musiccds/1").to route_to("musiccds#destroy", :id => "1")
    end

  end
end
