class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :title
      t.datetime :modify_date
      t.string :auther
      t.text :description

      t.timestamps null: false
    end
  end
end
