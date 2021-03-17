class Castration < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '未手術' },
    { id: 3, name: '手術済' },
  ]
 
   include ActiveHash::Associations
   has_many :fosters
 
  end