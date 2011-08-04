require "spec_helper"

describe BeesController do
  describe "routing" do

    it "routes to #index" do
      get("/bees").should route_to("bees#index")
    end

    it "routes to #new" do
      get("/bees/new").should route_to("bees#new")
    end

    it "routes to #show" do
      get("/bees/1").should route_to("bees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bees/1/edit").should route_to("bees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bees").should route_to("bees#create")
    end

    it "routes to #update" do
      put("/bees/1").should route_to("bees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bees/1").should route_to("bees#destroy", :id => "1")
    end

  end
end
