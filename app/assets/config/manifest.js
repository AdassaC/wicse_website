//= link_tree ../images
//= link_directory ../stylesheets .css

//index.html.getElementsByTagName("h1")[0].style.fontSize = "10vw";

const getElement = (selector) => {
    const element = document.querySelector(selector);
    if (element) return element
    throw Error(
        'Please recheck your class names, there is no ${selector} class'
    )
}
const links = getElement('.nav-links')
const navBtnDOM = getElement('nav.btn')
const contactBtn = getElement('.contact-link')

navBtnDOM.addEventListener('click', () => {
    links.classList.toggle('show-links')
    contactBtn.classList.toggle('show-links')
})

