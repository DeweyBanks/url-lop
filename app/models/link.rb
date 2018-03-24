class Link < ActiveRecord::Base
  after_create :set_slug

  def to_param
    "#{id}-#{slug}"
  end

  def display_slug
    ENV['BASE_URL'] + self.slug
  end

  private

    def set_slug
      self.slug = self.id.to_s(36)
      self.save
    end

end
