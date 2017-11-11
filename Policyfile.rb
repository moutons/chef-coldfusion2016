# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name "coldfusion2016"

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list "coldfusion2016::default"

cookbook 'httpd', '~> 0.6.1', :supermarket
cookbook 'java_se', '~> 9.0.1', :supermarket

# Specify a custom source for a single cookbook:
cookbook "coldfusion2016", path: "."
