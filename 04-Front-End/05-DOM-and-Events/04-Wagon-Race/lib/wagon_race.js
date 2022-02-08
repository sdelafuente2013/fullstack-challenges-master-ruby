/* eslint-disable no-restricted-globals */
/* eslint-disable no-plusplus */
// TODO: write your code here
let movePlayerOne = 2;
let countPlayerOne = 1;

let movePlayerTwo = 2;
let countPlayerTwo = 1;

document.addEventListener("keyup", (e) => {
  if (e.code === 'KeyQ') {
    if (movePlayerOne === 5) {
      alert("Win Player One");
      location.reload();
    } else {
      document.querySelector(`#player1-race td:nth-child(${movePlayerOne})`).classList.add('active');
      document.querySelector(`#player1-race td:nth-child(${countPlayerOne})`).classList.remove('active');
      movePlayerOne++;
      countPlayerOne++;
    }
  }
  if (e.code === 'KeyP') {
    if (movePlayerTwo === 5) {
      alert("Win Player Two");
      location.reload();
    } else {
      document.querySelector(`#player2-race td:nth-child(${movePlayerTwo})`).classList.add('active');
      document.querySelector(`#player2-race td:nth-child(${countPlayerTwo})`).classList.remove('active');
      movePlayerTwo++;
      countPlayerTwo++;
    }
  }
});
