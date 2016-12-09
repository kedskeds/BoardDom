class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :up, null: false
      t.integer :voter_id, null: false
      t.references :votable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
