
function change_form(){
  const button_1 = document.querySelector("#one_month");
  const button_3 = document.querySelector("#three_months");

  button_1.addEventListener("click", (event) => {
    event.preventDefault();
    const fieldset = document.querySelector(".subscription_workshops");
    fieldset.classList.remove("check_boxes");
    fieldset.classList.add("radio_buttons");
    fieldset.firstChild.name = "subscription[workshop_ids]";
  
    document.querySelectorAll(".tag-selector").forEach((element) => {
      const label = element.nextElementSibling;
      label.classList.remove("collection_check_boxes");
      label.classList.add("collection_radio_buttons");
      element.type = "radio";
      element.classList.remove('check_boxes');
      element.classList.add('radio_buttons');
      element.name = "subscription[workshop_ids]";
    })
  });

  button_3.addEventListener("click", (event) => {
    event.preventDefault();
    const fieldset = document.querySelector(".subscription_workshops");
    fieldset.classList.remove("radio_buttons");
    fieldset.classList.add("check_boxes");
    fieldset.firstChild.name = "subscription[workshop_ids][]";
  
    document.querySelectorAll(".tag-selector").forEach((element) => {
      const label = element.nextElementSibling;
      label.classList.remove("collection_radio_buttons");
      label.classList.add("collection_check_boxes");
      element.type = "checkbox";
      element.classList.remove('radio_buttons');
      element.classList.add('check_boxes');
      element.name = "subscription[workshop_ids][]";
    })
  });

};

export { change_form }
