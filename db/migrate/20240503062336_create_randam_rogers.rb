class CreateRandamRogers < ActiveRecord::Migration[7.1]
  def change
    create_table :randam_rogers do |t|
      t.string :body

      t.timestamps
    end
  end
end
