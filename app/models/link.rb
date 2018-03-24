class Link < ActiveRecord::Base

  def to_param
    "#{id}-#{slug}"
  end

end
