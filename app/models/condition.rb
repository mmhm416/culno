class Condition < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' }, { id: 1, name: '店頭品同等' }, { id: 2, name: '規格外サイズ品' },
    { id: 3, name: 'キズ、汚れあり' }, { id: 4, name: '形状規格外' }, { id: 5, name: '無選別品' },
    { id: 6, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :items
end
