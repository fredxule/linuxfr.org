class CreateWikiPages < ActiveRecord::Migration
  def self.up
    create_table :wiki_pages do |t|
      t.string :state, :null => false, :default => 'public'
      t.string :title
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :wiki_pages
  end
end