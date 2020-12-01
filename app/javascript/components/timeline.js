function buttonDone() {

  
  const buttons = document.querySelectorAll(".timeline-button");
 
  buttons.forEach( (button, index) => {
    button.addEventListener("click", (event) => {
    const ball = document.querySelector(`#ball_${index+1}`);
    ball.classList.toggle("ball-done");
  })

  });
}


export { buttonDone }
