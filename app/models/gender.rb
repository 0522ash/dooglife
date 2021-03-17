class Gender < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'オス' },
    { id: 3, name: 'メス' }
  ]
 
   include ActiveHash::Associations
   has_many :fosters
 
  end