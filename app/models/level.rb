class Level < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' }, { id: 1, name: '一般家庭の方' }, { id: 2, name: '企業、法人、店舗の方' },
    { id: 10, name: '農家の方' }
  ]
  include ActiveHash::Associations
  has_many :users
end
