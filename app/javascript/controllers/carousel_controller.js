import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["emoji"];

  selectEmoji(event) {
    const emojiId = event.currentTarget.dataset.emojiId;
    this.emojiTarget.value = emojiId;
    this.element.closest("form").submit();
  }
}
