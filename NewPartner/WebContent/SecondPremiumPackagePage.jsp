<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous"><meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Basic Package</title>

<style>
/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}





.list li{
	display:inline;
}

a:link{
	text-decoration:none;
}

.B_clr{
	color:red;
}

img.e1Image{
	height:650px;
	width:100%;
	opacity:0.5;
	background-size:100% 100%;
}

.e1Image:hover{
	opacity:1.0;
}

.topHeading{
	font-size:30px;
	font-family:Times New Roman, Times, serif;
}

.topPara{
	font-size:20px;
	font-family:cursive;
}

.bgText{
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  padding:20px;	
  position: absolute;
  top: 25%;
  left: 2%;
  color: white;
  border:3px solid white;
}

@media screen and (min-width: 601px) {
  .bgText {
    font-size: 20px;
  }
}

@media screen and (max-width: 600px) {
  .bgText {
    font-size: 10px;
  }
}

.bgText2{
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  padding:20px;	
  position: absolute;
  top: 25%;
  right: 2%;
  color: white;
  border:3px solid white;
}

@media screen and (min-width: 601px) {
  .bgText2 {
    font-size: 20px;
  }
}

@media screen and (max-width: 600px) {
  .bgText2 {
    font-size: 10px;
  }
}





/* Float four columns side by side */
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 23%;
  padding: 0 10px;
  margin-left:20px;
}

/* Remove extra left and right margins, due to padding*/ 
.row {
	background-color: #502439;
	padding:2%;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 26px;
  text-align: center;
  background-color: #f1f1f1;
}

/*footer*/



</style>
</head>


<body>

	<div class="lg">
	<img src="" alt="logo">
	</div> 
	
	<hr>
	
<div id="myBtnContainer">
	<button class="btn" onclick="location.href='SecondPartnerPage.jsp';"> Basic package</button>
  	<button class="btn active" onclick="location.href='SecondPremiumPackagePage.jsp';"> Premium package</button>
  	<button class="btn" onclick="location.href='SecondPremiunmPlusPakacgePage.jsp';"> Premium plus package</button>
</div>


<br>
	
	<div>
		<img src="e1.jpg" alt="event image" class="e1Image">
		<a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="update" value="background image update"></a>
		<div class="bgText">
			<h1>Our partners</h1>
			<br>
			<p>we are new to this job.jdwb snsui jcwi  wbwi.<br>nqqiuwjnwi inwiu jdihd jinwuiwhe eicuwe.<br>nwiwui niwwi iwnwic inub uhvbeu.<br>
	     		ncwjcnw wcnwic jwncwic inciwc  wcei nceihcb cnbeiu.</p>
	     	<a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="update" value="update"></a>
	     	<a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="delete" value="delete"></a>
		</div>
		
		<div class="bgText2">
			<p>100000 to 300000</p>
			<a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="update" value="update"></a>
	     	<a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="delete" value="delete"></a>
		</div>
	</div>
	
	<div class="row">
    	<div class="column">
    	<div class="card">
    		<i class="fas fa-2x fa-hotel"></i>
      		<h3>Hotels</h3>
      		<p>Some text jdbj sjhcsaiu sjbcias schsa hbcasi.cjhsbhfui suiwf fuef.
      		 nfuiwbf ibi cnisc biu.nfiwhf.nfwifwiufbbc cnasibcsai cjscbis.njih.</p>
      		 <a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="update" value="update"></a><br><br>
      		<button onclick="window.location.href='https://www.w3schools.com/';">Learn More</button>
    	</div>
    	<a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="delete" value="delete"></a>
   		</div>
    	
      	<div class="column">
    	<div class="card">
      		<i class="fab fa-2x fa-pagelines"></i>
      		<h3>Flora</h3>
      		<p>Some text jdbj sjhcsaiu sjbcias schsa hbcasi.cjhsbhfui suiwf fuef.
      		 nfuiwbf ibi cnisc biu.nfiwhf.nfwifwiufbbc cnasibcsai cjscbis.njih.</p>
      		 <a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="update" value="update"></a><br><br>
      		<button onclick="window.location.href='https://www.w3schools.com/';">Learn More</button>
    	</div>
    	<a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="delete" value="delete"></a>
  		</div>
  
  		<div class="column">
    	<div class="card">
      		<i class="fas fa-2x fa-adjust"></i>
      		<h3>DJ</h3>
      		<p>Some text jdbj sjhcsaiu sjbcias schsa hbcasi.cjhsbhfui suiwf fuef.
      		 nfuiwbf ibi cnisc biu.nfiwhf.nfwifwiufbbc cnasibcsai cjscbis.njih.</p>
      		 <a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="update" value="update"></a><br><br>
      		<button onclick="window.location.href='https://www.w3schools.com/';">Learn More</button>
    	</div>
    	<a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="delete" value="delete"></a>
  		</div>
  
  		<div class="column">
    	<div class="card">
      		<i class="fas fa-2x fa-birthday-cake"></i>
      		<h3>Cakes</h3>
      		<p>Some text jdbj sjhcsaiu sjbcias schsa hbcasi.cjhsbhfui suiwf fuef.
      		 nfuiwbf ibi cnisc biu.nfiwhf.nfwifwiufbbc cnasibcsai cjscbis.njih.</p>
      		 <a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="update" value="update"></a><br><br>
      	<button onclick="window.location.href='https://www.w3schools.com/';">Learn More</button>
    	</div>
    	<a href="https://courseweb.sliit.lk/">
	     	<input type="button" name="delete" value="delete"></a>
  		</div>
	</div>
	
</body>
</html>