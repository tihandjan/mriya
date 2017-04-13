# README

# CODE STYLE GUIDELINES

* Use SLIM on New and a page thats in HTML that needs a large re design
* Use Bootstrap SCSS/JS features if overriding isn't necessary
	* Then try to use simple custom SCSS / js
		* If its for a large portion of the site that really needs an external styles (like a slideshow library or something)
			* Then you can use an external SCSS/JS library
* Keep SCSS thats for a certain "model" in its appropriate SCSS file. 
	* If a "model" is used in another "view category" put the styles in the "model" SCSS still
* views/layouts should just be full page "templates" designs
* "template" partials should go into views/shared in fact moxst partials should go here...


# INSTALLATION

used guide http://railsapps.github.io/installing-rails.html

You can skip steps on this guide the essential is 

* Follow the RVM installation

then do 

```
rvm install ruby-2.3.0
gem update --system

git clone https://github.com/tihandjan/mriya
cd mriya
rvm use ruby-2.3.0
```
* Heres where you install postgresql for your system
```
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser -s pguser
sudo -u postgres psql
\password pguser
```
* Enter your desired password at the prompt, and confirm it.
* then do
```
\q
```
* Open your application's database configuration file
```
vi config/database.yml
host: localhost
username: pguser
password: pguser_password

bundle install
rake db:create
rake db:migrate
```

# TESTING
* we are using Rspec/Capibara test frameworks. To run all tests type:
```
bundle exec rspec spec
```
