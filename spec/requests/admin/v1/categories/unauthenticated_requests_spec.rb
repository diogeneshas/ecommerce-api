require 'rails_helper'

RSpec.describe "Admin V1 Categories without authentication", type: :request do

  context "Get /categories" do
    let(:url) { "/admin/v1/categories" }
    let!(:categories) { create_list(:category, 5) }

    before(:each) { get url }
    include_examples "unauthenticated access"
  end

  context "GET /categories/:id" do
    let(:category) { create(:category) }
    let(:url) { "/admin/v1/categories/#{category.id}" }
  
    before(:each) { get url }
  
    include_examples "unauthenticated access"
  end

  context "Post /categories" do 
    let(:url) { "/admin/v1/categories"}

    before(:each) { post url }
    include_examples "unauthenticated access"
  end

  context "Patch /categories" do
    let(:category) { create(:category) }
    let(:url) { "/admin/v1/categories/#{category.id}" }

    before(:each) { patch url }
    include_examples "unauthenticated access"
  end

  context "Delete /categories" do
    let!(:category) { create(:category) }
    let(:url) { "/admin/v1/categories/#{category.id}" }

    before(:each) { delete url }
    include_examples "unauthenticated access"
  end
end