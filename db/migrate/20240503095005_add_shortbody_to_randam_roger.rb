class AddShortbodyToRandamRoger < ActiveRecord::Migration[7.1]
  def change
    add_column :randam_rogers, :shortbody, :string
  end
end
