# @Author: Alex Fultz <big>
# @Date:   20-Aug-2021 (14:08)
# @Last modified by:   Fultzy
# @Last modified time: 23-Aug-2021 (09:08)


class User < ApplicationRecord

  validates :username, presence: true, length: { minimum: 4, maximum: 12 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6, maximum: 16 }

end
