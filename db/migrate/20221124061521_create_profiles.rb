class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :prefecture, null:false, default: 0
      t.string :drone_name, null:false, default: 0
      t.string :main_crops
      t.date :introduction_year
      t.text :self_introduction

      t.timestamps
    end
  end
end
