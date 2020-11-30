function selectCardOne() {
  document.getElementById("subscription-card-one").addEventListener("click", pinkCardOne);

  function pinkCardOne() {
    console.log("one")
    const one_card = document.getElementById("subscription-card-one");
    const three_card = document.getElementById("subscription-card-three");
    one_card.classList.toggle("subscription-card-select");
    three_card.className = "subscription-card";
  }
}


export { selectCardOne }
