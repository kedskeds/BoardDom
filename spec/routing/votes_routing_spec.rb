require 'rails_helper'

RSpec.describe 'Routing to votes', type: :routing do
  it 'routes POST /votes to votes#create' do
    expect(post: '/votes').to route_to('votes#create')
  end
end
