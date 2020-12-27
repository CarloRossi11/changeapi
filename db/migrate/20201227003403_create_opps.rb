class CreateOpps < ActiveRecord::Migration[6.0]
  def change
    create_table :opps do |t|
      t.string :title
      t.string :opp_type
      t.string :opp_description
      t.string :more_info

      t.timestamps
    end
  end
end
