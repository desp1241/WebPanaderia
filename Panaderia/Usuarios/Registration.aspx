<%@ Page Title="" Language="C#" MasterPageFile="~/Usuarios/Usuario.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Panaderia.Usuarios.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        }
    </script>
    <script>
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgUser.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false" ></asp:Label>
                </div>
                <asp:Label ID="lblHeaderMsg" runat="server" Text="<h2>Registro de Usuario</h2>"></asp:Label>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">

                        <div>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Nombre es requerido"
                                ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Solo ingresar letras"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z\s]+$"
                                ControlToValidate="txtName" ></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Ingresa tu nombre completo"
                                ToolTip="Full Name" ></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Nombre de Usuario es requerido"
                                ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Ingresa tu nombre de Usuario"
                                ToolTip="Username" ></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Correo electronico es requerido"
                                ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingresa tu dirección de correo electronico"
                                ToolTip="Email" TextMode="Email" ></asp:TextBox>
                        </div>

                         <div>
                            <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ErrorMessage="Número de telefono es requerido"
                                ControlToValidate="txtMobile" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Solo ingresar números con un maximo de 9 digitos"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{9}$"
                                ControlToValidate="txtMobile" ></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Ingresa tu número de telefono"
                                ToolTip="Mobile" TextMode="Number" ></asp:TextBox>
                        </div>

                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form_container">

                        <div>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Dirección es requerida"
                                ControlToValidate="txtAddress" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Ingresa tu dirección"
                                ToolTip="Address" TextMode="MultiLine" ></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ErrorMessage="Codigo Postal es requerido"
                                ControlToValidate="txtPostCode" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPostCode" runat="server" ErrorMessage="Solo ingresar números con un maximo de 2 digitos"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{2}$"
                                ControlToValidate="txtPostCode" ></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control" placeholder="Ingresa tu codigo postal"
                                ToolTip="PostCode" TextMode="Number" ></asp:TextBox>
                        </div>

                        <div>
                            <asp:FileUpload ID="fuUserImage" runat="server" CssClass="form-control" ToolTip="User Image" 
                                OnChange="ImagePreview(this);" />
                        </div>

                         <div>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Contraseña es requerida"
                                ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Ingresa tu contraseña"
                                ToolTip="Password" TextMode="Password" ></asp:TextBox>
                        </div>

                    </div>
                </div>

                <div class="row pl-4">
                    <div class="btn_box">
                        <asp:Button ID="btnRegister" runat="server" Text="Registrar" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                            OnClick="btnRegister_Click" />

                        <asp:Label ID="lblAlreadyUser" runat="server" CssClass="pl-3 text-black-100"
                            Text="¿Ya esta registrado? <a href='Login.aspx' class='badge badge-info'>Ingresar aqui..</a>" ></asp:Label>
                    </div>
                </div>

                <div class="row p-5">
                    <div style="align-items:center">
                        <asp:Image ID="imgUser" runat="server" CssClass="img-thumbnail" />
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
