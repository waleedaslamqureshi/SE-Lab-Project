<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evaluationProject.aspx.cs" Inherits="FYPmanager.evaluationProject" %>

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
  background-image: url("evaluation.jpg");
  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.btn1{
      background-color:transparent !important;
      color: white;
      margin-top:10px;
      width:20%;
      font-size: 20px;
      font-weight:700;
      border-color: black;
  }
.test{
    margin-top: 40px;
  background-color:transparent;
  color:black;
  border-color:black;
}
</style>
</head>
<body class="bg">
    <!--Nav bar-->
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
    <form id="form1" runat="server" class="text-left text-light container">
        <div>
            <h3>Select Project</h3>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="evaluationList" DataTextField="Project" DataValueField="Project" Width="113px"></asp:DropDownList>
            <asp:SqlDataSource ID="evaluationList" runat="server" ConnectionString="<%$ ConnectionStrings:Project_FinalConnectionString %>" SelectCommand="SELECT [ProjectName] FROM [evaluationProject]"></asp:SqlDataSource>
            <h3>Obtain Marks(Out of 30):</h3>
            <asp:TextBox ID="evaluationBox" runat="server"></asp:TextBox><br />
            <asp:Button class="btn1 btn btn-primary" ID="evaluateSubmit" runat="server" Text="Submit" OnClick="evaluateSubmit_Click" /><br />
                <br />
        </div>
        <table>
        <tr>
         <td>
        <h3>Evaluated Projects</h3>
        <asp:GridView class="test" ID="evaluationTable" runat="server">
        </asp:GridView>
        </td>
            <td></td>
        <td>
        <h3>Marks Sheet</h3>
        <asp:GridView class="test" ID="evaluationNumberGrid" runat="server">
        </asp:GridView>
        </td>
        </tr>
        </table>
    </form>
</body>
</html>
