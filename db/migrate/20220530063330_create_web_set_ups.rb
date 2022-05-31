class CreateWebSetUps < ActiveRecord::Migration[7.0]
  def change
    create_table :web_set_ups do |t|
      t.string :web_setup_name
      t.string :seup_value

      t.timestamps
    end
  end
end
