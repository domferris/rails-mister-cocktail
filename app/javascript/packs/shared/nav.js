const openNewCocktail = () => {
  const newCocktailButton = document.getElementById('new-cocktail');
  const newCocktailForm = document.getElementById('new-cocktail-form');

  newCocktailButton.addEventListener('click', (event) => {
    // console.log('event');
    newCocktailForm.classList.remove('hidden');
  })
};

const closeCocktailForm = () => {
  const closeCocktailFormButton = document.getElementById('close-form');
  const newCocktailForm = document.getElementById('new-cocktail-form');

  closeCocktailFormButton.addEventListener('click', (event) => {
    // console.log(event);
    newCocktailForm.classList.add('hidden');
  })
};

// openNewCocktail();
// closeCocktailForm();

export { openNewCocktail, closeCocktailForm };
