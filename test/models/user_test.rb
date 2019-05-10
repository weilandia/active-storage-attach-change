require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "attach returns attachments array" do
    u = User.create
    attachments = u.files.attach(
      io: StringIO.new("This is a file."),
      filename: "file.txt"
    )

    assert_equal "file.txt", "#{attachments.first.filename}"
  end
end
