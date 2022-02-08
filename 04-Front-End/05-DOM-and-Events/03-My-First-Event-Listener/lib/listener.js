// TODO: React to a click on the button!
const audio = new Audio('../sound.mp3');

document.querySelector("#clickme").addEventListener('click', (e) => {
  e.currentTarget.classList.add('disabled');
  e.currentTarget.innerText = 'Bingo!';
  audio.play();
});
