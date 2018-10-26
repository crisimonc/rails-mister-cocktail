class AddUploadToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :upload, :string
  end
end
