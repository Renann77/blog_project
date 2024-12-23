import consumer from "./consumer"

document.addEventListener('turbolinks:load', () => {
  const comments = document.getElementById('comments')
  if (comments) {
    const postId = comments.getAttribute('data-post-id')

    consumer.subscriptions.create({ channel: "CommentsChannel", post_id: postId }, {
      received(data) {
        const template = `
          
            ${data.comment.content}
            Por ${data.user}
          
        `
        comments.insertAdjacentHTML('afterbegin', template)
      }
    })
  }
})