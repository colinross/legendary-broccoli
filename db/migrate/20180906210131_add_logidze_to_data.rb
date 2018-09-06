class AddLogidzeToData < ActiveRecord::Migration[5.0]
  require 'logidze/migration'
  include Logidze::Migration

  def up
    
    add_column :data, :log_data, :jsonb
    

    execute <<-SQL
      CREATE TRIGGER logidze_on_data
      BEFORE UPDATE OR INSERT ON data FOR EACH ROW
      WHEN (coalesce(#{current_setting('logidze.disabled')}, '') <> 'on')
      EXECUTE PROCEDURE logidze_logger(null, 'updated_at');
    SQL

    
  end

  def down
    
    execute "DROP TRIGGER IF EXISTS logidze_on_data on data;"

    
    remove_column :data, :log_data
    
    
  end
end
