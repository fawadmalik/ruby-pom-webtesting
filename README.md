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
|-- test/
|   |-- checkbox_test.rb
|   |-- hover_test.rb
|-- .gitignore
|-- README.md
|-- Rakefile
|-- setup.rb
```

```text
project_directory/
|-- Gemfile
|-- Gemfile.lock
|-- spec/
|   |-- spec_helper.rb
|   |-- checkboxes_spec.rb
|   |-- disappearing_elements_spec.rb
|   |-- hovers_spec.rb
|-- pages/
|   |-- checkboxes_page.rb
|   |-- disappearing_elements_page.rb
|   |-- hovers_page.rb

```
 
to run a test file, run from commandline

```bash
rspec test/spec/checkboxes_spec.rb

```