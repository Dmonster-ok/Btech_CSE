import { data } from './db.js';

let tags = data.flatMap(item => item.category);
tags = [...new Set(tags)].sort();
let i = tags.indexOf("general");
tags.splice(i, 1);

let body = document.querySelector('body');
const dialog = document.createElement('dialog');

let cover = document.createElement('div');
cover.classList.add('dialog-cover', 'center');

let wrapper = document.createElement('div');
wrapper.classList.add('dialog-wrapper', 'center');


cover.appendChild(wrapper);
dialog.appendChild(cover);
body.appendChild(dialog);

let selectedTags = [];


window.onload = function () {
    render(["general"]);
    slider();
    createTags();
}

function createTags() {
    const tagslist = document.querySelector(".tags");
    
    tags.forEach(tag => {
        let tagElement = document.createElement('button');
        tagElement.classList.add('tag');
        tagElement.value = tag;
        tagElement.innerHTML = tag.toLocaleUpperCase();
        tagElement.onclick = () => toggle(tagElement);
        tagslist.appendChild(tagElement);
    })
    
}


export function like(element) {
    let isActive = element.classList.contains('liked');
    
    if (isActive) {
        element.classList.remove('liked');
    } else {
        element.classList.add('liked');
    }
}

export function toggle(tag) {
    let isActive = tag.classList.contains('active-tag');
    
    if (isActive) {
        tag.classList.remove('active-tag');
        selectedTags = selectedTags.filter(e => e !== tag.value);
    } else {
        tag.classList.add('active-tag');
        selectedTags.push(tag.value);
    }
    
    if (selectedTags.length > 0) {
        render(selectedTags);
    } else {
        render(["general"]);  // Render general category when no tags are selected
    }
}

function render(tags) {
    const list = document.getElementById("list");
    
    // Clear previous list
    while (list.firstChild) {
        list.removeChild(list.firstChild);
    }
    
    // Filter data to include items that match any of the selected tags
    let filteredData = data.filter(item => {
        return tags.some(tag => item.category.includes(tag));
    });
    
    // Render filtered data
    filteredData.forEach(item => {
        let card = document.createElement('div');
        card.classList.add('card');
        card.innerHTML = `
        <img loading="lazy" src="${item.src}" alt="item.src">
        <div class="card-body">
        <button class="like" onclick="like(this)"></button>
        <button class="open" onclick="openDialog(this.value)" value=${item.id} >OPEN</button>
        </div>`;
        list.appendChild(card);
    });
}

export function openDialog(val) {

    let img = document.createElement('img');
    img.src = `images/img/image${val}.webp`;
    img.alt = `image${val}`;
    img.id = 'dialog-img';

    wrapper.innerHTML = '';
    wrapper.appendChild(img);
    let close = document.createElement('button');
    close.innerHTML = '&#10006;';
    close.id = 'close';
    close.onclick = () => dialog.close();
    
    wrapper.appendChild(close);
    //append the close button to the wrapper
    dialog.showModal();
}

function slider() {
    const slide = document.querySelector(".slide");
    
    const images = ["./images/img/image1.webp", "./images/img/image16.webp", "./images/img/image21.webp", "./images/img/image22.webp", "./images/img/image30.webp"];
    let i = 0;
    
    function next() {
        slide.style.backgroundImage = `url(${images[i = (i + 1) % images.length]})`;
    }
    setInterval(next, 2000);
}


function register() {
    wrapper.innerHTML = `
    <div class="form-card">
    <p class="form-title">Register</p>
    <img class="form-img" src="./images/logo.svg" alt="Artcrash">
    <input class="form-inputs" id="Uname" type="text" placeholder="Username">
    <input class="form-inputs" id="Uemail" type="email" placeholder="Email">

    <div class="pass">
    <input class="form-inputs" id="Pass" type="password" placeholder="Password">
    </div>
    <button class="submit">Register</button>
    </div>
    `;
    
    const form = document.createElement('div');
    form.classList.add('form-card');
    dialog.showModal();
}

window.register = register;
window.openDialog = openDialog;
window.like = like;
window.toggle = toggle;