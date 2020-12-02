// function buttonDone() {

  
//   const buttons = document.querySelectorAll(".timeline-button");
 
//   buttons.forEach( (button, index) => {
//     button.addEventListener("click", (event) => {
//     const ball = document.querySelector(`#ball_${index+1}`);
//     ball.classList.toggle("ball-done");
//   })

//   });
// } 

function buttonDone() {

  
  const buttons = document.querySelectorAll(".timeline-button");
 
  buttons.forEach( (button, index) => {
    button.addEventListener("click", (event) => {
    const bar = document.querySelector(".progress-bar");
    bar.classList.toggle(`progress-bar_${index+1}`);
    button.classList.toggle("button-minimal-thicker-pink")
    if (button.innerHTML === "Reset Progress") {
      button.innerHTML = "Mark as Done";
    } else {
      button.innerHTML = "Reset Progress";
    }
  })

  });
} 



export { buttonDone }
