$ ->
  commentInput = $('.comment-input')
  if commentInput.length > 0
    console.log commentInput
    commentInput.find('a').on 'click', (e) ->
      e.preventDefault()
      $(this).hide()
      commentInput.find('.comment-form').show()
