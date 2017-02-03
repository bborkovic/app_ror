class CreateBooks < ActiveRecord::Migration[5.0]
  
  def up
    create_table :books do |t|
    	t.integer "author_id"
    	t.integer "publisher_id"
      t.string "name"
      t.text "description"
      t.timestamps
    end
	  add_index(:books , :author_id)
	  add_index(:books , :publisher_id)
  end

  def down
  	drop_table :books;
  end

end
