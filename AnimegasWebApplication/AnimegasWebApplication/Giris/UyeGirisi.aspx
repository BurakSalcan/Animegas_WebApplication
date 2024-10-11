<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeGirisi.aspx.cs" Inherits="AnimegasWebApplication.ÜyeGirisi.UyeGirisi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Animegas Üye Girişi</title>
    <link href="css/GirisStyle.css" rel="stylesheet" />
    <meta name="robots" content="noindex, nofollow" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="anapanel">
            <div class="tepepanel">
                <div class="title">
                    <h1 style="font-size:36pt" class="title">Animegas</h1>
                    <label style="font-size: 13pt" class="title">Biricik anime arşiviniz</label>
                </div>
                <div class="loginbuton">
                    <label class="buton">LOGİN</label>
                </div>
            </div>
            <div class="ustpanel">
                <div class="sol">
                    <%--<asp:LinkButton ID="lbtn_btn" runat="server" CssClass="buton" OnClick="lbtn_btn_Click">ANİME</asp:LinkButton>--%>
                    <label class="buton">ANİME</label>
                </div>
                <div class="orta">
                    <label class="buton">MANGA</label>
                </div>
                <div class="sag">
                    <label class="buton">NOVEL</label>
                </div>
                <div style="clear:both"></div>
            </div>
        </div>
    </form>
</body>
</html>
