class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :address
      t.string :short

      t.timestamps null: false
    end
  end
end
