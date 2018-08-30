document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const handleFavoriteSubmit = (e) => {
    e.preventDefault();

    const favoriteInput = document.querySelector(".favorite-input");
    const favorite = favoriteInput.value;
    favoriteInput.value = "";

    const newListLi = document.createElement("li");
    newListLi.textContent = favorite;

    const favoritesList = document.getElementById("sf-places");
    favoritesList.appendChild(newListLi);
  };

  const listSubmitButton = document.querySelector(".favorite-submit");
  listSubmitButton.addEventListener("click", handleFavoriteSubmit);
 //  const handleFavoriteSubmit = (e) => {
 //    const handleFavoriteSubmit = (e) => {
 //   // **cancel** the event; if the event were not canceled the browser
 //   // would try to submit the form for real.
 //   e.preventDefault();
 //
 //   // Get the name input element (type `HTMLInputElement`), get the
 //   // value, and clear it.
 //   const favoriteInput = document.getElementById(".favorite-input")
 //   const favorite = favoriteInput.value;
 //   favoriteInput.value = "";
 //
 //   // create an li element
 //   const li = document.createElement("li");
 //   // set the text of the li to be the value of the input field
 //   li.textContent = favorite;
 //
 //   const favoritesList = document.getElementById("sf-places");
 //   // insert it as the last item in the ul.
 //   ul.appendChild(li);
 // });
 //
 // const listSubmitButton = document.querySelector(".favorite-submit");
 // listSubmitButton.addEventListener("click", handleFavoriteSubmit);


  // adding new photos

  // --- your code here!



});
