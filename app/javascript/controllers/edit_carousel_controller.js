import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["emoji"];

  editEmoji(event) {
    this.emojiTargets.forEach((emoji) => emoji.classList.remove("selected"));

    event.currentTarget.classList.add("selected");

    const emojiId = event.currentTarget.dataset.emojiId;
    this.element.querySelector('input[name="logbook[emoji_id]"]').value = emojiId;
  }
}
