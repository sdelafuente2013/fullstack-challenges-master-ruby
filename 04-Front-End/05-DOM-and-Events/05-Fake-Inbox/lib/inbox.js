/* eslint-disable no-plusplus */
/* eslint-disable no-multiple-empty-lines */

const hasNewMessage = () => {
  // TODO: return true with a probability of 20%.
  const random = Math.floor(Math.random() * (10 - 0));
  if (random < 2) {
    return true;
  } return false;
};

const newMessage = () => {
  // TODO: return a random message as an object with two keys, subject and sender
  const objetRandom = [{ sender: 'Arnoldss Chalustra', subject: "I need to speak with you!!!" },
    { sender: 'Arnold Schwarzenegger', subject: "I'm back" }];
  const random = Math.floor(Math.random() * (2 - 0));
  return objetRandom[random];
};

const appendMessageToDom = (message) => {
  // TODO: append the given message to the DOM (as a new row of `#inbox`)
  const messageNew = `
                <div class="row message unread">
                  <div class="col-3">${message.sender}</div>
                  <div class="col-9">${message.subject}</div>
                </div>
              `;
  document.querySelector('#inbox').insertAdjacentHTML('afterbegin', messageNew);
};

let count = 2;
const refresh = () => {
  // TODO: Implement the global refresh logic. If there is a new message,
  //       append it to the DOM. Update the unread counter in title as well.
  if (hasNewMessage()) {
    appendMessageToDom(newMessage());
    document.querySelector('#count').innerText = `(${count})`;
    count++;
  }
};




// Do not remove these lines:
document.addEventListener("DOMContentLoaded", () => {
  setInterval(refresh, 1000); // Every 1 second, the `refresh` function is called.
});

module.exports = { hasNewMessage, newMessage };
