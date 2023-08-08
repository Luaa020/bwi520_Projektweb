package de.hwg_lu.bw.beans;

public class GetCodeAlsHtml {
	public GetCodeAlsHtml() {
		// TODO Auto-generated constructor stub
		System.out.println("ich bin getcode");
	}
	/**
	 * login zustand der Anwendung
	 */
	String login="LOGIN";
	
	public String getLogin() {
		return login;
	}

	/**
	 * setzt der wert wenn der Login erfogricht ist
	 * @param   login
	 */
	public void setLogin(String login) {
		this.login = login;
	}
	public String getFooterAsHtml(){
		String html="<footer class=\"footer\">\r\n"
				+ "\r\n"
				+ "  <div class=\"footer-container\">\r\n"
				+ "    <div class=\"footer-hours\">\r\n"
				+ "     <h3>oeffnungzeiten</h3> \r\n"
				+ "     <p>Dienstag-Sonntag  </p>\r\n"
				+ "      <p> 14:00 bis 22:00</p>\r\n"
				+ "      <p> Montag (geschlossen)</p>\r\n"
				+ "    </div>\r\n"
				+ "    \r\n"
				+ "    <div class=\"footer-contact\">\r\n"
				+ "      <h3>Kontakt</h3>\r\n"
				+ "      <p>Telephone : 0176 23 45 67 89</p>\r\n"
				+ "      <p>Email : KmerDelices@gmail.com</p>\r\n"
				+ "    </div>\r\n"
				+ "    <div class=\"footer-address\">\r\n"
				+ "      <h3>Anschrift</h3>\r\n"
				+ "      <p>C2,16-18</p>\r\n"
				+ "      <p>Mannheim</p>\r\n"
				+ "      <p>Kmer-Delices</p>\r\n"
				+ "    </div>\r\n"
				+ "    </div>\r\n"
				+ "    \r\n"
				+ "  \r\n"
				+ "</footer>";
		return html;
	}
	public String getHeaderAsHtml(){
		String html="<header>\r\n"
				+ "      <a href=\"./Acceuil.jsp\" class=\"logo\"><img class=\"logoimg\"  src=\"../img/logo.png\"><span>K</span>mer-<span>D</span>elices</a>\r\n"
				+ "      \r\n"
				+ "      <ul class=\"navbar\">\r\n"
				+ "      <li><a href=\"../jsp/Acceuil.jsp\">Startseite</a></li>\r\n"
				+ "      <a href=\"../html/speisekarte.jsp\"\r\n"
				+ " title=\"Speisekarte\"></a>\r\n"
				+ "      <li><a href=\"../html/speisekarte.jsp\">Speisekarte</a></li>\r\n"
				+ "			<li><a href=\"../jsp/enregistrement.jsp\"><jsp:getProperty property=\"login\" name=\"CodeAShtml\"/></a></li>\r\n"
				+ "      \r\n"
				+ "      <li><a href=\"../html/ueberUns.html\">&uuml;ber uns</a></li>\r\n"
				+ "      \r\n"
				+ "      <a href=\"../jsp/reserFormView.jsp\"class=\"btn-reserve\">Reservieren</a>\r\n"
				+ "      </ul>\r\n"
				+ "</header>";
		return html;
	}

}
