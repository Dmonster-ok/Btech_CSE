// Simulate dynamic category and educator selection
document.querySelectorAll('.category').forEach((category) => {
    category.addEventListener('click', () => {
      alert(`You selected ${category.textContent}`);
    });
  });
  