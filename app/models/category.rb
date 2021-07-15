class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' }, { id: 1, name: '穀物' }, { id: 2, name: '根菜' },
    { id: 3, name: '豆類' }, { id: 4, name: '葉菜' }, { id: 5, name: 'きのこ類' },
    { id: 6, name: '果物' }, { id: 7, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :items
end
