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
#

require 'test_helper'

class LabAssistantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
