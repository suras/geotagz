class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :ip_address
      t.string :browser
      t.string :os
      t.string :country
      t.string :state
      t.string :city
      t.string :street
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
