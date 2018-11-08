using System;
using System.Diagnostics;
using System.IO;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Xml.Xsl;

namespace DatasheetCardsW40K
{
    public partial class MainFrm : Form
    {
        private string htmlSourcePath;
        private string htmlSource;

        public MainFrm()
        {
            InitializeComponent();
        }

        private void ChromeOutput()
        {
            Process.Start("chrome.exe", Path.Combine(Path.GetDirectoryName(Application.ExecutablePath), "design-leaf-BS/result.html"));
        }

        private void btnFindHtml_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                htmlPath.Text = htmlSourcePath = openFileDialog1.FileName;
            }
        }

        private void btnGenerate_Click(object sender, EventArgs e)
        {
            string xsltPath = Path.Combine(Path.GetDirectoryName(Application.ExecutablePath), "xslt/transfo.xsl");
            string outputPath = Path.Combine(Path.GetDirectoryName(Application.ExecutablePath), "design-leaf-BS/result.html");
            string htmlLocalPath = htmlPath.Text;
            this.CleanHtml();

            XslCompiledTransform myXslTrans = new XslCompiledTransform();
            myXslTrans.Load(xsltPath);
            myXslTrans.Transform(htmlLocalPath, outputPath);

            ChromeOutput();
        }

        private void CleanHtml()
        {         
            this.htmlSource=File.ReadAllText(this.htmlSourcePath);
            this.ReplaceBr();
            this.ReplaceEntity();
            this.DeleteBrokenMeta();
            File.WriteAllText(this.htmlSourcePath, this.htmlSource);
        }

        private void ReplaceBr() {

            this.htmlSource = this.htmlSource.Replace("<br>", "<br/>");
        }
        private void DeleteBrokenMeta() {
            this.htmlSource = this.htmlSource.Replace("<meta name=\"viewport\" content=\"width = 670\" >", String.Empty);
        }
        private void ReplaceEntity() {

            this.htmlSource = this.htmlSource.Replace("&", "&#38;");
        }
    }
}
