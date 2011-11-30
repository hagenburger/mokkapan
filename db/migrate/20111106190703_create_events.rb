class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
