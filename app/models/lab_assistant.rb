# == Schema Information
#
# Table name: lab_assistants
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  teaching_assistant_id  :integer
#  first_name             :string(255)
#  last_name              :string(255)
#  email                  :string(255)
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  validated              :boolean          default(FALSE)
#  preferred_lab_times    :integer          default([]), is an Array
#  SID                    :integer
#  course_id              :integer
#

class LabAssistant < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable, :trackable
  belongs_to :teaching_assistant
  belongs_to :course
  has_and_belongs_to_many :lab_times

  has_one :contract

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates :SID, uniqueness: true
  validates :SID, length: {is: 8}
end
