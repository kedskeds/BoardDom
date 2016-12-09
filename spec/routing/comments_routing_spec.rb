require 'rails_helper'

RSpec.describe 'Routing to the new comment page', type: :routing do
  it 'GET /games/:game_id/comments/new routes to comments#new' do
    expect(get: '/games/1/comments/new').to route_to('comments#new', game_id: '1')
  end
end
