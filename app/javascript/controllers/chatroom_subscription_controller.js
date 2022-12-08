import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
    static values = {
      chatroomId: Number,
      currentUserId: Number,
    }
    static targets = ["messages"]

    connect() {
      this.channel = createConsumer().subscriptions.create(
        { channel: "ChatroomChannel", id: this.chatroomIdValue },
        { received: data => this.insertMessageAndScrollDown(data) }
      )
    }

    resetForm(event) {
        event.preventDefault();
        event.target.reset()
    }

    disconnect() {
        this.channel.unsubscribe()
    }

    insertMessageAndScrollDown(data) {
      const isCurrentUser = this.currentUserIdValue === data.sender_id

      const markup = `<div class="d-flex w-100 mt-2 ${isCurrentUser ?   "justify-content-end" : "justify-content-start" }">
        <div class= ${isCurrentUser ?  "msg-blue" : "msg-white" }>
          ${data.message}
        </div>
      </div>`


      this.messagesTarget.insertAdjacentHTML("beforeend", markup)
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    }
}
