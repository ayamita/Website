﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Backend.Master" AutoEventWireup="true" CodeBehind="Perfiles.aspx.cs" Inherits="BackendFems.UI.Perfiles" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- BREADCRUMB-->
        <form runat="server"><br /><br /><br /><br />
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><strong>Categorias </strong><small> Form</small></div>
                    <div class="card-body card-block">                        
                        <div class="row form-group">
                            <div class="col col-md-2"><label for="text-input" class=" form-control-label">Id Perfil:</label></div>
                            <div class="col-12 col-md-4"><input type="text" ID="txtid" runat="server"  name="text-input" placeholder="Id Perfil" class="form-control" disabled/></div>                            
                        </div>                                                          
                        <div class="row form-group">
                            <div class="col col-md-2"><label for="text-input" class=" form-control-label">Perfiles:</label></div>
                            <div class="col-12 col-md-4"><input type="text" ID="txtperfil" runat="server"  name="text-input" placeholder="Perfiles" class="form-control"  /></div>
                        </div>                                                          
                        <div class="modal-footer">                                                  
                            <asp:Button ID="btn_add" runat="server" Text="Agregar"  class="btn" BackColor="#4272d7" ForeColor="White" OnClick="btn_add_Click"  /> 
                            <asp:Button ID="btn_update" runat="server" Text="Modificar"  class="btn" BackColor="#4272d7" ForeColor="White" OnClick="btn_update_Click" />
                            <asp:Button ID="btn_limpiar" runat="server" Text="Limpiar"  class="btn" BackColor="#4272d7" ForeColor="White" OnClick="btn_limpiar_Click" /> 
                            <asp:Button ID="btn_eliminar" runat="server" Text="Eliminar"  class="btn" BackColor="#4272d7" ForeColor="White" OnClick="btn_eliminar_Click" /> 
                        </div>                
                    </div>                
                 </div>
            </div>                        
        <!-- END BREADCRUMB-->                  
            <div class="col-lg-12">
                <div class="card">                 
                    <div class="card-body card-block">
                        <div class="col-lg-10">
                            <asp:GridView ID="dgvDatos" runat="server" CellPadding="4" ForeColor="#ffffff" GridLines="None" OnRowDataBound="dgv_perfiles_RowDataBound" OnSelectedIndexChanged="Seleccionar_registro" Width="300px" >
                                <AlternatingRowStyle BackColor="White" />
                                <FooterStyle BackColor="#424242" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#424242 " Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFFFFF" ForeColor="#424242" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFFFF" ForeColor="#424242" />
                                <SelectedRowStyle BackColor="#424242" Font-Bold="True" ForeColor="#FFFFFF" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                        </div>     
                    </div>
                </div>
            </div>
        </form>         
</asp:Content>
