class CreateRovers < ActiveRecord::Migration[5.0]
  def change
    create_table :rovers do |t|

      t.timestamps
    end
  end
end
