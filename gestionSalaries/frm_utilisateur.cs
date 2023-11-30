using gestionSalaries.Includes;
using System;
using System.Windows.Forms;

namespace gestionSalaries
{
    public partial class frm_utilisateur : Form
    {
        public frm_utilisateur()
        {
            InitializeComponent();
        }

        SQLConfig config = new SQLConfig();
        Fonctionutil funct = new Fonctionutil();
        string sql;
        private void btnenregistrer_Click(object sender, EventArgs e)
        {
            if (lbl_id.Text == "" ||
            txtname.Text == "" ||
            txtuser.Text == "" || txtpass.Text == "")
            {
                MessageBox.Show("Please complete all fields !", "Info", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            else
            {
                if (btnenregistrer.Text == "Add")
                {
                    sql = "INSERT INTO `user` (`name`,`username`, `pass` ) VALUES ('" + txtname.Text + "','"
                     + txtuser.Text + "','" + txtpass.Text + "')";
                    config.Execute_CUD(sql, "error to execute.", "Data Saved");

                }
                else
                {
                    sql = "UPDATE user set name='" + txtname.Text + "',username='" + txtuser.Text
                     + "', pass = '" + txtpass.Text + "' Where user_id='" + lbl_id.Text + "'";
                    config.Execute_CUD(sql, "error to execute.", "The data has been updated!");
                }
                frm_utilisateur_Load(sender, e);
            }

        }

        private void frm_utilisateur_Load(object sender, EventArgs e)
        {
            sql = "SELECT user_id as Id,name as Name,username as Username FROM user";
            config.Load_DTG(sql, dtg_userList);
            lbl_id.Text = "id";
            btnenregistrer.Text = "Add";
            funct.clearTxt(GroupBox11);

        }

        private void btn_modifier_Click(object sender, EventArgs e)
        {
            lbl_id.Text = dtg_userList.CurrentRow.Cells[0].Value.ToString();
            txtname.Text = dtg_userList.CurrentRow.Cells[1].Value.ToString();
            txtuser.Text = dtg_userList.CurrentRow.Cells[2].Value.ToString();
            btnenregistrer.Text = "Save";
        }

        private void Button6_Click(object sender, EventArgs e)
        {
            sql = "SELECT user_id as Id,name as Name,username as Username FROM user";
            config.Load_DTG(sql, dtg_userList);
            lbl_id.Text = "id";
            btnenregistrer.Text = "Add";
            funct.clearTxt(GroupBox11);

        }

        private void btn_supprimer_Click(object sender, EventArgs e)
        {
            sql = "DELETE FROM user WHERE user_id = '" + dtg_userList.CurrentRow.Cells[0].Value + "'";
            config.Execute_CUD(sql, "error to execute.", "the data was deleted!");
            frm_utilisateur_Load(sender, e);
        }

        private void Label40_Click(object sender, EventArgs e)
        {

        }

        private void Label41_Click(object sender, EventArgs e)
        {

        }

        private void GroupBox11_Enter(object sender, EventArgs e)
        {

        }

        private void Label38_Click(object sender, EventArgs e)
        {

        }

        private void GroupBox12_Enter(object sender, EventArgs e)
        {

        }

        private void cbotype_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void Label39_Click(object sender, EventArgs e)
        {

        }
    }
}
