<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>

    <div class="row">
        <asp:Repeater ID="ArtistRepeater" runat="server" ItemType="ChinookBackend.Entities.Artist" DataSourceID="ArtistsDataSource">
            <ItemTemplate>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4><%# Item.Name %></h4>
                        </div>
                        <div class="panel-body">
                            <asp:Repeater ID="AlbumsRepeater" runat="server" ItemType="ChinookBackend.Entities.Album" DataSource="<%# Item.Albums %>">
                                <ItemTemplate>
                                    <%# Item.Title.Trim() %>
                                </ItemTemplate>
                                <SeparatorTemplate>, </SeparatorTemplate>
                            </asp:Repeater>
                        </div>

                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <asp:ObjectDataSource ID="ArtistsDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllArtists" TypeName="ChinookBackend.BLL.ArtistController"></asp:ObjectDataSource>
</asp:Content>
