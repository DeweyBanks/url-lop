class AddSanitizedUrlToLinks < ActiveRecord::Migration
  def change
    add_column :links, :sanitized_url, :string
  end
end
