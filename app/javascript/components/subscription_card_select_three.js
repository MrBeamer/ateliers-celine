function selectCardThree() {
  const button = document.getElementById("subscription-card-three")
  
  if (button) {
    button.addEventListener("click", pinkCardThree);
    function pinkCardThree() {
      const three_card = document.getElementById("subscription-card-three");
      const one_card = document.getElementById("subscription-card-one");
      three_card.classList.toggle("subscription-card-select");
      one_card.className = "subscription-card"
    }
  }

}


export { selectCardThree }