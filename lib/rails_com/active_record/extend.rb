module RailsCom::ActiveRecord::Extend
  
  def human_name
    model_name.human
  end
  
  def to_factory_bot
    require 'rails/generators'
    require 'generators/factory_bot/model/model_generator'

    args = [
      self.name.underscore
    ]
    cols = columns.reject(&->(i){ ['id', 'created_at', 'updated_at'].include?(i.name) }).map { |col| "#{col.name}:#{col.type}" }

    generator = FactoryBot::Generators::ModelGenerator.new(args + cols, destination_root: Rails.root)
    generator.invoke_all
  end

  def column_attributes
    columns.map do |column|
      {
        name: column.name.to_sym,
        name_i18n: human_attribute_name(column.name),
        type: column.type,
        sql_type: column.sql_type,
        null: column.null,
        default: column.default,
        default_function: column.default_function,
        comment: column.comment
      }
    end
  end
  
  def to_migration
    require 'rails/generators/active_record/migration/migration_generator'
    r = ActiveRecord::Generators::MigrationGenerator.new ['add_user']
    r.create_migration_file
  end

  def sql_table(except: [], only: [], pure: true)
    if only.size > 0
      _columns = columns.select { |column| only.include?(column.name) }
    else
      _columns = columns.reject { |column| except.include?(column.name) }
    end

    if pure
      sql = ""
    else
      sql = "CREATE TABLE `#{self.table_name}` (\n"
    end

    _columns.each do |column|
      sql << "  `#{column.name}` #{column.sql_type}"
      sql << " COLLATE #{column.collation}" if column.collation
      sql << " NOT NULL" unless column.null
      if column.default
        sql << " DEFAULT '#{column.default}',\n"
      elsif column.default.nil? && column.null
        sql << " DEFAULT NULL,\n"
      else
        sql << ",\n"
      end
    end

    sql << "  PRIMARY KEY (`#{self.primary_key}`)"

    _indexes = connection.indexes(self.table_name).reject { |index| (index.columns & _columns.map { |col| col.name }).blank? }
    if _indexes.present?
      sql << ",\n"
    else
      sql << "\n"
    end
    _indexes.each_with_index do |obj, index|
      sql << "  KEY `#{obj.name}` ("
      sql << obj.columns.map { |col| "`#{col}`" }.join(',')

      if index + 1 == _indexes.size
        sql << ")\n"
      else
        sql << "),\n"
      end
    end

    if pure
      sql
    else
      sql << ")"
    end
  end

end

ActiveSupport.on_load :active_record do
  extend RailsCom::ActiveRecord::Extend
end
