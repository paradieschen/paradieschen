def active_nav_item?(page)
  case current_path
  when 'index.html'
    page == :index
  when 'self_concept/index.html'
    page == :self_concept
  when 'concept/index.html'
    page == :concept
  when 'funding/index.html'
    page == :funding
  when 'contact/index.html'
    page == :contact
  else
    false
  end
end

def link_to_newsletter(title: 'Newsletter', html_options: {})
  html_options.reverse_merge(
    target: '_blank',
    rel: 'noopener',
  )

  link_to(
    title,
    'https://riseup.us20.list-manage.com/subscribe/post?u=bc7884aeb028b1b026847f5e3&id=d18f5acd8a',
    **html_options
  )
end
