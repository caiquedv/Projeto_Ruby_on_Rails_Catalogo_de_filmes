class RenameDiretorsToDirectors < ActiveRecord::Migration[7.1]
  def change
    rename_table :diretors, :directors
  end
end
