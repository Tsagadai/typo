# Author::    Chris Curran  (mailto:ccurran@zombie-storage.com)
# Copyright:: Copyright (c) 2012 Chris Curran, Mediazen, Inc.
# License::   Standard copyright

Given /^I am a regular user$/ do
  User.create!({:login => 'joeblow',
                :password => 'bbbbbbbbbbb',
                :email => 'joe@example.com',
                :profile_id => 2,
                :name => 'joeblow',
                :state => 'active'})
end

When /^I visit the first article$/ do
  visit("/admin/content/edit/#{Article.first.id}")
end
