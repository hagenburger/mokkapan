class Localisation < ActiveRecord::Migration
  def up
    rename_column :events, :title,      :title_de
    rename_column :events, :content,    :content_de
    add_column    :events, :title_en,   :string
    add_column    :events, :content_en, :text
    
    rename_column :pictures, :title,    :title_de
    add_column    :pictures, :title_en, :string
  end

  def down
  end
end
