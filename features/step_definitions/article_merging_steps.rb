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
  visit '/accounts/login'
  fill_in 'user_login', :with => 'joeblow'
  fill_in 'user_password', :with => 'bbbbbbbbbbb'
  click_button 'Login'
end

Given /^there are two articles$/ do
  @article_1 = Article.create!(body: 'hello world', title: "word up", author: "jeff")
  @article_2 = Article.create!(body: 'It is I and you are you.', title: "no", author: "Bruce")
  puts Article.all.map(&:title)
end

When /^I send a merge request$/ do
  post "/admin/article/merge", article_id: "Foo", merge_with: "Bar"
end

When /^I edit the first article$/ do
  visit('/admin/content/edit/1')
end

