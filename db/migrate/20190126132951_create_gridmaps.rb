class CreateGridmaps < ActiveRecord::Migration[5.0]
  def change
    create_table :gridmaps do |t|

      t.timestamps
    end
  end
end
