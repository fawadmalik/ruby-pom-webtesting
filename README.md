# Ruby::Pom::Webtesting

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


to run a test file, run from commandline

```bash
rspec test/spec/checkboxes_spec.rb

```