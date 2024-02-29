<%@ Page Title="" Language="C#" MasterPageFile="~/Usuarios/Usuario.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Panaderia.Usuarios.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- about section -->
    <br />
    <br />
    <section class="about_section layout_padding">
        <div class="container  ">

            <div class="row">
                <div class="col-md-6 ">
                    <div class="img-box">
                        <img src="../Templates/images/about-bakery.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="detail-box">
                        <div class="heading_container">
                            <h2>Sobre Nosotros
                            </h2>
                        </div>
                        <p class="text-justify">
                            ¡Bienvenidos! .. somos una panaderia y pasteleria donde encontrarás buenos precios bajos, una amplia variedad de productos 
                            y envíos a domicilio gratuitos. Nos enorgullece ofrecerte una experiencia de compra conveniente y asequible. 
                            Además, nos preocupamos por el planeta y promovemos prácticas sostenibles en cada paso de nuestro negocio.
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br />
    <br />

    <!-- end about section -->


</asp:Content>
