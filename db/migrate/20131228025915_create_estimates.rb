class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.integer :response_id
      t.integer :facebook_male_friends
      t.integer :facebook_gay_friends
      t.string :accuracy
      t.integer :right_percentage
      t.integer :facebook_recruitable_friends
      t.string :accuracy_recruitable
      t.integer :right_percentage_recruitable
      t.string :how_recruited
      t.string :email_address
      t.timestamps
    end
  end
end
