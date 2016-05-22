jQuery ->
  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_posts_url = $('.pagination .next_page a').attr('href')
        if more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
            
            # If the above conditions are true then instantiate loading gif image.
            $('.pagination').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />')
            
            # Asynchronous JS request
            $.getScript more_posts_url
        return
      return
