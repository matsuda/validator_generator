# ValidatorGenerator

Rails3でカスタムvalidatorのスケルトンファイルを生成するプラグイン

## Requirements

* Rails >= 3.0.0

## installation

In your Gemfile, add this line

    gem 'validator_generator'

Then run bundle

    $ bundle

## Features

* setup

autoload_pathsにvalidatorを配置するパスを設定、もしくは追加する

    $ rails g validator:setup

autoload_pathsにまだ何も設定されていない場合

    module MyApp
      class Application < Rails::Application
    
      # config.autoload_paths += %W(#{config.root}/extras)
      config.autoload_paths += %W(#{config.root}/app/validators)
    
autoload_pathsに設定されている場合は、最後に追加する

    module MyApp
      class Application < Rails::Application
    
      config.autoload_paths += %W(#{config.root}/extras #{config.root}/app/validators)
    
* generates validator 

カスタムvalidatorクラスのスケルトンファイルを作成する

    $ rails g validator Email
          create  app/validators/email_validator.rb
    
    $ cat app/validators/email_validator.rb 
    class EmailValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
      end
    end
  

Copyright (c) 2011 Kosuke Matsuda, released under the MIT license
