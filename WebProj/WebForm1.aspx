<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1Lab.Controllers.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-image:url('SFX/pexels.jpg');
        }
        h1 {
            color:white;
            text-align:center;
        }
        
    </style>
    <link rel="stylesheet" href="style.css">
</head>
<body style="height: 127px">
    <form id="form1" runat="server">
        <h1 style="font-style:oblique; text-decoration-line:unset;">Chat Application <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="/SFX/chat.png" Width="50px" BorderStyle="None"/>
        </h1>
        <div>
        <p>
    <asp:Label ID="Label1" runat="server" Text="Enter Username " ForeColor="White"></asp:Label>
            <asp:TextBox ID="NameBox" runat="server" Width="200px"></asp:TextBox>
            <asp:Button ID="EnterName" runat="server" Text="Enter" OnClick="EnterName_Click" />
        </p>
            </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                
                <asp:TextBox ID="DisplayMsg" runat="server" TextMode="MultiLine" Width="700" Height =" 500" ReadOnly="True"></asp:TextBox>
                
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                <asp:AsyncPostBackTrigger ControlID="SendButton" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
         <asp:Label   ID="Label3" runat="server" Text="Enter Message:" ForeColor="White"></asp:Label> <br />
        <asp:TextBox  ID="MsgBox" runat="server"  Enabled ="False" Width="700px" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendBtn_Click" />
        <p>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" >
            </asp:Timer>
           
            <asp:FileUpload  ID="FileUpload1" runat="server" />
            <asp:Button ID="UploadBtn" runat="server" OnClick="UploadBtn_Click" Text="Send" />
        </p>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:Image ID="Image2" runat="server" />
                
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
          
       
                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </ContentTemplate>

        </asp:UpdatePanel>

        
        
        

        
    </form>
</body>
</html>
