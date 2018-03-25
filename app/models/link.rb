class Link < ActiveRecord::Base
  after_create :set_slug


  def display_slug
    ENV["BASE_URL"] + self.slug
  end

  private

    def set_slug
      self.slug = self.id.to_s(36) unless self.slug.present?
      self.save
    end

end
