# java-serverspec
Testing java puppet module "https://github.com/EslamElHusseiny/puppet-java" using  #Serverspec &amp;&amp; #KitchenCI

## Testing steps 

$ bundle install 
$ kitchen create 
$ librarian-puppet install
$ kitchen converge
$ kitchen verify
