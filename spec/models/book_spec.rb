require 'rails_helper'

RSpec.describe Book, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:reviews) }

    it { should have_many(:author_writers) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
