class UpdateLogidzeForData < ActiveRecord::Migration[5.0]
  require 'logidze/migration'
  include Logidze::Migration

  def up
    
    execute "DROP TRIGGER logidze_on_data on data;"
    

    execute <<-SQL
      CREATE TRIGGER logidze_on_data
      BEFORE UPDATE OR INSERT ON data FOR EACH ROW
      WHEN (coalesce(#{current_setting('logidze.disabled')}, '') <> 'on')
      EXECUTE PROCEDURE logidze_logger(null, 'updated_at', '{id, name, created_at, updated_at, log_data}');
    SQL

    
  end

  def down
    
    # NOTE: We have no idea on how to revert the migration
    # ('cause we don't know the previous trigger params),
    # but you can do that on your own.
    # 
    # Uncomment this line if you want to raise an error.
    # raise ActiveRecord::IrreversibleMigration
    
  end
end
