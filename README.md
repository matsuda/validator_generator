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

* generates validator 

カスタムvalidatorクラスのスケルトンファイルを作成する

    $ rails g validator Email
          create  app/validators/email_validator.rb
          invoke  test_unit
          create    test/unit/thing_validator_test.rb
    
    $ cat app/validators/email_validator.rb 
    class EmailValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
      end
    end
  

Copyright (c) 2011 Kosuke Matsuda, released under the MIT license
