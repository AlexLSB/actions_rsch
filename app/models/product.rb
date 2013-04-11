#encoding: utf-8
class Product < ActiveRecord::Base
  attr_accessible :categoryid, :description, :name, :picture, :price, :url, :vendor
end
