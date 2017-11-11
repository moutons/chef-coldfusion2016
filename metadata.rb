name 'coldfusion2016'
maintainer 'Shaun Mouton'
maintainer_email 'sdmouton@devops.christmas'
license 'Apache-2.0'
description 'Installs/Configures coldfusion 2016'
long_description 'Installs/Configures coldfusion 2016'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'java_se', '~> 9.0.1'
depends 'httpd', '~> 0.6.1'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/moutons/coldfusion2016/issues'

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/moutons/coldfusion2016'
