# Ruby::Pom::Webtesting

### Project Structure:

```textmate
your_project_name/
|-- Gemfile
|-- Gemfile.lock
|-- lib/
|   |-- pages/
|   |   |-- checkbox_page.rb
|   |   |-- hover_page.rb
|   |   |-- iframe_page.rb
|-- test/
|   |-- checkbox_test.rb
|   |-- hover_test.rb
|   |-- iframe_test.rb
|-- .gitignore
|-- README.md
|-- Rakefile
|-- setup.rb
```

 
to run all tests, run from commandline

```bash

rake

```
Rake file has tasks defined for each test as well
```ruby

Rake::TestTask.new(:checkboxes) do |task|
  task.pattern = 'test/checkbox_test.rb'
end

# Task to run hover_test.rb
Rake::TestTask.new(:disappearing) do |task|
  task.pattern = 'test/disappearing_test.rb'
end

Rake::TestTask.new(:iframe) do |task|
  task.pattern = 'test/iframe_test.rb'
end

```

to run an individual test use its task name with rake like so

```bash

rake checkboxes
or
rake disappearing

```
