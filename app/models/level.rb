class Level < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' }, { id: 1, name: '一般の方(買い物のみ)' }, { id: 2, name: '企業、法人、店舗の方' },
    { id: 10, name: '農家の方(作物の出品等が可能)' }
  ]
  include ActiveHash::Associations
  has_many :users
end
