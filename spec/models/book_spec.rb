require "rails_helper"

RSpec.describe Book, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:author_writer) }

    it { should have_many(:reviews) }
  end

  describe "InDirect Associations" do
    it { should have_many(:users) }
  end

  describe "Validations" do
  end
end
