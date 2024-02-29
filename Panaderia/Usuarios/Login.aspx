<%@ Page Title="" Language="C#" MasterPageFile="~/Usuarios/Usuario.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Panaderia.Usuarios.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label runat="server" ID="lblMsg"></asp:Label>
                </div>
                <h2>Iniciar Sesión</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                        <img id="userLogin" src="../Images/login1.png" alt="" class="img-thumbnail" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form_container">

                        <div>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Nombre de Usuario es requerido"
                                ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Ingresar nombre de Usuario"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Contraseña es requerida"
                                ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Ingresar Contraseña" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="btn_box heading_container heading_center">
                            <asp:Button ID="btnLogin" runat="server" Text="Ingresar" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                                OnClick="btnLogin_Click" />
                            <br />
                            <span class="pl-3 text-info">¿Nuevo Usuario? <a href="Registration.aspx" class="badge badge-info">Registrate aqui !!</a></span>
                        </div>
                        </div>
                    </div>
            </div>
        </div>
    </section>

</asp:Content>
