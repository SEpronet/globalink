# No config>database.yml 
* ignored it since everyone's file will be different. Copy of a working local database.yml should be made before pulling. 

# Remove: gem 'mysql2', '>= 0.3.18', '< 0.5' #from gemfile
only for the memebers using mac.
* This line will be replaced by 'sqlite3'
Could have added it to the ignore list but there are a few non-default gems in there, that areessential for our website. 
We can add it for ignore once everyone has the first commit set up. 

