class CreateTurniejs < ActiveRecord::Migration
  def change
    create_table :turniejs do |t|
      t.string :title
      t.date :date
      t.text :contents

      t.timestamps
    end
  end
end
