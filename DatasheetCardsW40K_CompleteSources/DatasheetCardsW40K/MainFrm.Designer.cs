namespace DatasheetCardsW40K
{
    partial class MainFrm
    {
        /// <summary>
        /// Variable nécessaire au concepteur.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Nettoyage des ressources utilisées.
        /// </summary>
        /// <param name="disposing">true si les ressources managées doivent être supprimées ; sinon, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Code généré par le Concepteur Windows Form

        /// <summary>
        /// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
        /// le contenu de cette méthode avec l'éditeur de code.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainFrm));
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.htmlPath = new System.Windows.Forms.TextBox();
            this.BtnFindHtml = new System.Windows.Forms.Button();
            this.txtHtmlPage = new System.Windows.Forms.Label();
            this.btnGenerate = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // htmlPath
            // 
            this.htmlPath.Location = new System.Drawing.Point(194, 28);
            this.htmlPath.Name = "htmlPath";
            this.htmlPath.Size = new System.Drawing.Size(460, 22);
            this.htmlPath.TabIndex = 5;
            // 
            // BtnFindHtml
            // 
            this.BtnFindHtml.Location = new System.Drawing.Point(660, 27);
            this.BtnFindHtml.Name = "BtnFindHtml";
            this.BtnFindHtml.Size = new System.Drawing.Size(34, 23);
            this.BtnFindHtml.TabIndex = 4;
            this.BtnFindHtml.Text = "...";
            this.BtnFindHtml.UseVisualStyleBackColor = true;
            this.BtnFindHtml.Click += new System.EventHandler(this.btnFindHtml_Click);
            // 
            // txtHtmlPage
            // 
            this.txtHtmlPage.AutoSize = true;
            this.txtHtmlPage.Location = new System.Drawing.Point(55, 33);
            this.txtHtmlPage.Name = "txtHtmlPage";
            this.txtHtmlPage.Size = new System.Drawing.Size(133, 17);
            this.txtHtmlPage.TabIndex = 3;
            this.txtHtmlPage.Text = "Page HTML de BS :";
            // 
            // btnGenerate
            // 
            this.btnGenerate.Location = new System.Drawing.Point(257, 91);
            this.btnGenerate.Name = "btnGenerate";
            this.btnGenerate.Size = new System.Drawing.Size(202, 39);
            this.btnGenerate.TabIndex = 6;
            this.btnGenerate.Text = "generer les fiches";
            this.btnGenerate.UseVisualStyleBackColor = true;
            this.btnGenerate.Click += new System.EventHandler(this.btnGenerate_Click);
            // 
            // MainFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(748, 155);
            this.Controls.Add(this.btnGenerate);
            this.Controls.Add(this.htmlPath);
            this.Controls.Add(this.BtnFindHtml);
            this.Controls.Add(this.txtHtmlPage);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainFrm";
            this.Text = "Generateur de fiches 40K";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.TextBox htmlPath;
        private System.Windows.Forms.Button BtnFindHtml;
        private System.Windows.Forms.Label txtHtmlPage;
        private System.Windows.Forms.Button btnGenerate;
    }
}

