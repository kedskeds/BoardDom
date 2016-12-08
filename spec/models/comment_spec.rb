require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) {Comment.new(content:"fucking sucks.", author_id:1,
                              commentable_id:1, commentable_type: "Game")}

  it "has content" do
    expect(comment.content).to eq('fucking sucks.')
  end

  it "has an author" do
    expect(comment.author_id).to eq(1)
  end

  it "has a commentable" do
    expect(comment.commentable_id).to eq(1)
    expect(comment.commentable_type).to eq('Game')
  end

  context "active record" do
      it { should belong_to(:commentable) }
      it { should belong_to(:author) }
  end
end
