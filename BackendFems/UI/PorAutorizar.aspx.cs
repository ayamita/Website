﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Data;
using System.Net;
using BackendFems.BO;

namespace BackendFems.UI
{
    public partial class UsersPorAutorizar : System.Web.UI.Page
    {
        Usuariosbo usu = new Usuariosbo();
        protected void Page_Load(object sender, EventArgs e)
        {
            Radiom.Checked = false;
            Radiof.Checked = false;
            Grid();
        }

        protected void Seleccionar_registro(object sender, EventArgs e)
        {
            txt_Id.Value = HttpUtility.HtmlDecode(dgvDatos.SelectedRow.Cells[0].Text);
            txt_correo.Value = HttpUtility.HtmlDecode(dgvDatos.SelectedRow.Cells[1].Text);
            txt_Nombre.Value = HttpUtility.HtmlDecode(dgvDatos.SelectedRow.Cells[2].Text);
            txt_apellido.Value = HttpUtility.HtmlDecode(dgvDatos.SelectedRow.Cells[3].Text);
            txt_telefono.Value = HttpUtility.HtmlDecode(dgvDatos.SelectedRow.Cells[4].Text);
            usu.Sexo = HttpUtility.HtmlDecode(dgvDatos.SelectedRow.Cells[5].Text);
            txt_curp.Value = HttpUtility.HtmlDecode(dgvDatos.SelectedRow.Cells[6].Text);
            txt_tusuario.Value = HttpUtility.HtmlDecode(dgvDatos.SelectedRow.Cells[7].Text);
            if(usu.Sexo =="M")
            {
                Radiom.Checked = true;
                Radiof.Checked = false;
            }
            else if (usu.Sexo == "F")
            {
                Radiom.Checked = false;
                Radiof.Checked = true;
            }


        }

        protected void dgv_usuario_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(dgvDatos, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
            }
        }

        protected void btn_Aprobar(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txt_Id.Value))
            {
                Response.Write("<script>alert('Debe seleccionar un usuario')</script>");
            }
            else
            {
                usu.Id = int.Parse(txt_Id.Value);
                int estatus = 1; //Cambiara el estatus a Aprobado
                string sUrlRequest = "http://alexander14-001-site1.dtempurl.com/service.asmx/UpUserStatus?iduser=" + usu.Id + "&estatus=" + estatus;
                var json = new WebClient().DownloadString(sUrlRequest);
                Response.Write("<script>alert('El usuario ha sido Aprobado')</script>");                
            }            
            Grid();
            limpiar();

        }

        public void Grid()
        {
            int estatus = 3; //Mostrara Usuarios por Aprobar
            string sUrlRequest = "http://alexander14-001-site1.dtempurl.com/service.asmx/GetUsersEstatus?estatus=" + estatus;
            var json = new WebClient().DownloadString(sUrlRequest);
            DataTable dt = (DataTable)JsonConvert.DeserializeObject(json, (typeof(DataTable)));
            dgvDatos.DataSource = dt;
            dgvDatos.DataBind();
        }

        public  void limpiar()
        {
            txt_Id.Value = "";
            txt_Nombre.Value = "";
            txt_apellido.Value = "";
            txt_correo.Value = "";
            txt_telefono.Value = "";
            Radiof.Checked = false;
            Radiom.Checked = false;
            txt_curp.Value = "";
            txt_tusuario.Value = "";
        }

        protected void btn_rechazar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txt_Id.Value))
            {
                Response.Write("<script>alert('Debe seleccionar un usuario')</script>");
            }
            else
            {
                usu.Id = int.Parse(txt_Id.Value);
                int estatus = 2; //Cambiara el estatus a Rechazado
                string sUrlRequest = "http://alexander14-001-site1.dtempurl.com/service.asmx/UpUserStatus?iduser=" + usu.Id + "&estatus=" + estatus;
                var json = new WebClient().DownloadString(sUrlRequest);
                Response.Write("<script>alert('El usuario ha sido Rechazado')</script>");
            }
            Grid();
            limpiar();
        }

        protected void btn_limpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }
    }
}