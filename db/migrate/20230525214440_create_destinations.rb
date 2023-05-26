class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :place_name
      t.string :state
      t.string :country
      t.string :travel_time
      t.string :mode

      t.timestamps
    end
  end
end
