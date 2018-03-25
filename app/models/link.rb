class Link < ActiveRecord::Base
  before_create :set_sanitized_url
  after_create :set_slug


  def full_slug_url
    ENV["BASE_URL"] + self.slug
  end

  private

    def set_slug
      self.slug = self.id.to_s(36) unless self.slug.present?
      self.save
    end

    def set_sanitized_url
      self.given_url.strip!
      self.sanitized_url = self.given_url.downcase.gsub(/(https?:\/\/)|(www\.)/, "")
      self.sanitized_url.slice!(-1) if self.sanitized_url[-1] == "/"
      self.sanitized_url = "http://#{self.sanitized_url}"
    end

end
