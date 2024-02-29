<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="Panaderia.Admin.Producto" %>
<%@ Import Namespace="Panaderia" %>

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
                    $('#<%=imgProduct.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pcoded-inner-content pt-0">
        <div class="align-align-self-end">
            <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
        </div>


        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                </div>
                                <div class="card-block">
                                    <div class="row">

                                        <div class="col-sm-6 col-md-4 col-lg-4">
                                            <h4 class="sub-title">Producto</h4>
                                            <div>
                                                <div class="form-group">
                                                    <label>Nombre</label>
                                                    <div>
                                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"
                                                            placeholder="Ingresa un nombre aqui"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                            ErrorMessage="Nombre es requerido" ForeColor="Red" Display="Dynamic"
                                                            SetFocusOnError="true" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                                        <asp:HiddenField ID="hdnId" runat="server" Value="0" />                                                 
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label>Descripción</label>
                                                    <div>
                                                        <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"
                                                            placeholder="Ingresa una descripción aqui" TextMode="MultiLine"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                            ErrorMessage="Descripción es requerida" ForeColor="Red" Display="Dynamic"
                                                            SetFocusOnError="true" ControlToValidate="txtDescription">
                                                        </asp:RequiredFieldValidator>                   
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label>Precio (S/.)</label>
                                                    <div>
                                                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"
                                                            placeholder="Ingresa un precio aqui"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                            ErrorMessage="Precio es requerido" ForeColor="Red" Display="Dynamic"
                                                            SetFocusOnError="true" ControlToValidate="txtPrice"></asp:RequiredFieldValidator> 
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                            ErrorMessage="Precio debe ser en decimal" ForeColor="Red" Display="Dynamic"
                                                            SetFocusOnError="true" ControlToValidate="txtPrice"
                                                            ValidationExpression="^\d{0,8}(\.\d{1,4})?$" ></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label>Cantidad</label>
                                                    <div>
                                                        <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"
                                                            placeholder="Ingresa una cantidad aqui"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                            ErrorMessage="Cantidad es requerida" ForeColor="Red" Display="Dynamic"
                                                            SetFocusOnError="true" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator> 
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                            ErrorMessage="Cantidad no puede ser un valor negativo" ForeColor="Red" Display="Dynamic"
                                                            SetFocusOnError="true" ControlToValidate="txtQuantity"
                                                            ValidationExpression="^([1-9]\d*|0)$" ></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label>Imagen de Producto</label>
                                                    <div>
                                                        <asp:FileUpload ID="fuProductImage" runat="server" CssClass="form-control"
                                                            onchange="ImagePreview(this);" />                                                 
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label>Categoria del Producto</label>
                                                    <div>
                                                        <asp:DropDownList ID="ddlCategories" CssClass="form-control" runat="server" 
                                                            DataTextField="Name" DataValueField="CategoryId" DataSourceID="SqlDataSource1"
                                                            AppendDataBoundItems="true" >
                                                            <asp:ListItem Value="0">Selecciona una Categoria</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                            ErrorMessage="Categoria es requerida" ForeColor="Red" Display="Dynamic"
                                                            SetFocusOnError="true" ControlToValidate="ddlCategories" InitialValue="0">
                                                        </asp:RequiredFieldValidator>   
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>"
                                                            SelectCommand="SELECT [CategoryId], [Name] FROM [Categories]"></asp:SqlDataSource>
                                                    </div>
                                                </div>

                                                <div class="form-check pl-4">
                                                    <asp:CheckBox ID="cbIsActive" runat="server" Text="&nbsp; Validar"
                                                          CssClass="form-check-input" />   
                                                </div>
                                                <div class="pb-5">
                                                    <asp:Button ID="btnAddOrUpdate" runat="server" Text="Agregar" CssClass="btn btn-primary"
                                                        OnClick="btnAddOrUpdate_Click" /> 
                                                    &nbsp;
                                                    <asp:Button ID="btnClear" runat="server" Text="Limpiar" CssClass="btn btn-primary" 
                                                        CausesValidation="false" OnClick="btnClear_Click" /> 
                                                </div>
                                                <div>
                                                    <asp:Image ID="imgProduct" runat="server" CssClass="img-thumbnail" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-md-8 col-lg-8 mobile-inputs">
                                            <h4 class="sub-title">Lista de Productos</h4>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
                                                    <asp:Repeater ID="rProduct" runat="server" OnItemCommand="rProduct_ItemCommand"
                                                        OnItemDataBound="rProduct_ItemDataBound" >
                                                        <HeaderTemplate>
                                                            <table class="table data-table-export table-hover nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="table-plus">Nombre</th>
                                                                        <th>Imagen</th>
                                                                        <th>Precio (S/.)</th>
                                                                        <th>Cantidad</th>
                                                                        <th>Categoria</th>
                                                                        <th>Descripción</th>
                                                                        <th>Validado</th>
                                                                        <th>Fecha de Creación</th>
                                                                        <th class="datable-nosort">Acción</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td class="table-plus"><%# Eval("Name") %> </td>

                                                                <td>
                                                                    <img alt="" width="40" src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" />
                                                                </td>

                                                                <td><%# Eval("Price") %> </td>

                                                                <td>
                                                                    <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                                                </td>

                                                                <td><%# Eval("CategoryName") %> </td>

                                                                <td><%# Eval("Description") %> </td>

                                                                <td>
                                                                    <asp:Label ID="lblIsActive" runat="server" Text='<%# Eval("IsActive") %>'></asp:Label>
                                                                </td>

                                                                <td><%# Eval("CreateDate") %> </td>

                                                                <td>
                                                                    <asp:LinkButton ID="lnkEdit" Text="Editar" runat="server" CssClass="badge badge-primary" CausesValidation="false"
                                                                        CommandArgument='<%# Eval("ProductId") %>' CommandName="edit" >
                                                                            <i class="ti-pencil"></i>
                                                                    </asp:LinkButton>
                                                                    <asp:LinkButton ID="lnkDelete" Text="Eliminar" runat="server" CommandName="delete"
                                                                        CssClass="badge bg-danger" CommandArgument='<%# Eval("ProductId") %>'
                                                                        OnClientClick="return confirm('¿Seguro que desea eliminar este Producto?');"
                                                                        CausesValidation="false" >
                                                                            <i class="ti-trash"></i>
                                                                    </asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </tbody>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
