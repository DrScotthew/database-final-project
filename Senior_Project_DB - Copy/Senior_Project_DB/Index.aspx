<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Senior_Project_DB.Index" %>

<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
h1 {text-align: center;}
p {text-align: center;}
div {text-align: center;}

        h1 {
            margin: 0;
        }
#main {
  border: 1px dotted black;
  display: flex;
  align-items: center; /* Vertical align the elements to the center */
}
.page-header {
  border: 1px solid black;
}
.display-child-element {
  display: inline-block;
  vertical-align: middle;
  border: 1px solid red;
}
.button {
  background-color: #04AA6D; /* Green */
  border: none;
  color: white;
  height: 100px;
  width: 200px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 24px;
  transition-duration: 0.4s;
  cursor: pointer;
  float: right;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #04AA6D;
}

.button1:hover {
  background-color: #04AA6D;
  color: white;
}
.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button3:hover {
  background-color: #f44336;
  color: white;
}

.button4 {
  background-color: white;
  color: black;
  border: 2px solid #e7e7e7;
}
container{
  width:960px;
  margin: 0 auto;
  }

.pic-container {
  white-space:nowrap; 
  overflow:scroll;
  }
* {
  box-sizing: border-box;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
  position: center;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: relative;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Six columns side by side */
.column {
  float: left;
  width: 16.66%;
}

/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}



.button4:hover {background-color: mediumorchid;}
</style>
</head>

<body style="background-color:white;">
    <form id="form1" runat="server">
        <div id="main">
            <h1>Database Manager<asp:Button ID="Button1"
                class="button button1"
                runat="server"  
                PostBackUrl="~/DeliveryManagement.aspx" 
                Text="Delivery"
                Height="50px"
                Width="300px"/>
            <asp:Button ID="Button2" class="button button2" runat="server" Height="50px" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory" Width="300px" />
            <asp:Button ID="Button3" class ="button button3" runat="server" Height="50px" PostBackUrl="~/OrdersManagement.aspx" Text="Orders" Width="300px" />
            <asp:Button ID="Button4" class ="button button4" runat="server" Height="50px" PostBackUrl="~/SalesManagement.aspx" Text="Sales" Width="300px" />
                <asp:Button ID="Button5" class ="button button4" runat="server" Height="50px" PostBackUrl="~/OrderItem.aspx" Text="Order Items" Width="300px" />
            </h1>
        </div>
        <p>
            &nbsp;</p>
  
        <div id="main1">
            <p style="display:inline-flex">
                Manage all of your warehouse needs effortlessly with our services.  We offer several options, including managing inventory, sales, deliveries, and orders.
                <%--<img src="/Images/download.jpg" />--%>
            </p>
            
        </div>
        
        <!-- Container for the image gallery -->
<div class="container">

  <!-- Full-width images with number text -->
  <div class="mySlides">
    <div class="numbertext">1 / 6</div>
      <img src="/Images/Desktop.jpg" style="width:50%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 6</div>
      <img src="/Images/images.jpg" style="width:50%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 6</div>
      <img src="/Images/monitor.jpg" style="width:50%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">4 / 6</div>
      <img src="/Images/Image5.jpg" style="width:50%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">5 / 6</div>
      <img src="/Images/Image4.jpg" style="width:50%"/>
  </div>

  <div class="mySlides">
    <div class="numbertext">6 / 6</div>
      <img src="/Images/Image7.jpg" style="width:50%"/>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>

  <!-- Image text -->
  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <!-- Thumbnail images -->
  <div class="row">
    <div class="column">
      <img class="demo cursor" src="/Images/Desktop.jpg" style="width:100%" onclick="currentSlide(1)" alt="Technology products are our specialty!"/>
    </div>
    <div class="column">
      <img class="demo cursor" src="/Images/images.jpg" style="width:100%" onclick="currentSlide(2)" alt=""/>
    </div>
    <div class="column">
      <img class="demo cursor" src="/Images/monitor.jpg" style="width:100%" onclick="currentSlide(3)" alt="Expand your influence"/>
    </div>
    <div class="column">
      <img class="demo cursor" src="/Images/Image5.jpg" style="width:100%" onclick="currentSlide(4)" alt=""/>
    </div>
    <div class="column">
      <img class="demo cursor" src="/Images/Image4.jpg" style="width:100%" onclick="currentSlide(5)" alt="Track your orders, inventory, and more!"/>
    </div>
    <div class="column">
      <img class="demo cursor" src="/Images/Image7.jpg" style="width:100%" onclick="currentSlide(6)" alt=""/>
    </div>
  </div>
</div>
        <p>
            &nbsp;</p>
        <p>
            <%--<button class="button button1">Delivery</button>--%>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
    <script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("demo");
  let captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
    </script>
</body>
</html>
