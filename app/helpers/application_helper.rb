module ApplicationHelper
  def banner_round_text
      strip_tags  Refinery::Snippet.find(26).try(:body)
      rescue
  end

  def site_name
      strip_tags  Refinery::Snippet.find(30).try(:body)
    rescue
  end

  def load_default_right_page_part
    page = Refinery::Page.find(1)
    content_of(page, :right_body)

  rescue
  end

  def snippet_newsletter_header
    Refinery::Snippet.find(31).try(:body)
    rescue
  end

  def snippet_newsletter_body
     Refinery::Snippet.find(32).try(:body)
    rescue
  end

  def news_date(created_at)
    l(created_at, :format => :long).split(' ')[1..3].join(' ')
  end

end
