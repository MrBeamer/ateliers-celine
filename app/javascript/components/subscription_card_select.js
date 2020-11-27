function selectCard() {
  card_one = document.getElementById("subscription-card-one").addEventListener("click", pinkCardOne);
  card_three = document.getElementById("subscription-card-three").addEventListener("click", pinkCardThree);

  function pinkCardOne() {
    var card_one = document.getElementById("subscription-card-one");
    card_one.classList.toggle("subscription-card-select");
  }
  function pinkCardThree() {
    var card_three = document.getElementById("subscription-card-three");
    card_three.classList.toggle("subscription-card-select");
  }
}


export { selectCard }