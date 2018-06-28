# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name "ol-server"

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list "testbook::default"

# Specify a custom source for a single cookbook:
cookbook "testbook", git: 'https://github.com/shivendrapro0/testbook.git', branch: 'shivesha_test'

default['qa'] = {
  testbook: {
    starter_name: 'Amrita TOmar'
  }
}
default['dev'] = {
  testbook: {
    starter_name: 'Shivendra Sharma'
  }
}
