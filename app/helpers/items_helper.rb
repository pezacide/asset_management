
module ItemsHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(item)
    gravatar_id = Digest::MD5::hexdigest(item.description.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: item.category, class: "gravatar")
  end
end

