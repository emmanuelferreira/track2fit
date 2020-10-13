class Subdomain
  def self.matches?(request)
    subdomains %w{ www admin } # reserved subdomains
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end
