require 'rails_helper'

RSpec.describe User, type: :model do
  context 'user is valid' do
    user = User.new(username: 'Fred',
                    email: 'fred@gmail.com',
                    password: 'password',
                    password_confirmation: 'password')

    it 'has a username' do
      expect(user).to have_attributes(username: 'Fred')
    end

    it 'has an email' do
      expect(user).to have_attributes(email: 'fred@gmail.com')
    end

    it 'has a valid password' do
      expect(user.valid_password?('password')).to eq(true)
    end

    it 'is saved in the database' do
      user.save!
      last_user = User.last
      expect(last_user).to eq(user)
    end
  end

  context 'user is invalid' do
    it 'is not saved in the data base' do
      user = User.create(username: '', email: 'fred@gmail.com', password: 'password', password_confirmation: 'paswsord' )
      last_user = User.last
      expect(last_user).not_to eq(user)
    end
  end

  context 'active record' do
   context 'validations' do
     it { should validate_presence_of(:username) }
     it { should validate_uniqueness_of(:username) }

     it { should validate_presence_of(:email) }
     it { should validate_uniqueness_of(:email).case_insensitive }

     it { should validate_presence_of(:password) }
   end
   context 'associations' do
     it { should have_many(:comments) }
     it { should have_many(:votes) }
     it { should have_and_belong_to_many(:games) }
   end
 end
end
