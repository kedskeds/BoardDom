require 'rails_helper'

RSpec.describe Vote, type: :model do

  context "user is valid" do
    vote = Vote.new( up: true,
                     voter_id: 1,
                     votable_id: 1,
                     votable_type: :game )

   it 'has an up attribute' do
    expect(vote).to have_attributes(up: true)
   end
  end

 context 'active record' do
   context 'validations' do
     it { should validate_presence_of(:up) }
     it { should validate_presence_of(:voter) }
     it { should validate_presence_of(:votable) }
   end
   context 'associations' do
     it { should belong_to(:voter) }
     it { should belong_to(:votable) }
   end
 end

end
