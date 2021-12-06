require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:book_recommendations) }

    it { should have_many(:recommendations) }

    it { should have_many(:reviews) }

    end

    describe "InDirect Associations" do

    it { should have_many(:books) }

    end

    describe "Validations" do

    end
end
