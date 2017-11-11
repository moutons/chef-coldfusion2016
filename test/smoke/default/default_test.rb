# # encoding: utf-8

# Inspec test for recipe coldfusion2016::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('coldfusion') do
    it { should exist }
  end

  describe directory('/opt/coldfusion2016') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(8500) do
  it { should be_listening }
end
