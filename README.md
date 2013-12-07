# Informante

Simple rails gem for configurations of global inforamations

This gem is to provide a simple way of storing information in one place and get this information anywhere in a Rails application.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'informante'
```

And then execute:

```ruby
bundle install
```

Finishing, use the generator provided by Informante:

```ruby
rails g informante:install
```
> This command is responsible for generating two files for our application:
> * informante.yml - file with yaml markup to store information for our application
> * informante.rb  - contains global method called `informante` for our application

## Usage

By default, our `informante.yml` file has the following configuration:

```yaml
# -- basic example for informante.yml --
#
system:
  name          : 'Name System'
  title         : 'Title System'
  description   : 'Description System'
  company       : '© Company System'
  business      : 'Business System'
  developers    : [
    {
      name  : 'name',
      email : 'email',
      site  : 'site'
    },
  ]
```

> you can store the configuration file that you want, simply follow the standard format for yaml and save the file `informante.yml`

At every point of our application, just use the global method `informante`.
See an example on the console:

```sh
$ informante[:system][:name]
>> "Name System"
```

By default our informante method returns a hash with symbol key. This method responds to four types of format:

```ruby
- informante(:hash) # informante(:hash) == informant
- informante(:object)
- informante(:array)
- informante(:string)
```
Example for respond to object:

```sh
$ informante(:object).system.description
>> "Description System"
```

Example for respond to string:

```sh
$ informante(:string)
>> "{:system=>{:name=>\"Name System\", :title=>\"Title System\", :description=>\"Description System\", :company=>\"© Company System\", :business=>\"Business System\", :developers=>[{:name=>\"name\", :email=>\"email\", :site=>\"site\"}]}}"
```


## Notes

You can use the `informante` method directly:

* **controllers**
* **views**
* **models**
* **helpers**

Important, every time you **modify** the `informante.yml` file you must **restart** the **rails server**.


## Version

0.0.1
