# EduScore

## PROJECT OVERVIEW
With the help of my mentor, I was able to successfully create a web application that allows college students to leave reviews on courses that they have taken, and gain more information about courses that they would like to take in the future. The web application will serve as a tool for college students or prospective students to gain a broader understanding of the courses that a university offers or requires for their majors, share resources that will allow them to be successful, and as well provide students to have a safe space to communicate their thoughts and opinions about their school. The app allows users to search up different colleges and universities, and see the reviews listed for courses at those institutions. This allows the student to explore the different courses at a school, that a student has left a review for, and learn about those courses from a student perspective. In addition,  it also allows uses to create an account and login into the site in order to add a course to a college, and then add a review to a course at that college. 

## FEATURES
What was done? How was it done? 
Structure of code developed in product

### Homepage and Website Introductory/Informational pages

The homepage feature is the main page that users are presented with when they load onto the site from a browser, which is able to be publicly accessible using Heroku. It is rendered through the use of HTML elements and the CSS style components of such elements that allow for there to be navigation bar with most of the links to the website available to all users, including the about page, the search for college feature, the contact page, and finally the sign-up or login feature. The navbar and navigation links are also rendered using JavaScript, using the manifest.js file located in the project. 


### User authentication

Through the “Sign Up/Login” link located in the navigation bar, the users are brought to the registration page where users have the ability to create an account in a form that is rendered using HTML and CSS. The users is able to then get authenticated using the Devise gem in the Ruby on Rails gem token library. The user is prompted for an email and password, and the user input is then submitted and updated in the “users” table in the project database using PostgreSQL. The user is also given the option of simply logging in, if they have already been authenticated previously, using the process listed above. If the user forgets their password, they are prompted for their email, wherein instructions are sent about resetting their password. 


### ‘Search for Institution’ feature 

The search for an institution feature is available to all users and is implemented using the front-end languages and components listed previously, as well as the main programming language, ruby, of the project framework, Ruby on Rails. It allows for users to search for colleges in the database, and when such colleges are clicked on, they are able to view the reviews listed for the courses available at that college. This is done through the use of “GET” and “POST” commands in the rails framework, which interacts with the data available in the database by routing them to the calls. It takes in a query from the user and searches for it in the names of the colleges in the college table. It then returns the name of the college if it matches the case of the query, or returns nothing else. 


### ‘Search for Course’ feature available for authenticated users

This feature is effected and carried out through the use of another search form, similar to that of the “Search for An Institution” feature. However, it calls on the courses table of the database and takes in a query from the user, searching for the names of all courses in the database. If the query matches that of any of the names of the courses in the table of the database, it is then returned on the page, with a link to be able to access the course. From there, logged-in users are able to add a review to that course and, of course, view the reviews listed for that course. If the query does not match anything listed in the database, the user is then prompted to “Add a Course”, which is another feature that is only available to a user if they are logged in. 


### ‘Add a College’ feature available for authenticated users 

This feature can only be rendered to the user when the user has entered a query into the search form on the ‘Search for an Institution’ page, that is not within any parameters of the database, or cannot be matched to any item in the college table. It allows the user to then make a change to the database to input a course that they would like to either review or simply allow for others to review, into the college table. The “Add a College” form takes in a college name, the state that the institution is located in, as well as the city. Once the form is submitted, that college is added to the database, and the user is then navigated to the “college.show” page for that college. 



### Trending Courses at College page

The trending courses page, is rendered using the “POST” command for each college available in the database. In the “college.show” file, this page is presented by listing the courses available at a college, and ranking each by averaging out ratings for each with the total number reviews available for each. From this page the user is able to click on the available course at that college and view the reviews for that course. This is all done using, ruby, HTML, CSS, and the use of the CRUD operations within the database. 



### ‘Add a Course’ feature available for authenticated users

This feature can only be accessed if the user is logged in, where-in the user enters a search query for the name or number for a course. If the query matches an element in the courses table of the database then the specified course is rendered in the table before the search field. If the query does not match, the user is then given the option to “Add a Course” to the database. When this option is chosen the user is then navigated to a page where they can input the course code, and course name, which should be routed to a specific college. This is all done using, ruby,HTML CSS, and the use of CRUD operations within the database.


### ‘Add a Review’ feature available for authenticated users 
The main feature that allows users to be able to input reviews onto the site is done through the “Add Review” form option provided on the “college.show” page of each college listed in the college table in the database. This feature is also only made available to the user, only if they are logged in. If the user is not logged in, the option to leave a review is not given to the user. This is effected through the use of ruby code, and where if-statements and helper methods from the Devise gem are used to check if the user is signed-in. 

## RESOURCES USED
Ruby on Rails - Framework, main programming language
Visual Studio Code - Back-end development environment, main IDE
RubyMine - Front-end development environment, IDE
Devise gem - User authentication token package
PostgreSQL - Database management, used for CRUD operations
Heroku - Used for the deployment of package from local repository to be publicly accessible on cloud
Github - Version control, storing master branch and non-local repository
Other resources and guides: 
Guides: Ruby on Rails Guides, The Odin Project, freeCodeCamp
Programming languages: Ruby, HTML, CSS, JavaScript

## STANDARDS
The standards that I used to build and program the web application were according to those delineated in the Ruby on Rails Guides, which had an extensive library of explanations of code structure, the syntax for the implementation of certain elements, along the appropriate method calls to be used to render features on the website. I referred to these guides at almost every step of the project and found them to be particularly helpful when debugging, or attempting to derive HTML elements through ruby syntax. I used standard naming conventions laid out in these guides, while I also referred to the Odin Project, which had a pretty comprehensive rails tutorial guide as well. 
The structure of code developed was also according to the practices documented in these guides. 

## TESTS PERFORMED
After implementing a certain feature or element on a page or site, a simple unit test was performed to check whether or not the feature was behaving as it should on the website. Once all these individual components seemed to be working individually on their own, a larger test was performed to confirm whether or not the components were integrating together correctly. This was very time-consuming since there would often be obscure errors or lack of errors that did not reveal where an issue was as the individual components would seem to work fine on their own but not together. All of these tests were done locally when I would run the project locally after writing teh code for an element or component. 

## CONCLUSION
Before starting on this project, I did not have much knowledge about the inner workings of web development or building any type of application. My programming experience was relegated to coursework and classwork. I viewed the opportunity to work on this project as a challenge, and a chance to learn new technologies and gain new skills. While building this project, I was able to use this opportunity to learn more about web development, from a frontend and backend perspective, as well as learn other skills, new languages, other programming practices that are native to the web development process. 
While building this project I was introduced to new topics, and forced to confront different types of scenarios and errors from what I was commonly used to while programming any type of project or lab. During each of these instances, I was forced to take a step back to reevaluate each and every individual component to figure out what the issues could, and once I was able to do that, often the problem required further research or referencing to guides for assistance. These instances were beneficial towards my learning and improved my ability to think critically and analytically about problems, and deriving solutions to them.  While I struggled a lot with the back-end development of the application, I was grateful to have my mentor help me understand certain topics, and help me resolve a lot the issues that I faced while building my project. 
I thoroughly enjoyed working on this project and delving head-first into a new challenging experience such as this one, and I am so grateful I was able to participate in this program and learn so much from experienced professionals in the field that I hope to see myself in someday. 
