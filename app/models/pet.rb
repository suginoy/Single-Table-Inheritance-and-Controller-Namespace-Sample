# encoding: utf-8
class Pet < ActiveRecord::Base
  validates :name, :presence => true
  validates :type, :inclusion => { :in => ["Cat::Cat", "Dog::Dog"] } # nilを除外するとPetクラスのインスタンスを永続化できない

  validate :type_is_not_changed

  # ドロップダウン用
  def all_types
    return ["Cat::Cat", "Dog::Dog"]
  end

  private
  def type_is_not_changed
    if type_was != self.type
      errors.add(:type, "ペットのTypeは変更できません。")
    end
  end
end
