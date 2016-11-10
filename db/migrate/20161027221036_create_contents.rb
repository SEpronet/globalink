class CreateContents < ActiveRecord::Migration
    def change
        create_table :contents do |t|
            t.integer "law_id"
            t.integer "parent_id"
            t.string "titel"
            t.string "text"
            t.string "content"
            t.string "url"
            
            t.timestamps
        end
    end
end
