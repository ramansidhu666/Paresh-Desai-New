<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminClient.aspx.cs" Inherits="Property.Admin.AdminClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        h1 {
            position: relative;
            text-align: center;
        }

            h1 span {
                background: #fff;
                padding: 0 15px;
                position: relative;
                z-index: 1;
            }

            h1:before {
                background: #ddd;
                content: "";
                display: block;
                height: 1px;
                position: absolute;
                top: 50%;
                width: 100%;
            }

            h1:before {
                left: 0;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3>Add Client</h3>
                </div>
                <div class="module-body">
                    <div class="form-horizontal row-fluid">
                        <asp:HiddenField ID="ClientId" runat="server" />
                        <asp:HiddenField ID="PhotoPath" runat="server" />
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Client Photo</label>
                            <div class="controls">
                                <asp:FileUpload ID="ClientPhoto" runat="server" />
                                <asp:Image ID="imgfavicon" Width="32px" Height="32px" runat="server" />
                                <asp:ImageButton Style="margin-bottom: 66px; margin-left: 165px;" ImageUrl="../Images/negative.png" OnClick="btnfavdelete_Click" ID="btnfavdelete" Text="Remove" runat="server" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Name</label>
                            <div class="controls">
                                <asp:TextBox ID="txtName" runat="server" MaxLength="50" PlaceHolder="Name.." class="span8"></asp:TextBox>
                                <%-- <span class="help-inline">
                                    <asp:RequiredFieldValidator ID="revBanner" runat="server" ErrorMessage="Title required" Display="Dynamic"
                                        ControlToValidate="txtName" ValidationGroup="SavePage" SetFocusOnError="true"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>--%>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Dob</label>
                            <div class="controls">
                                <asp:TextBox ID="txtDob" runat="server" MaxLength="50" PlaceHolder="dd/mm/yyyy" class="span8"></asp:TextBox>
                                <%-- <span class="help-inline">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Title required" Display="Dynamic"
                                        ControlToValidate="txtDob" ValidationGroup="SavePage" SetFocusOnError="true"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>--%>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Email</label>
                            <div class="controls">
                                <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" class="span8" PlaceHolder="Email.."></asp:TextBox>
                                <span class="help-inline">
                                    <asp:Label ID="lblUsernamemsg" runat="server" ForeColor="Red"></asp:Label>
                                    <%--<asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="E-mail Required" ControlToValidate="txtEmail"
                                        ValidationGroup="SaveInfo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        ControlToValidate="txtEmail" ValidationGroup="SaveInfo" ForeColor="Red" ErrorMessage="Invalid email!" Display="Dynamic">  
                                    </asp:RegularExpressionValidator>
                                </span>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Phone No.</label>
                            <div class="controls">
                                <asp:TextBox ID="txtPhoneNo" runat="server" MaxLength="10" class="span8" PlaceHolder="Phone Number.."></asp:TextBox>
                                <span class="help-inline">

                                    <%--<asp:RequiredFieldValidator ID="reqPhoneno" runat="server" ErrorMessage="Phone Number Required " ControlToValidate="txtPhoneNo"
                                        ValidationGroup="SaveInfo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="SaveInfo" runat="server" ErrorMessage="Invalid Phone no."
                                        ControlToValidate="txtPhoneNo" Display="Dynamic" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                </span>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Gender</label>
                            <div class="controls">
                                <asp:RadioButtonList ID="Gender" runat="server">
                                    <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Status</label>
                            <div class="controls">
                                <asp:RadioButtonList ID="rblList" runat="server">
                                    <asp:ListItem Text="Active" Value="Active" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="In Active" Value="InActive"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label" for="basicinput">Source</label>
                            <div class="controls">
                                <asp:DropDownList runat="server" ID="Source">
                                    <asp:ListItem Value="Select source" Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="Newspaper" Text="Newspaper"> </asp:ListItem>
                                    <asp:ListItem Value="Email" Text="Email"> </asp:ListItem>
                                    <asp:ListItem Value="Linkedin" Text="Linkedin"> </asp:ListItem>
                                    <asp:ListItem Value="facebook" Text="facebook"> </asp:ListItem>
                                    <asp:ListItem Value="Coldcall" Text="Cold call"> </asp:ListItem>
                                    <asp:ListItem Value="Reference" Text="Reference"> </asp:ListItem>
                                    <asp:ListItem Value="Other" Text="Other"> </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label" for="basicinput">Address</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="90px" PlaceHolder="Address...." class="span8"></asp:TextBox>
                                <%--<span class="help-inline">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address required" Display="Dynamic"
                                        ControlToValidate="txtAddress" ValidationGroup="SavePage" SetFocusOnError="true"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>--%>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Remarks</label>
                            <div class="controls">
                                <asp:TextBox ID="Remarks" runat="server" TextMode="MultiLine" Height="90px" PlaceHolder="Remarks...." class="span8"></asp:TextBox>
                                <%--<span class="help-inline">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Remarks required" Display="Dynamic"
                                        ControlToValidate="Remarks" ValidationGroup="SavePage" SetFocusOnError="true"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>--%>
                            </div>
                        </div>
                    </div>


                    <div class="control-group">
                        <div class="controls" style="text-align: center; margin-top: 15px;">
                            <asp:Button ID="btnUploadImage" ValidationGroup="SavePage" runat="server" class="btn btn-primary" Text="Save" OnClick="btnUploadImage_Click" />

                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls"></div>
                    </div>

                    <h1><span>Or Upload CSV file</span></h1>
                    <div style="text-align: center;">
                        <asp:FileUpload ID="FileUpload1" runat="server" />

                    </div>
                    <div style="text-align: center;">
                        <asp:RegularExpressionValidator ID="regexValidator" runat="server"
                            ControlToValidate="FileUpload1" ForeColor="Red"
                            ErrorMessage="Only csv files are allowed"
                            ValidationExpression="(.*\.([cC][sS][vV])$)"> 
                        </asp:RegularExpressionValidator>
                    </div>
                    <div style="text-align: center; margin-top: 15px;">

                        <asp:Button Text="Upload" runat="server" OnClick="Upload" OnClientClick="return CheckFileExistence()" class="btn btn-primary" />
                    </div>
                    <hr />
                    <div style="text-align: center;">
                        <asp:Button ID="btnCancel" class="btn" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/.content-->
    </div>

    </div>
    <!--/.span9-->
    <script>
        function CheckFileExistence() {

            var filePath = document.getElementById('<%= this.FileUpload1.ClientID %>').value;

            if (filePath.length < 1) {

                alert("File Name Can not be empty");


                return false;
            }
        }
    </script>
</asp:Content>
