class CreateAgitators < ActiveRecord::Migration[7.1]
  def change
    create_table :agitators do |t|
      t.references :user, foreign_key: true
      t.string :three_things,       null: false
      t.string :gender,       null: false
      t.string :common_name,       null: false
      t.string :name,       null: false
      t.string :when_he_said,       null: false
      t.string :what_people_do,       null: false
      t.string :treasure,       null: false
      t.string :place,       null: false
      t.string :where_they_go,       null: false
      t.string :epic_name,       null: false

      t.timestamps
    end
  end
end
