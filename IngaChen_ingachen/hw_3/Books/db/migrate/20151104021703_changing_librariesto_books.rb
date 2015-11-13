class ChangingLibrariestoBooks < ActiveRecord::Migration
  def change
  	rename_table('libraries', 'books')
  end
end
