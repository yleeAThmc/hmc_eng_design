class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :responses
  accepts_nested_attributes_for :responses, reject_if: :all_blank, allow_destroy: true
  
  enum qtype: [:long_text, :multiple_choice, :short_text, :text]
  after_initialize :set_default_qtype, :if => :new_record?


  def set_default_qtype
    self.qtype ||= :long_text
  end
end
