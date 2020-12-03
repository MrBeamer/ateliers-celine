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
      button.innerHTML = "Step completed";
    } else {
      button.innerHTML = "Reset Progress";
    }
  })

  });
} 

function anchorFunction() {

  
  const buttons = document.querySelectorAll(".timeline-button");
 
  buttons.forEach( (button, index) => {
    button.addEventListener("click", (event) => {
      const step = document.querySelector(`#step`)
      location.href = `#step-${parseInt(button.dataset.step)+1}`;
    }
  )

  });
} 




export { buttonDone }
export { anchorFunction }
