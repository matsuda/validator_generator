class ValidatorGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  check_class_collision :suffix => "Validator"
  # class_option :validator_type, :type => :string, :aliases => '-t',
  #              :desc => "Validator types. Available options are 'each', 'basic' and 'block'. Default: each"

  def create_validator_files
    template 'validator.rb', File.join('app/validators', class_path, "#{file_name}_validator.rb")
  end

  hook_for :test_framework, :as => :model do |instance, test_framework|
    instance.invoke test_framework, ["#{instance.name}Validator"], :fixture => false
  end
end
