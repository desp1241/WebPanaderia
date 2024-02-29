<%@ Page Title="" Language="C#" MasterPageFile="~/Usuarios/Usuario.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Panaderia.Usuarios.Default" %>
<%@ Import Namespace="Panaderia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- offer section -->

    <section class="offer_section layout_padding-bottom">
        <div class="offer_container">
            <div class="container ">
                <div class="heading_container heading_center psudo_white_primary mb_45">
                    <h2>Nuestras Categorias
                    </h2>
                </div>
                <div class="row">
                    <asp:Repeater ID="rCategory" runat="server">
                        <ItemTemplate>
                            <div class="col-md-6">
                                <div class="box ">
                                    <div class="img-box">
                                        <a href="Menu.aspx?id=<%# Eval("CategoryId") %>">
                                            <img src="<%# Utils.GetImageUrl(Eval("ImageUrl")) %>" alt="">
                                        </a>
                                    </div>
                                    <div class="detail-box container-fluid">
                                        <h5><%# Eval("Name") %>
                                        </h5>
                                        <h6 class="text-justify">
                                            Encuentra productos de esta categoria aqui:
                                        </h6>
                                        <a href="Menu.aspx?id=<%# Eval("CategoryId") %>">Click Aqui
                                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background: new 0 0 456.029 456.029;" xml:space="preserve">
                                        <g>
                                            <g>
                                                <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                     c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                                            </g>
                                        </g>
                                        <g>
                                            <g>
                                                <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                     C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                     c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                     C457.728,97.71,450.56,86.958,439.296,84.91z" />
                                            </g>
                                        </g>
                                        <g>
                                            <g>
                                                <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                     c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                                            </g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                        <g>
                                        </g>
                                    </svg>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>
    </section>

    <!-- end offer section -->


    <!-- about section -->

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

    <!-- end about section -->

    <!-- client section -->

    <section class="client_section layout_padding-bottom pt-5">
        <div class="container">
            <div class="heading_container heading_center psudo_white_primary mb_45">
                <h2>Que dicen nuestros clientes
                </h2>
            </div>
            <div class="carousel-wrap row ">
                <div class="owl-carousel client_owl-carousel">
                    <div class="item">
                        <div class="box">
                            <div class="detail-box">
                                <p class="text-justify">Soy cliente fiel de "Milagritos" hace años. Lo que más me gusta es la calidad de sus productos. Además, el hecho de que tengan una sección de pasteleria me hace sentir bien al apoyar a los productores de la región. Definitivamente, esta tienda es mi elección número uno.
                                </p>
                                <h6 class="text-center">Joao Vasquez
                                </h6>
                                <p class="text-center">Abogado
                                </p>
                            </div>
                            <div class="img-box container-fluid">
                                <img src="../Templates/images/TESTIMONIO3.JPG" alt="" class="box-img">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="detail-box">
                                <p class="text-justify">Me encanta la conveniencia de esta tienda. Está ubicada cerca de mi casa y puedo hacer todas mis compras en un solo lugar. Además, la tienda siempre está bien organizada y limpia. Realmente aprecio el esfuerzo que ponen en mantenerla en buen estado para los clientes
                                </p>
                                <h6 class="text-center">Carlos Green
                                </h6>
                                <p class="text-center">Diseñador UI
                                </p>
                            </div>
                            <div class="img-box container-fluid">
                                <img src="../Templates/images/TESTIMONIO4.JPG" alt="" class="box-img">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="detail-box">
                                <p class="text-justify">Recomiendo ampliamente "Milagritos" por su excelente servicio al cliente. Cada vez que voy, el personal me saluda con una sonrisa y está dispuesto a ayudarme a encontrar lo que necesito. Me siento valorado como cliente y eso es algo que realmente aprecio.
                                </p>
                                <h6 class="text-center">Hans Romero
                                </h6>
                                <p class="text-center">Analista de Sistemas
                                </p>
                            </div>
                            <div class="img-box container-fluid">
                                <img src="../Templates/images/TESTIMONIO1.JPG" alt="" class="box-img">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end client section -->



</asp:Content>
