module Rails
  class ValidatorGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    check_class_collision :suffix => "Validator"

    def create_validator_files
      template 'validator.rb', File.join('app/validators', class_path, "#{file_name}_validator.rb")
    end
  end
end
