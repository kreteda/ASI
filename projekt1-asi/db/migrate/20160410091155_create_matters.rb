class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
