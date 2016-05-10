rails g model category name description:text
rails g model      invoke  active_record
       create    db/migrate/20160510165228_create_categories.rb
      create    app/models/category.rb
      invoke    test_unit
      create      test/models/category_test.rb
      create      test/fixtures/categories.yml
vet bparanj$ rails g model problem name
rails g      invoke  active_record
       create    db/migrate/20160510165235_create_problems.rb
      create    app/models/problem.rb
      invoke    test_unit
      create      test/models/problem_test.rb
      create      test/fixtures/problems.yml
vet bparanj$ rails g model animal name category:references born_on:date female:boolean
      invoke  active_record
      create    db/migrate/20160510165327_create_animals.rb
      create    app/models/animal.rb
      invoke    test_unit
      create      test/models/animal_test.rb
      create      test/fixtures/animals.yml
	  
rails g controller animals

rails g controller categories

gem 'formtastic', '~> 3.0'

bundle

rails generate formtastic:install
      create  config/initializers/formtastic.rb
      create  lib/templates/erb/scaffold/_form.html.erb

application.css
  
 *= require formtastic
 *= require my_formtastic_changes
 *= require_tree .
 *= require_self

touch app/assets/stylesheets/my_formtastic_changes.css

undefined method `buttons' for #<Formtastic::FormBuilder


<%= form.actions do -%>
    <%= form.action :submit, :as => :button -%>
<% end -%>


Category.create(name: 'Bird')
Category.create(name: 'Pig')
Category.create(name: 'Bull')

rails db:seed







http://buildingrails.com/a/formtastic_forms_in_rails_for_beginners
