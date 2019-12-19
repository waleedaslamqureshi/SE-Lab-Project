<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="FYPmanager.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>-->
	<link rel="stylesheet" href="bootstrap.min.css"/>
    <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  body, html {
  height: 100%;
  margin: 0;
}

.bg {
  background-image: url("student.jpg");
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
div.test {
  margin-top: 40px;
  background-color:transparent;
  color:black;
  border-color:black;
    }
.btn1{
      background-color:transparent !important;
      color: black;
      width:100%;
      font-size: 20px;
      font-weight:700;
      border-color: black;
  }
  </style>
</head>
<body class ="bg">
    	<!-- Nav-bar-->
<nav class="navbar navbar-expand-lg navbar-light" style="background-color:firebrick">
  <a class="navbar-brand text-light" href="Home.aspx"><h2 style="color:white">Project Manager</h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
 </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item ">
        <a class="nav-link text-light" href="Home.aspx"><h5>Home</h5></a>
      </li>
        <li class="nav-item ">
        <a class="nav-link text-light" href="Student.aspx"><h5>Student</h5></a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-light" href="Advisor.aspx"><h5>Advisor</h5></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="Project.aspx"><h5>Add Project</h5></a>
      </li>
        <li class="nav-item">
        <a class="nav-link text-light" href="assignProject.aspx"><h5>Assigning Project</h5></a>
      </li>
        <li class="nav-item">
        <a class="nav-link text-light" href="evaluationProject.aspx"><h5>Evaluation of Project</h5></a>
      </li>
    </ul>
  </div>
</nav>
<div>
    <h1 style="text-align:center; color:white;">Student</h1>
    <form id="form1" runat="server" class="container" style="color:white;">
        <div>
            <table>
                 <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="sName" runat="server"></asp:TextBox>
                    </td>
                 </tr>
                <tr>
                    <td>Father Name</td>
                    <td>
                        <asp:TextBox ID="sFName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>CNIC</td>
                    <td>
                        <asp:TextBox ID="sCNIC" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone No.</td>
                    <td>
                        <asp:TextBox ID="sPhoneNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email Address</td>
                    <td>
                        <asp:TextBox ID="sEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Degree</td>
                    <td>
                        <asp:TextBox ID="sDegree" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button class="btn1 btn btn-primary btn-lg" ID="sSubmit" runat="server" Text="Submit" OnClick="sSubmit_Click" />
                    </td>
                    <td>
                        <asp:Button class="btn1 btn btn-primary btn-lg" ID="sUpdate" runat="server" Text="Update" OnClick="sUpdate_Click" />
                    </td>
                    <td>
                        <asp:Button class="btn1 btn btn-primary btn-lg" ID="sDelete" runat="server" Text="Delete" OnClick="sDelete_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="test">
        <asp:GridView ID="sTable" runat="server">
        </asp:GridView>
        </div>
    </form>
</div>
</body>
</html>
