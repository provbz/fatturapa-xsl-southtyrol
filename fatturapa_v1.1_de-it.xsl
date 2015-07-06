<?xml version="1.0"?>
<!-- Versionsdatum: 2015-07-04 -->
<!-- Feedback erwünscht an info@ing-tavernini.com -->
<!--
fatturapa_v1.1_de-it.xsl
Copyright (C) 2015 Ferdinand Tavernini WOBI-IPES Bozen/Bolzano

The XSL-stylesheet fatturapa_v1.1_de-it.xsl is free software:
you can redistribute it and/or modify it under the terms of the
GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or any later version.

fatturapa_v1.1_de-it.xsl is distributed in the hope that it will
be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program (see LICENSE file). If not, see
http://www.gnu.org/licenses/.
-->

<xsl:stylesheet 
     version="1.0" 
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:a="http://www.fatturapa.gov.it/sdi/fatturapa/v1.1">
     <xsl:output method="html" />
     <xsl:variable name="VersionFT" select="'Stylesheet fatturapa_v1.1_de-it.xsl v8.3 - http://tinyurl.com/fatturapa-xsl-southtyrol © 2015 Ferdinand TAVERNINI GPLv3'" />
     <xsl:decimal-format name="euro" decimal-separator="," grouping-separator="." />

     <xsl:template name="CodiceUnivocoUfficio">
          <xsl:param name="kode" />
          <xsl:choose>
               <xsl:when test="$kode = 'U9CVVQ'" ><span><xsl:value-of select="$kode" /></span><br />Generaldirektion<br /><i>DIREZIONE GENERALE</i></xsl:when>
               <xsl:when test="$kode = '9G9VCD'" ><span><xsl:value-of select="$kode" /></span><br />Rechtsamt<br /><i>UFFICIO AFFARI LEGALI</i></xsl:when>
               <xsl:when test="$kode = 'D31MSA'" ><span><xsl:value-of select="$kode" /></span><br />EDV-Amt<br /><i>UFFICIO EDP</i></xsl:when>
               <xsl:when test="$kode = '0COHRW'" ><span><xsl:value-of select="$kode" /></span><br />Personal- und Organisationsamt<br /><i>UFFICIO PERSONALE ED ORGANIZZAZIONE</i></xsl:when>
               <xsl:when test="$kode = 'LSXW8L'" ><span><xsl:value-of select="$kode" /></span><br />Wohnungszuweisungund Mieter<br /><i>RIPARTIZIONE ALLOGGI ED INQUILINATO</i></xsl:when>
               <xsl:when test="$kode = 'RW81BN'" ><span><xsl:value-of select="$kode" /></span><br />Mieterservicestelle Bozen<br /><i>CENTRO SERVIZI ALL'INQUILINATO DI BOLZANO</i></xsl:when>
               <xsl:when test="$kode = 'GNXLXD'" ><span><xsl:value-of select="$kode" /></span><br />Mieterservicestelle Meran<br /><i>CENTRO SERVIZI ALL'INQUILINATO DI MERANO</i></xsl:when>
               <xsl:when test="$kode = 'GSRA1J'" ><span><xsl:value-of select="$kode" /></span><br />Mieterservicestelle Brixen<br /><i>CENTRO SERVIZI ALL'INQUILINATO DI BRESSANONE</i></xsl:when>
               <xsl:when test="$kode = '80WPE5'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Dienste<br /><i>RIPARTIZIONE SERVIZI TECNICI</i></xsl:when>
               <xsl:when test="$kode = 'NP7VMX'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt Mitte Süd<br /><i>UFFICIO TECNICO CENTRO SUD</i></xsl:when>
               <xsl:when test="$kode = 'KOJPJL'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt Ost<br /><i>UFFICIO TECNICO EST</i></xsl:when>
               <xsl:when test="$kode = '6ACTCE'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt West<br /><i>UFFICIO TECNICO OVEST</i></xsl:when>
               <xsl:when test="$kode = 'UAQVHQ'" ><span><xsl:value-of select="$kode" /></span><br />Amt für Buchhaltung, Bilanzen, Versicherung und Zahlungen<br /><i>UFFICIO CONTABILITA, BILANCI, ASSICURAZIONI E PAGAMENTI</i></xsl:when>
               <xsl:when test="$kode = '3PZ58V'" ><span><xsl:value-of select="$kode" /></span><br />Arbeitsgruppe für Vergabe, Verträge und Vermögen<br /><i>GRUPPO DI LAVORO APPALTI, CONTRATTI E PATRIMONIO</i></xsl:when>
               <xsl:when test="$kode = '00ROQ2'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt Instandhaltung<br /><i>UFFICIO TECNICO MANUTENZIONE</i></xsl:when>
               <xsl:when test="$kode = 'UFQKV2'" ><span><xsl:value-of select="$kode" /></span><br />Uff_eFatturaPA</xsl:when>

               <xsl:otherwise><span><xsl:value-of select="$kode" /></span></xsl:otherwise>
          </xsl:choose>
          <xsl:variable name="kodeSel" select="''" />
     </xsl:template>

     <xsl:template name="FormatDate">
          <xsl:param name="DateTime" />

          <xsl:variable name="year" select="substring($DateTime,1,4)" />
          <xsl:variable name="month" select="substring($DateTime,6,2)" />
          <xsl:variable name="day" select="substring($DateTime,9,2)" />

          <xsl:value-of select="' ('" />
          <xsl:value-of select="$day" />
          <xsl:value-of select="' '" />
          <xsl:choose>
               <xsl:when test="$month = '1' or $month = '01'">Jan./Gen.</xsl:when>
               <xsl:when test="$month = '2' or $month = '02'">Feb.</xsl:when>
               <xsl:when test="$month = '3' or $month = '03'">Mar.</xsl:when>
               <xsl:when test="$month = '4' or $month = '04'">Apr.</xsl:when>
               <xsl:when test="$month = '5' or $month = '05'">Mai/Mag.</xsl:when>
               <xsl:when test="$month = '6' or $month = '06'">Jun./Giu.</xsl:when>
               <xsl:when test="$month = '7' or $month = '07'">Jul./Lug.</xsl:when>
               <xsl:when test="$month = '8' or $month = '08'">Aug./Ago.</xsl:when>
               <xsl:when test="$month = '9' or $month = '09'">Sep./Set.</xsl:when>
               <xsl:when test="$month = '10'">Okt./Ott.</xsl:when>
               <xsl:when test="$month = '11'">Nov.</xsl:when>
               <xsl:when test="$month = '12'">Dez./Dic.</xsl:when>
               <xsl:otherwise><font color="red">Unbekannter Monat - <i>Mese non riconosciuto</i></font></xsl:otherwise>
          </xsl:choose>
          <xsl:value-of select="' '" />
          <xsl:value-of select="$year" />
          <xsl:variable name="time" select="substring($DateTime,12)" />
          <xsl:if test="$time != ''">
               <xsl:variable name="hh" select="substring($time,1,2)" />
               <xsl:variable name="mm" select="substring($time,4,2)" />
               <xsl:variable name="ss" select="substring($time,7,2)" />
               <xsl:value-of select="' '" />
               <xsl:value-of select="$hh" />
               <xsl:value-of select="':'" />
               <xsl:value-of select="$mm" />
               <xsl:value-of select="':'" />
               <xsl:value-of select="$ss" />
          </xsl:if>
          <xsl:value-of select="')'" />
     </xsl:template>
     <xsl:template match="/">
          <html>
               <head>
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <style type="text/css">
@media print  {  body { font-size: 7pt }
               h1 { font-size: 12pt; }
               h2 { font-size: 11pt; }
               h3 { font-size: 10pt; }
               h4 { font-size:  9pt; }
               h5 { font-size:  8pt; }
                                   }
@page { size: A4 portrait; }

@media screen {  body { font-size: 10px }}
body { max-width: 643px; min-width: 640px; }

fattura-container { font-size: 8px; width: 80%; position: relative;}
{ font-family: sans-serif; margin-left: auto; margin-right: auto; padding: 0; }
.version { font-size: 8px; float:right; color: #777777; }
h1 { padding: 5px 0 0 0; margin: 0; font-size: 22px; }
h2 { padding: 5px 0 0 0; margin: 0; font-size: 18px; }
h3 { padding: 5px 0 0 0; margin: 0; font-size: 15px; }
h4 { padding: 5px 0 0 0; margin: 0; font-size: 12px; }
h5 { padding: 5px 0 0 0; margin: 0; font-size: 10px; font-style: italic; }
ul { list-style-type: none; margin: 0 !important; padding: 15px 0 0 40px !important; }
ul li {}
span { font-weight: bold; }
fehler {color: red; text-decoration:blink; }
div { padding: 0; margin: 0; }
div.page {
background-color: #fff !important;
position: relative;
margin: 5px 0 5px 0;
padding: 5px;
background: -moz-linear-gradient(0% 0 360deg, #FFFFFF, #F2F2F2 20%, #FFFFFF) repeat scroll 0 0 transparent;
border: 1px solid #CCCCCC;
-webkitbox-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
-mozbox-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
background: url('logo_sdi_trasparente.jpg') 98% 50px no-repeat;
}
table {table-layout:fixed; width:630px;}
table td {overflow: hidden;}
table, td, th { border: 1px solid black; border-collapse: collapse;}
#t1 td, #t1 th { border: none; }
#ti td { color: #000000; background-color: #EAF2D3;}
th, td { padding: 2px;}
div.footer { padding: 10px 0 0 0; margin: 0; font-size: 10px; text-align: center; color: #777777; }
tr:nth-of-type(even){background-color: #F3F3F3;}
tr:nth-of-type(odd) {background-color:#ddd;}
th {background-color:#0f0f0f; color: #fafafa;}</style>
               </head>
               <body>
                    <div id="fattura-container">
                         <!--INIZIO DATI HEADER-->
                         <xsl:if test="a:FatturaElettronica">
                              <div id="fattura-elettronica"><h1>Italienische elektronische Rechnung<br /><i>FATTURA ELETTRONICA</i></h1><xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader">
                                        <div class="page">
                                             <div class="version">FatturaPA Version/<i>versione</i> <xsl:value-of select="a:FatturaElettronica/@versione"/></div>
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/DatiTrasmissione">
                                                  <!--INIZIO DATI DELLA TRASMISSIONE-->
                                                  <div id="dati-trasmissione"><h3>Daten zur Übertragung - <i>Dati relativi alla trasmissione</i></h3><table id="t1">
                                                            <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/DatiTrasmissione">
                                                                 <xsl:if test="IdTrasmittente or ProgressivoInvio or FormatoTrasmissione">
                                                                      <tr><td width="70px">1.1.[3|1|2]</td>
                                                                           <td width="170px">Übertragungskennung<br /><i>Ident. di trasmissione</i></td>
                                                                                <td width="364px"><span>
                                                                                <xsl:if test="FormatoTrasmissione"><xsl:value-of select="FormatoTrasmissione" />:</xsl:if>
                                                                                <xsl:if test="IdTrasmittente"><xsl:value-of select="IdTrasmittente/IdPaese" /><xsl:value-of select="IdTrasmittente/IdCodice" />_</xsl:if>
                                                                                <xsl:if test="ProgressivoInvio"><xsl:value-of select="ProgressivoInvio" /></xsl:if>
                                                                                </span></td></tr>
                                                                           </xsl:if>
                                                                 <!--
                                                                 <xsl:if test="IdTrasmittente">
                                                                      <tr><td width="70px">1.1.1</td>
                                                                           <td width="170px">Steuernummer des Senders<br /><i>Ident. del trasmittente</i></td>
                                                                           <td width="364px"><span><xsl:value-of select="IdTrasmittente/IdPaese" /><xsl:value-of select="IdTrasmittente/IdCodice" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="ProgressivoInvio">
                                                                      <tr><td>1.1.2</td>
                                                                           <td>Übertragung Nr.<br /><i>Progressivo di invio</i></td>
                                                                           <td><span><xsl:value-of select="ProgressivoInvio" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="FormatoTrasmissione">
                                                                      <tr><td>1.1.3</td>
                                                                           <td>Übertragungsformat<br /><i>Formato Trasmissione</i></td>
                                                                           <td><span><xsl:value-of select="FormatoTrasmissione" /></span></td></tr>
                                                                 </xsl:if>
                                                                 -->
                                                                 <xsl:if test="CodiceDestinatario">
                                                                      <tr><td>1.1.4</td><td>Kodex der öff. Verwal.<br /><i>Cod. Amministra. destina.</i></td>
                                                                           <td><xsl:call-template name="CodiceUnivocoUfficio"><xsl:with-param name="kode" select="CodiceDestinatario" /></xsl:call-template></td>
                                                                      </tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="ContattiTrasmittente/Telefono">
                                                                      <tr><td>1.1.5.1</td><td>Telefonnummer Sender<br /><i>Telefono del trasmittente</i></td>
                                                                           <td><span><xsl:value-of select="ContattiTrasmittente/Telefono" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="ContattiTrasmittente/Email">
                                                                      <tr><td>1.1.5.2</td><td>E-Mail des Senders<br /><i>E-mail del trasmittente</i></td>
                                                                           <td><span><xsl:value-of select="ContattiTrasmittente/Email" /></span></td></tr>
                                                                 </xsl:if>
                                                            </xsl:for-each>
                                                       </table>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI DELLA TRASMISSIONE-->

                                             <!--INIZIO DATI CEDENTE PRESTATORE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore">
                                                  <div id="cedente">
                                                       <h3>Daten zum Lieferanten/Freiberufler - <i>Dati del cedente/prestatore</i></h3>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/DatiAnagrafici">
                                                            <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/DatiAnagrafici">

                                                                      <!--
                                                                      <xsl:if test="Anagrafica/Denominazione">
                                                                           <tr><td width="70px">1.2.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td></tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Titolo">
                                                                           <tr><td>1.2.1.3.4</td><td>Titel<br /><i>Titolo</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td></tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Nome">
                                                                           <tr><td width="70px">1.2.1.3.2</td><td width="170px">Name<br /><i>Nome</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Cognome">
                                                                           <tr><td>1.2.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="Anagrafica/Denominazione or Anagrafica/Nome">
                                                                           <tr><td width="70px">1.2.1.[1|4|2|3]</td><td width="170px">Benennung<br /><i>Nominativo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" />&#160;<xsl:value-of select="Anagrafica/Titolo" />&#160;<xsl:value-of select="Anagrafica/Nome" />&#160;<xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>


                                                                      <xsl:if test="Anagrafica/CodEORI">
                                                                           <tr><td>1.2.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      <!--

                                                                      <xsl:if test="AlboProfessionale">
                                                                           <tr><td>1.2.1.4</td><td>Zugehörigkeit Berufsalbum<br /><i>Albo professionale di appartenenza</i></td>
                                                                                <td><span><xsl:value-of select="AlboProfessionale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="ProvinciaAlbo">
                                                                           <tr><td>1.2.1.5</td><td>Berufsalbum der Provinz<br /><i>Provincia di competenza dell'Albo</i></td>
                                                                                <td><span><xsl:value-of select="ProvinciaAlbo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroIscrizioneAlbo">
                                                                           <tr><td>1.2.1.6</td><td>Einschreibungsnummer im Berufsalbum<br /><i>Numero iscrizione all'Albo</i></td>
                                                                                <td><span><xsl:value-of select="NumeroIscrizioneAlbo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DataIscrizioneAlbo">
                                                                           <tr><td>1.2.1.7</td><td>Datum der Einschreibung<br /><i>Data iscrizione all'Albo</i></td>
                                                                                <td><span><xsl:value-of select="DataIscrizioneAlbo" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataIscrizioneAlbo" /></xsl:call-template></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      -->

                                                                      <xsl:if test="AlboProfessionale or ProvinciaAlbo or NumeroIscrizioneAlbo or DataIscrizioneAlbo">
                                                                           <tr><td>1.2.1.[4|5|6|7]</td><td>Zugehörigkeit Berufsalbum<br /><i>Albo professionale di appartenenza</i></td>
                                                                                <td><span><xsl:value-of select="AlboProfessionale" />&#160;<xsl:value-of select="ProvinciaAlbo" />&#160;<xsl:value-of select="NumeroIscrizioneAlbo" /></span><xsl:if test="DataIscrizioneAlbo">&#160;<span><xsl:value-of select="DataIscrizioneAlbo" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataIscrizioneAlbo" /></xsl:call-template></xsl:if></td>
                                                                           </tr>
                                                                      </xsl:if>


                                                                      <xsl:if test="IdFiscaleIVA">
                                                                           <tr><td>1.2.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CodiceFiscale">
                                                                           <tr><td>1.2.1.2</td><td>Steuernummer<br /><i>Codice fiscale</i></td>
                                                                                <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="RegimeFiscale">
                                                                           <tr><td>1.2.1.8</td><td>Steuersystem<br /><i>Regime fiscale</i></td>
                                                                                <td><span><xsl:value-of select="RegimeFiscale" /></span>
                                                                                <xsl:variable name="RF"><xsl:value-of select="RegimeFiscale" /></xsl:variable>
                                                                                <xsl:choose>
                                                                                     <xsl:when test="$RF='RF01'"> (ordinario)</xsl:when>
                                                                                     <xsl:when test="$RF='RF02'"> (contribuenti minimi)</xsl:when>
                                                                                     <xsl:when test="$RF='RF03'"> (nuove iniziative produttive)</xsl:when>
                                                                                     <xsl:when test="$RF='RF04'"> (agricoltura e attività connesse e pesca)</xsl:when>
                                                                                     <xsl:when test="$RF='RF05'"> (vendita sali e tabacchi)</xsl:when>
                                                                                     <xsl:when test="$RF='RF06'"> (commercio fiammiferi)</xsl:when>
                                                                                     <xsl:when test="$RF='RF07'"> (editoria)</xsl:when>
                                                                                     <xsl:when test="$RF='RF08'"> (gestione servizi telefonia pubblica)</xsl:when>
                                                                                     <xsl:when test="$RF='RF09'"> (rivendita documenti di trasporto pubblico e di sosta)</xsl:when>
                                                                                     <xsl:when test="$RF='RF10'"> (intrattenimenti, giochi e altre attività di cui alla tariffa allegata al DPR 640/72)</xsl:when>
                                                                                     <xsl:when test="$RF='RF11'"> (agenzie viaggi e turismo)</xsl:when>
                                                                                     <xsl:when test="$RF='RF12'"> (agriturismo)</xsl:when>
                                                                                     <xsl:when test="$RF='RF13'"> (vendite a domicilio)</xsl:when>
                                                                                     <xsl:when test="$RF='RF14'"> (rivendita beni usati, oggetti d’arte, d’antiquariato o da collezione)</xsl:when>
                                                                                     <xsl:when test="$RF='RF15'"> (agenzie di vendite all’asta di oggetti d’arte, antiquariato o da collezione)</xsl:when>
                                                                                     <xsl:when test="$RF='RF16'"> (IVA per cassa P.A.)</xsl:when>
                                                                                     <xsl:when test="$RF='RF17'"> (IVA per cassa - art. 32-bis, D.L. 83/2012)</xsl:when>
                                                                                     <xsl:when test="$RF='RF19'"> (Regime forfettario)</xsl:when>
                                                                                     <xsl:when test="$RF='RF18'"> (altro)</xsl:when>
                                                                                     <xsl:when test="$RF=''"></xsl:when>
                                                                                     <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                </xsl:choose>
                                                                                </td></tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/Sede">
                                                            <h4>Firmensitz - <i>Dati della sede</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/Sede">
                                                                 <!--
                                                                      <xsl:if test="Indirizzo">
                                                                           <tr><td width="70px">1.2.2.1</td><td width="170px">Anschrift<br /><i>Indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroCivico">
                                                                           <tr><td>1.2.2.2</td><td>Hausnummer<br /><i>Numero civico</i></td>
                                                                                <td><span><xsl:value-of select="NumeroCivico" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CAP">
                                                                           <tr><td>1.2.2.3</td><td>PLZ<br /><i>CAP</i></td>
                                                                                <td><span><xsl:value-of select="CAP" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Comune">
                                                                           <tr><td>1.2.2.4</td><td>Gemeinde<br /><i>Comune</i></td>
                                                                                <td><span><xsl:value-of select="Comune" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Provincia">
                                                                           <tr><td>1.2.2.5</td><td>Provinz<br /><i>Provincia</i></td>
                                                                                <td><span><xsl:value-of select="Provincia" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Nazione">
                                                                           <tr><td>1.2.2.6</td><td>Land<br /><i>Nazione</i></td>
                                                                                <td><span><xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 -->

                                                                      <xsl:if test="Indirizzo or NumeroCivico or CAP or Comune or Provincia or Nazione">
                                                                           <tr><td width="70px">1.2.2.[1|2|3|4|5|6]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" />&#160;<xsl:value-of select="NumeroCivico" /><br /><xsl:value-of select="CAP" />&#160;<xsl:value-of select="Comune" />&#160;<xsl:value-of select="Provincia" />&#160;<xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>

                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/StabileOrganizzazione">
                                                            <h4>Daten der Organisation - <i>Dati della stabile organizzazione</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/StabileOrganizzazione">

                                                                      <!--
                                                                      <xsl:if test="Indirizzo">
                                                                           <tr><td width="70px">1.2.3.1</td><td width="170px">Anschrift<br /><i>Indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroCivico">
                                                                           <tr><td>1.2.3.2</td><td>Hausnummer<br /><i>Numero civico</i></td>
                                                                                <td><span><xsl:value-of select="NumeroCivico" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CAP">
                                                                           <tr><td>1.2.3.3</td><td>PLZ<br /><i>CAP</i></td>
                                                                                <td><span><xsl:value-of select="CAP" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Comune">
                                                                           <tr><td>1.2.3.4</td><td>Gemeinde<br /><i>Comune</i></td>
                                                                                <td><span><xsl:value-of select="Comune" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Provincia">
                                                                           <tr><td>1.2.3.5</td><td>Provinz<br /><i>Provincia</i></td>
                                                                                <td><span><xsl:value-of select="Provincia" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Nazione">
                                                                           <tr><td>1.2.3.6</td><td>Land<br /><i>Nazione</i></td>
                                                                                <td><span><xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 -->

                                                                      <xsl:if test="Indirizzo or NumeroCivico or CAP or Comune or Provincia or Nazione">
                                                                           <tr><td width="70px">1.2.3.[1|2|3|4|5]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" />&#160;<xsl:value-of select="NumeroCivico" /><br /><xsl:value-of select="CAP" />&#160;<xsl:value-of select="Comune" />&#160;<xsl:value-of select="Provincia" />&#160;<xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>

                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/IscrizioneREA">
                                                            <h4>Handelsregistereintragung - <i>Dati di iscrizione nel registro delle imprese</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/IscrizioneREA">
                                                                      <xsl:if test="Ufficio">
                                                                           <tr><td width="70px">1.2.4.1</td><td width="170px">Handelsregister der Provinz<br /><i>Uff. Reg. Imp. Provinciale</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Ufficio" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroREA">
                                                                           <tr><td>1.2.4.2</td><td>Eintragungsnummer<br /><i>Numero di iscrizione</i></td>
                                                                                <td><span><xsl:value-of select="NumeroREA" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CapitaleSociale">
                                                                           <tr><td>1.2.4.3</td><td>Handelskapital<br /><i>Capitale sociale</i></td>
                                                                                <td><span><xsl:value-of select="CapitaleSociale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="SocioUnico">
                                                                           <tr><td>1.2.4.4</td><td>Anzahl Gesellschafter<br /><i>Numero soci</i></td>
                                                                                <td><span><xsl:value-of select="SocioUnico" /></span>
                                                                                <xsl:variable name="NS"><xsl:value-of select="SocioUnico" /></xsl:variable>
                                                                                <xsl:choose>
                                                                                     <xsl:when test="$NS='SU'"> (Einzelgesellschafter)<i>(socio unico)</i></xsl:when>
                                                                                     <xsl:when test="$NS='SM'"> (mehrere Gesellschafter)<i>(più soci)</i></xsl:when>
                                                                                     <xsl:when test="$NS=''"></xsl:when>
                                                                                     <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="StatoLiquidazione">
                                                                           <tr><td>1.2.4.5</td><td>Auflösung<br /><i>Stato di liquidazione</i></td>
                                                                                <td><span><xsl:value-of select="StatoLiquidazione" /></span><xsl:variable name="SL"><xsl:value-of select="StatoLiquidazione" /></xsl:variable>
                                                                                <xsl:choose>
                                                                                     <xsl:when test="$SL='LS'"> (in Auflösung)<i>(in liquidazione)</i></xsl:when>
                                                                                     <xsl:when test="$SL='LN'"> (nicht in Auflösung)<i>(non in liquidazione)</i></xsl:when>
                                                                                     <xsl:when test="$SL=''"></xsl:when>
                                                                                     <xsl:otherwise><fehler>(!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>

                                                       <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/Contatti">
                                                            <xsl:if test="Telefono or Fax or Email">
                                                                 <h4>Adresse - <i>Recapiti</i></h4>
                                                                 <table id="t1">
                                                                      <xsl:if test="Telefono">
                                                                           <tr><td width="70px">1.2.5.1</td><td width="170px">Telefon<br /><i>Telefono</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Telefono" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Fax">
                                                                           <tr><td width="70px">1.2.5.2</td><td width="170px">FAX<br /><i>Fax</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Fax" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Email">
                                                                           <tr><td width="70px">1.2.5.3</td><td width="170px">E-Mail<br /><i>E-mail</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Email" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </xsl:if>
                                                       </xsl:for-each>

                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/RiferimentoAmministrazione">
                                                            <h4>Verwaltungsreferenz - <i>Riferimento amministrativo</i></h4>
                                                                 <table id="t1">
                                                                      <tr><td width="70px">1.2.6</td><td width="170px">Referenz<br /><i>Riferimento</i></td> 
                                                                           <td width="364px"><span><xsl:value-of select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/RiferimentoAmministrazione" /></span></td>
                                                                      </tr>
                                                                 </table>
                                                       </xsl:if>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI CEDENTE PRESTATORE-->

                                             <!--INIZIO DATI RAPPRESENTANTE FISCALE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/RappresentanteFiscale">
                                                  <div id="rappresentante-fiscale">
                                                       <h3>Daten des Vertreters für Steuerfragen für Dienstleisters / Lieferanten<br /><i>Dati del rappresentante fiscale del cedente / prestatore</i></h3>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/RappresentanteFiscale/DatiAnagrafici">
                                                            <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/RappresentanteFiscale/DatiAnagrafici">
                                                                      <xsl:if test="IdFiscaleIVA">
                                                                           <tr><td width="70px">1.3.1.1</td><td width="170px">Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /></span></td>
                                                                                </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CodiceFiscale">
                                                                           <tr><td>1.3.1.2</td><td>Steuernummer<br /><i>Codice fiscale</i></td>
                                                                                <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                                </tr>
                                                                      </xsl:if>

                                                                      <!--

                                                                      <xsl:if test="Anagrafica/Denominazione">
                                                                           <tr><td>1.3.1.3.1</td><td>Benennung<br /><i>Denominazione</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Titolo">
                                                                           <tr><td>1.3.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Nome">
                                                                           <tr><td>1.3.1.3.2</td><td>Name<br /><i>Nome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Cognome">
                                                                           <tr><td>1.3.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                 -->

                                                                      <xsl:if test="Anagrafica/Denominazione or Anagrafica/Titolo or Anagrafica/Nome or Anagrafica/Cognome">
                                                                           <tr><td width="70px">1.3.1.3.[1|4|2|3]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" />&#160;<xsl:value-of select="Anagrafica/Titolo" /><xsl:value-of select="Anagrafica/Nome" />&#160;<xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      <xsl:if test="Anagrafica/CodEORI">
                                                                           <tr><td>1.3.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI RAPPRESENTANTE FISCALE-->

                                             <!--INIZIO DATI CESSIONARIO COMMITTENTE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente">
                                                  <div id="cessionario">
                                                       <h3>Daten des Rechnungsempfängers - <i>Dati del cessionario / committente</i></h3>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/DatiAnagrafici">
                                                            <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/DatiAnagrafici">

                                                                      <!--
                                                                      <xsl:if test="Anagrafica/Denominazione">
                                                                           <tr><td width="70px">1.4.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Titolo">
                                                                           <tr><td>1.4.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Nome">
                                                                           <tr><td>1.4.1.3.2</td><td>Name<br /><i>Nome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Cognome">
                                                                           <tr><td>1.4.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="Anagrafica/Denominazione or Anagrafica/Titolo or Anagrafica/Nome or Anagrafica/Cognome">
                                                                           <tr><td width="70px">1.4.1.3.[1|4|2|3]</td><td width="170px">Benennung<br /><i>denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" />&#160;<xsl:value-of select="Anagrafica/Titolo" /><xsl:value-of select="Anagrafica/Nome" />&#160;<xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="IdFiscaleIVA">
                                                                           <tr><td>1.4.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /> </span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CodiceFiscale">
                                                                           <tr><td>1.4.1.2</td><td>Steuernummer<br /><i>Codice Fiscale</i></td>
                                                                                <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/CodEORI">
                                                                           <tr><td>1.4.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/Sede">
                                                            <h4>Firmensitz - <i>Dati della sede</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/Sede">

                                                                      <!--
                                                                      <xsl:if test="Indirizzo">
                                                                           <tr><td width="70px">1.4.2.1</td><td width="170px">Anschrift<br /><i>Indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroCivico">
                                                                           <tr><td>1.4.2.2</td><td>Hausnummer<br /><i>Numero civico</i></td>
                                                                                <td><span><xsl:value-of select="NumeroCivico" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CAP">
                                                                           <tr><td>1.4.2.3</td><td>PLZ<br /><i>CAP</i></td>
                                                                                <td><span><xsl:value-of select="CAP" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Comune">
                                                                           <tr><td>1.4.2.4</td><td>Gemeinde<br /><i>Comune</i></td>
                                                                                <td><span><xsl:value-of select="Comune" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Provincia">
                                                                           <tr><td>1.4.2.5</td><td>Provinz<br /><i>Provincia</i></td>
                                                                                <td><span><xsl:value-of select="Provincia" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Nazione">
                                                                           <tr><td>1.4.2.6</td><td>Land<br /><i>Nazione</i></td>
                                                                                <td><span><xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="Indirizzo or NumeroCivico or CAP or Comune or Provincia or Nazione">
                                                                           <tr><td width="70px">1.4.2.[1|2|3|4|5|6]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" />&#160;<xsl:value-of select="NumeroCivico" /><br /> <xsl:value-of select="CAP" />&#160;<xsl:value-of select="Comune" />&#160;<xsl:value-of select="Provincia" /> &#160;<xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>



                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI CESSIONARIO COMMITTENTE-->

                                             <!--INIZIO DATI TERZO INTERMEDIARIO SOGGETTO EMITTENTE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/TerzoIntermediarioOSoggettoEmittente">
                                                  <div id="terzointermediario">

                                                       <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/TerzoIntermediarioOSoggettoEmittente">
                                                            <h3>Daten des Vermittlers des Emittenten - <i>Dati del terzo intermediario soggetto emittente</i></h3>

                                                            <xsl:if test="DatiAnagrafici">
                                                                 <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                                 <table id="t1">

                                                                      <!--
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Denominazione">
                                                                           <tr><td width="70px">1.5.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Denominazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Titolo">
                                                                           <tr><td>1.5.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Titolo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Nome">
                                                                           <tr><td>1.5.1.3.2</td><td>Name<br /><i>Nome</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Cognome">
                                                                           <tr><td>1.5.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Denominazione or DatiAnagrafici/Anagrafica/Titolo or DatiAnagrafici/Anagrafica/Nome or DatiAnagrafici/Anagrafica/Cognome">
                                                                           <tr><td width="70px">1.5.1.3.[1|4|2|3]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Denominazione" />&#160;<xsl:value-of select="DatiAnagrafici/Anagrafica/Titolo" />&#160;<xsl:value-of select="DatiAnagrafici/Anagrafica/Nome" /> &#160;<xsl:value-of select="DatiAnagrafici/Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>


                                                                      <xsl:if test="DatiAnagrafici/IdFiscaleIVA">
                                                                           <tr><td>1.5.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/IdFiscaleIVA/IdPaese" /><xsl:value-of select="DatiAnagrafici/IdFiscaleIVA/IdCodice" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/CodiceFiscale">
                                                                           <tr><td>1.5.1.2</td><td>Steuernummer<br /><i>Codice Fiscale</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/CodiceFiscale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/CodEORI">
                                                                           <tr><td>1.5.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </xsl:if>
                                                       </xsl:for-each>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI TERZO INTERMEDIARIO SOGGETTO EMITTENTE-->

                                             <!--INIZIO DATI SOGGETTO EMITTENTE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/SoggettoEmittente">
                                                  <div id="soggetto-emittente">
                                                       <h3>Rechnungsersteller - <i>Soggetto emittente la fattura</i></h3>
                                                       <table id="t1">
                                                            <tr><td width="70px">1.6</td><td width="170px">Austeller<br /><i>Soggetto emittente</i></td>
                                                            <td width="364px"><span><xsl:value-of select="a:FatturaElettronica/FatturaElettronicaHeader/SoggettoEmittente" /> </span><xsl:variable name="SC"><xsl:value-of select="a:FatturaElettronica/FatturaElettronicaHeader/SoggettoEmittente" /> </xsl:variable>
                                                                 <xsl:choose>
                                                                      <xsl:when test="$SC='CC'"> (Rechnungssteller)<i>(cessionario/committente)</i></xsl:when>
                                                                      <xsl:when test="$SC='TZ'"> (dritter)<i>(terzo)</i></xsl:when>
                                                                      <xsl:when test="$SC=''"></xsl:when>
                                                                      <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                 </xsl:choose></td>
                                                            </tr>
                                                       </table>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI SOGGETTO EMITTENTE-->

                                             <div class="footer"><xsl:value-of select="$VersionFT" /><br /><a href="http://www.fatturapa.gov.it">www.fatturapa.gov.it</a></div>
                                        </div>
                                   </xsl:if>
                                   <!--FINE DATI HEADER-->

                                   <!--INIZIO DATI BODY-->

                                   <xsl:variable name="TOTALBODY">
                                        <xsl:value-of select="count(a:FatturaElettronica/FatturaElettronicaBody)" />
                                   </xsl:variable>

                                   <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaBody">
                                        <xsl:if test="$TOTALBODY>1">
                                             <h2>Dokument Nummer <i>Numero documento nel lotto</i>:<xsl:value-of select="position()" /></h2>
                                        </xsl:if>

                                        <div class="page">
                                             <div class="version">Version <xsl:value-of select="../@versione"/></div>

                                             <xsl:variable name="Valuta" select="DatiGenerali/DatiGeneraliDocumento/Divisa" />

                                             <xsl:if test="DatiGenerali">
                                                  <!--INIZIO DATI GENERALI-->
                                                  <div id="dati-generali">

                                                       <xsl:if test="DatiGenerali/DatiGeneraliDocumento">

                                                            <!--INIZIO DATI GENERALI DOCUMENTO-->
                                                            <div id="dati-generali-documento">
                                                                 <h3>Generelle Rechnungssdaten - <i>Dati generali del documento</i></h3>

                                                                 <table id="t1">
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/TipoDocumento">
                                                                           <tr><td width="70px">2.1.1.[2|1]</td><td width="170px">Währung : Dokumententyp<br /><i>Valuta : Tipologia doc.</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="$Valuta" />&#160;:&#160;<xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </span><xsl:variable name="TD"><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </xsl:variable>
                                                                                          <xsl:choose>
                                                                                               <xsl:when test="$TD='TD01'"> (Rechnung)<i>(fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD02'"> (Accontorechnung)<i>(acconto/anticipo su fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD03'"> (Accontohonorar)<i>(acconto/anticipo su parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD04'"> (Gutschrift)<i>(nota di credito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD05'"> (Lastschrift)<i>(nota di debito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD06'"> (Honorarnote)<i>(parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD=''"></xsl:when>
                                                                                               <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                          </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      <!--
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/TipoDocumento">
                                                                           <tr><td width="70px">2.1.1.1</td><td width="170px">Dokumententyp<br /><i>Tipologia documento</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </span><xsl:variable name="TD"><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </xsl:variable>
                                                                                          <xsl:choose>
                                                                                               <xsl:when test="$TD='TD01'"> (Rechnung)<i>(fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD02'"> (Accontorechnung)<i>(acconto/anticipo su fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD03'"> (Accontohonorar)<i>(acconto/anticipo su parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD04'"> (Gutschrift)<i>(nota di credito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD05'"> (Lastschrift)<i>(nota di debito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD06'"> (Honorarnote)<i>(parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD=''"></xsl:when>
                                                                                               <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                          </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                           <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Divisa">
                                                                           <tr><td>2.1.1.2</td><td>Währung<br /><i>Valuta importi</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Divisa" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Data">
                                                                           <tr><td>2.1.1.[4|3]</td><td>Dok.-nummer und -datum<br /><i>Numero e data doc.</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Numero" />&#160;-&#160;<xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DatiGenerali/DatiGeneraliDocumento/Data" /></xsl:call-template>
                                                                           </td></tr>
                                                                      </xsl:if>


                                                                      <!--
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Data">
                                                                           <tr><td>2.1.1.3</td><td>Dokumentdatum<br /><i>Data documento</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DatiGenerali/DatiGeneraliDocumento/Data" /></xsl:call-template>
                                                                           </td></tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Numero">
                                                                           <tr><td>2.1.1.4</td><td>Dokumentennummer<br /><i>Numero documento</i></td>
                                                                                <td><span>
                                                                                     <xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Numero" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/ImportoTotaleDocumento">
                                                                           <tr><td>2.1.1.9</td><td>Gesamtbetrag Dokument<br /><i>Importo totale documento</i></td>
                                                                                <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:variable name="ITD" select="DatiGenerali/DatiGeneraliDocumento/ImportoTotaleDocumento" /><xsl:value-of select="format-number($ITD, '###.##0,00', 'euro')" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Arrotondamento">
                                                                           <tr><td>2.1.1.10</td><td>Rundung auf dem Gesamtbetrag<br /><i>Arrotondamento su Importo totale documento</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Arrotondamento" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/Causale">
                                                                           <tr><td>2.1.1.11</td><td>Grund<br /><i>Causale</i></td>
                                                                                <td><span><xsl:value-of select="current()" /></span></td>
                                                                           </tr>
                                                                      </xsl:for-each>
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Art73">
                                                                           <tr><td>2.1.1.12</td><td colspan="2">Art. 73 DPR 633/72</td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Art73" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>

                                                                 <!--INIZIO DATI DELLA RITENUTA-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/DatiRitenuta">
                                                                      <div id="dati-ritenuta">
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/DatiRitenuta">
                                                                                <h4>Einbehalte - <i>Ritenuta</i></h4>
                                                                                <table id="t1">
                                                                                     <xsl:if test="TipoRitenuta">
                                                                                          <tr><td width="70px">2.1.1.5.1</td><td width="170px">Art des Einbehaltes<br /><i>Tipologia ritenuta</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="TipoRitenuta" /></span><xsl:variable name="TR"><xsl:value-of select="TipoRitenuta" /></xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$TR='RT01'"> (ritenuta persone fisiche)</xsl:when>
                                                                                                    <xsl:when test="$TR='RT02'"> (ritenuta persone giuridiche)</xsl:when>
                                                                                                    <xsl:when test="$TR=''"></xsl:when>
                                                                                                    <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose>
                                                                                          </td></tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImportoRitenuta">
                                                                                          <tr><td>2.1.1.5.2</td><td>Einbehaltener Betrag<br /><i>Importo ritenuta</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoRitenuta, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="AliquotaRitenuta">
                                                                                          <tr><td>2.1.1.5.3</td><td>Einbehaltsatz<br /><i>Aliquota ritenuta (%)</i></td>
                                                                                               <td><span><xsl:value-of select="format-number(AliquotaRitenuta, '###')" /> %</span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="CausalePagamento">
                                                                                          <tr><td>2.1.1.5.4</td><td>Zahlungsgrund<br /><i>Causale di pagamento</i></td>
                                                                                               <td><span><xsl:value-of select="CausalePagamento" /></span><xsl:variable name="CP"><xsl:value-of select="CausalePagamento" /></xsl:variable><xsl:if test="$CP!=''"> (Kodex nach Modell 770S)<i>(decodifica come da modello 770S)</i></xsl:if></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI DELLA RITENUTA-->

                                                                 <!--INIZIO DATI DEL BOLLO-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/DatiBollo">
                                                                      <div id="dati-bollo">
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/DatiBollo">
                                                                                <h4>Stempelwert - <i>Bollo</i></h4>
                                                                                <table id="t1">
                                                                                     <xsl:if test="BolloVirtuale">
                                                                                          <tr><td width="70px">2.1.1.6.1</td><td width="170px">Virtueller Stempelwert<br /><i>Bollo virtuale</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="BolloVirtuale" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImportoBollo">
                                                                                          <tr><td>2.1.1.6.2</td><td>Betrag Stempelwert<br /><i>Importo bollo</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoBollo, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI DEL BOLLO-->

                                                                 <!--INIZIO DATI DELLA CASSA PREVIDENZIALE-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/DatiCassaPrevidenziale">
                                                                      <div id="dati-cassa-previdenziale">
                                                                           <h4>Fürsorgekasse - <i>Cassa previdenziale</i></h4>
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/DatiCassaPrevidenziale">
                                                                                <table id="t1">
                                                                                     <xsl:if test="TipoCassa">
                                                                                          <tr><td width="70px">2.1.1.7.1</td><td width="170px">Fürsorgekasse<br /><i>Cassa previdenziale</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="TipoCassa" /></span><xsl:variable name="TC"><xsl:value-of select="TipoCassa" />
                                                                                               </xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$TC='TC01'"> (Cassa Nazionale Previdenza e Assistenza Avvocati e Procuratori legali)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC02'"> (Cassa Previdenza Dottori Commercialisti)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC03'"> (Cassa Previdenza e Assistenza Geometri)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC04'"> (Cassa Nazionale Previdenza e Assistenza Ingegneri e Architetti liberi profess.)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC05'"> (Cassa Nazionale del Notariato)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC06'"> (Cassa Nazionale Previdenza e Assistenza Ragionieri e Periti commerciali)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC07'"> (Ente Nazionale Assistenza Agenti e Rappresentanti di Commercio-ENASARCO)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC08'"> (Ente Nazionale Previdenza e Assistenza Consulenti del Lavoro-ENPACL)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC09'"> (Ente Nazionale Previdenza e Assistenza Medici-ENPAM)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC10'"> (Ente Nazionale Previdenza e Assistenza Farmacisti-ENPAF)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC11'"> (Ente Nazionale Previdenza e Assistenza Veterinari-ENPAV)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC12'"> (Ente Nazionale Previdenza e Assistenza Impiegati dell'Agricoltura-ENPAIA)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC13'"> (Fondo Previdenza Impiegati Imprese di Spedizione e Agenzie Marittime)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC14'"> (Istituto Nazionale Previdenza Giornalisti Italiani-INPGI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC15'"> (Opera Nazionale Assistenza Orfani Sanitari Italiani-ONAOSI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC16'"> (Cassa Autonoma Assistenza Integrativa Giornalisti Italiani-CASAGIT)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC17'"> (Ente Previdenza Periti Industriali e Periti Industriali Laureati-EPPI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC18'"> (Ente Previdenza e Assistenza Pluricategoriale-EPAP)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC19'"> (Ente Nazionale Previdenza e Assistenza Biologi-ENPAB)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC20'"> (Ente Nazionale Previdenza e Assistenza Professione Infermieristica-ENPAPI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC21'"> (Ente Nazionale Previdenza e Assistenza Psicologi-ENPAP)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC22'"> (INPS)</xsl:when>
                                                                                                    <xsl:when test="$TC=''"></xsl:when>
                                                                                                    <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImponibileCassa">
                                                                                          <tr><td>2.1.1.7.4</td><td>Grundlage Fürsorgebeitrag<br /><i>Imponibile previdenziale</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImponibileCassa, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="AlCassa">
                                                                                          <tr><td>2.1.1.7.2</td><td>Fürsorgebeitragssatz (%)<br /><i>Aliquota contri. cassa (%)</i></td>
                                                                                               <td><span><xsl:value-of select="format-number(AlCassa, '###')" /> %</span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImportoContributoCassa">
                                                                                          <tr><td>2.1.1.7.3</td><td>Fürsorgebeitrag<br /><i>Importo contributo cassa</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoContributoCassa, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="AliquotaIVA">
                                                                                          <tr><td>2.1.1.7.5</td><td>MwSt-Satz<br /><i>Aliquota IVA applicata</i></td>
                                                                                               <td><span><xsl:value-of select="format-number(AliquotaIVA, '###')" /> %</span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Ritenuta">
                                                                                          <tr><td>2.1.1.7.6</td><td>Fürsorgebeitrag im Abzug<br /><i>Contributo cassa soggetto a ritenuta</i></td>
                                                                                               <td><span><xsl:value-of select="Ritenuta" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Natura">
                                                                                          <tr><td>2.1.1.7.7</td><td>Art der Beitragsfreistellung<br /><i>Tipologia di non imponibilità del contributo</i></td>
                                                                                               <td><span><xsl:value-of select="Natura" /></span><xsl:variable name="NT"><xsl:value-of select="Natura" /></xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$NT='N1'"> (escluse ex art. 15)</xsl:when>
                                                                                                    <xsl:when test="$NT='N2'"> (non soggette)</xsl:when>
                                                                                                    <xsl:when test="$NT='N3'"> (non imponibili)</xsl:when>
                                                                                                    <xsl:when test="$NT='N4'"> (esenti)</xsl:when>
                                                                                                    <xsl:when test="$NT='N5'"> (regime del margine)</xsl:when>
                                                                                                    <xsl:when test="$NT='N6'"> (inversione contabile)</xsl:when>
                                                                                                    <xsl:when test="$NT=''"></xsl:when>
                                                                                                    <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="RiferimentoAmministrazione">
                                                                                          <tr><td>2.1.1.7.8</td><td>Hinweis Verwaltung / Buchhaltung<br /><i>Riferimento amministrativo / contabile</i></td>
                                                                                               <td><span><xsl:value-of select="RiferimentoAmministrazione" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI DELLA CASSA PREVIDENZIALE-->

                                                                 <!--INIZIO DATI SCONTO / MAGGIORAZIONE-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/ScontoMaggiorazione">
                                                                      <h4>Skonto/Aufschläge - <i>Sconto/maggiorazione</i></h4>
                                                                      <div id="dati-sconto-maggiorazione">
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/ScontoMaggiorazione">
                                                                                <table id="t1">
                                                                                     <xsl:if test="Tipo">
                                                                                          <tr><td width="70px">2.1.1.8.1</td><td width="170px">Typologie<br /><i>Tipologia</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="Tipo" /></span>
                                                                                               <xsl:variable name="TSM"><xsl:value-of select="Tipo" /></xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$TSM='SC'"> (sconto)</xsl:when>
                                                                                                    <xsl:when test="$TSM='MG'"> (maggiorazione)</xsl:when>
                                                                                                    <xsl:otherwise> <fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Percentuale">
                                                                                          <tr><td>2.1.1.8.2</td><td>Prozentsatz<br /><i>Percentuale</i></td>
                                                                                               <td><span><xsl:value-of select="Percentuale" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Importo">
                                                                                          <tr><td>2.1.1.8.3</td><td>Betrag<br /><i>Importo</i></td>
                                                                                               <td><span><xsl:value-of select="Importo" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI SCONTO / MAGGIORAZIONE-->

                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI GENERALI DOCUMENTO-->

                                                       <!--INIZIO DATI DELL'ORDINE DI ACQUISTO-->
                                                       <xsl:if test="DatiGenerali/DatiOrdineAcquisto">
                                                            <div id="dati-ordine-acquisto">
                                                                 <h3>Daten zur Bestellung - <i>Dati dell'ordine di acquisto</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiOrdineAcquisto">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.2.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span><br /></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td width="70px">2.1.2.2</td><td width="170px">Bestellkennung<br /><i>Ident. ordine di acquisto</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.2.3</td><td>Bestellungsdatum<br /><i>Data ordine di acquisto</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.2.4</td><td>Zeilennummer der Bestellung<br /><i>Numero linea ordine di acquisto</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.2.5</td><td>Verkaufs-/Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.2.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.2.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DELL'ORDINE DI ACQUISTO-->

                                                       <!--INIZIO DATI DEL CONTRATTO-->
                                                       <xsl:if test="DatiGenerali/DatiContratto">
                                                            <div id="dati-contratto">
                                                                 <h3>Vertragsdaten - <i>Dati del contratto</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiContratto">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.3.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td width="70px">2.1.3.2</td><td width="170px">Vertragskenndaten<br /><i>Ident. contratto</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.3.3</td><td>Vertagsdatum<br /><i>Data contratto</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.3.4</td><td>Zeilennummer Vertrag<br /><i>Numero linea contratto</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.3.5</td><td>Verk.-/Konv.-kodex<br /><i>Codice comm./conv.</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.3.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.3.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DEL CONTRATTO-->

                                                       <!--INIZIO DATI CONVENZIONE-->
                                                       <xsl:if test="DatiGenerali/DatiConvenzione">
                                                            <div id="dati-convenzione">
                                                                 <h3>Daten der Konvention - <i>Dati della convenzione</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiConvenzione">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.4.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td>2.1.4.2</td><td>Konventionskennung<br /><i>Ident. convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.4.3</td><td>Datum Konvention<br /><i>Data convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.4.4</td><td>Zeilennummer Konvention<br /><i>Numero linea convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.4.5</td><td>Verkaufs- / Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.4.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.4.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI CONVENZIONE-->

                                                       <!--INIZIO DATI RICEZIONE-->
                                                       <xsl:if test="DatiGenerali/DatiRicezione">
                                                            <div id="dati-ricezione">
                                                                 <h3>Daten zum Erhalt der Leistung - <i>Dati della ricezione</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiRicezione">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.5.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td>2.1.5.2</td><td>Kennzeichen des Empfangs<br /><i>Ident. ricezione</i></td>
                                                                                     <td><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.5.3</td><td>Empfangsdatum<br /><i>Data ricezione</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.5.4</td><td>Zeilennummer des Empfangs<br /><i>Numero linea ricezione</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.5.5</td><td>Verkaufs- / Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.5.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.5.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                      </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI RICEZIONE-->

                                                       <!--INIZIO DATI FATTURE COLLEGATE-->
                                                       <xsl:if test="DatiGenerali/DatiFattureCollegate">
                                                            <div id="dati-fatture-collegate">
                                                                 <h3>Daten zu verbundenen Rechnungen - <i>Dati della fattura collegata</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiFattureCollegate">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.6.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td>2.1.6.2</td><td>Kennzeichen der dazugehörenden Rechnung<br /><i>Ident. fattura collegata</i></td>
                                                                                     <td><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.6.3</td><td>Datum der dazugehörenden Rechnung<br /><i>Data fattura collegata</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.6.4</td><td>Zeilennummer bei der dazugehörenden Rechnung<br /><i>Numero linea fattura collegata</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.6.5</td><td>Verkaufs- / Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.6.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.6.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                      </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI FATTURE COLLEGATE-->

                                                       <!--INIZIO DATI RIFERIMENTO SAL-->
                                                       <xsl:if test="DatiGenerali/DatiSAL">
                                                            <div id="dati-sal">
                                                                 <h3>Baufortschritt - <i>Stato avanzamento lavori</i></h3>
                                                                 <table id="t1">
                                                                      <xsl:if test="DatiGenerali/DatiSAL/RiferimentoFase">
                                                                           <tr><td width="70px">2.1.7.1</td><td width="170px">Nummer Baufortschritt<br /><i>Numero fase avanzamento</i></td>
                                                                                <td width="364px"><xsl:for-each select="DatiGenerali/DatiSAL/RiferimentoFase"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI RIFERIMENTO SAL-->

                                                       <!--INIZIO DATI  DDT-->
                                                       <xsl:if test="DatiGenerali/DatiDDT">
                                                            <div id="dati-ddt">
                                                                 <h3>Daten zum Warenbegleitschein (WBS) - <i>Dati del documento di trasporto (DDT)</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiDDT">
                                                                           <xsl:if test="NumeroDDT or DataDDT or RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.8.[1|2|3]</td>
                                                                                <td width="170px">Nummer, Datum WBS<br /><i>Numero data DDT</i></td>
                                                                                     <td width="364px">
                                                                                     <xsl:if test="NumeroDDT"><span><xsl:value-of select="NumeroDDT" /></span></xsl:if>
                                                                                     <xsl:if test="DataDDT"> vom/<i>del</i>&#160;<span><xsl:value-of select="DataDDT" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataDDT" /></xsl:call-template></xsl:if>
                                                                                     <xsl:if test="RiferimentoNumeroLinea"><br />Betrifft Zeile/<i>Rif.linea</i>&#160;<xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></xsl:if>
                                                                                </td></tr>
                                                                           </xsl:if>

                                                                           <!--
                                                                           <xsl:if test="NumeroDDT">
                                                                                <tr><td width="70px">2.1.8.1</td><td width="170px">Nummer WBS<br /><i>Numero DDT</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="NumeroDDT" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="DataDDT">
                                                                                <tr><td>2.1.8.2</td><td>Datum WBS<br /><i>Data DDT</i></td>
                                                                                     <td><span><xsl:value-of select="DataDDT" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataDDT" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td>2.1.8.3</td><td>Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           -->

                                                                      </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DDT-->

                                                       <!--INIZIO DATI  TRASPORTO-->
                                                       <xsl:if test="DatiGenerali/DatiTrasporto">
                                                            <div id="dati-trasporto">
                                                                 <h3>Daten zum Warentransport - <i>Dati relativi al trasporto</i></h3>
                                                                 <xsl:if test="DatiGenerali/DatiTrasporto/DatiAnagraficiVettore">
                                                                      <h4>Daten des Frächters - <i>Dati del vettore</i></h4>
                                                                 </xsl:if>
                                                                 <table id="t1">
                                                                 <xsl:if test="DatiGenerali/DatiTrasporto/DatiAnagraficiVettore">
                                                                           <xsl:for-each select="DatiGenerali/DatiTrasporto/DatiAnagraficiVettore">
                                                                                <xsl:if test="Anagrafica/Denominazione">
                                                                                     <tr><td width="70px">2.1.9.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                          <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/Titolo">
                                                                                     <tr><td>2.1.9.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                          <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/Nome">
                                                                                     <tr><td width="90px">2.1.9.1.3.2</td><td width="170px">Name<br /><i>Nome</i></td>
                                                                                          <td width="364px"><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/Cognome">
                                                                                     <tr><td>2.1.9.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                          <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IdFiscaleIVA/IdPaese">
                                                                                     <tr><td>2.1.9.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                          <td><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CodiceFiscale">
                                                                                     <tr><td>2.1.9.1.2</td><td>Steuernummer<br /><i>Codice Fiscale</i></td>
                                                                                          <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/CodEORI">
                                                                                     <tr><td>2.1.9.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                          <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="NumeroLicenzaGuida">
                                                                                     <tr><td>2.1.9.1.4</td><td>Führerscheinnummer<br /><i>Numero licenza di guida</i></td>
                                                                                          <td><span><xsl:value-of select="NumeroLicenzaGuida" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                           </xsl:for-each>
                                                                 </xsl:if>

                                                                 <xsl:if
                                                                      test="DatiGenerali/DatiTrasporto/MezzoTrasporto or DatiGenerali/DatiTrasporto/CausaleTrasporto or DatiGenerali/DatiTrasporto/NumeroColli or DatiGenerali/DatiTrasporto/Descrizione or DatiGenerali/DatiTrasporto/UnitaMisuraPeso or DatiGenerali/DatiTrasporto/PesoLordo or DatiGenerali/DatiTrasporto/PesoNetto or DatiGenerali/DatiTrasporto/DataOraRitiro or DatiGenerali/DatiTrasporto/DataInizioTrasporto or DatiGenerali/DatiTrasporto/TipoResa or DatiGenerali/DatiTrasporto/IndirizzoResa">
                                                                      <tr><td colspan="3"><h4>Weitere Daten - <i>Altri dati</i></h4></td></tr>
                                                                           <xsl:for-each select="DatiGenerali/DatiTrasporto">
                                                                                <xsl:if test="MezzoTrasporto">
                                                                                     <tr><td>2.1.9.2</td><td>Transortmittel<br /><i>Mezzo di trasporto</i></td>
                                                                                          <td><span><xsl:value-of select="MezzoTrasporto" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CausaleTrasporto">
                                                                                     <tr><td>2.1.9.3</td><td>Transportgrund<br /><i>Causale trasporto</i></td>
                                                                                          <td><span><xsl:value-of select="CausaleTrasporto" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="NumeroColli">
                                                                                     <tr><td>2.1.9.4</td><td>Anzahl der Frachtstücke<br /><i>Numero colli trasportati</i></td>
                                                                                          <td><span><xsl:value-of select="NumeroColli" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Descrizione">
                                                                                     <tr><td>2.1.9.5</td><td>Beschreibung der transportierten Güter<br /><i>Descrizione beni trasportati</i></td>
                                                                                          <td><span><xsl:value-of select="Descrizione" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="UnitaMisuraPeso">
                                                                                     <tr><td>2.1.9.6</td><td>Messeinheit der Ware<br /><i>Unità di misura del peso merce</i></td>
                                                                                          <td><span><xsl:value-of select="UnitaMisuraPeso" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="PesoLordo">
                                                                                     <tr><td>2.1.9.7</td><td>Bruttogewicht<br /><i>Peso lordo</i></td>
                                                                                          <td><span><xsl:value-of select="PesoLordo" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="PesoNetto">
                                                                                     <tr><td>2.1.9.8</td><td>Nettogewicht<br /><i>Peso netto</i></td>
                                                                                          <td><span><xsl:value-of select="PesoNetto" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataOraRitiro">
                                                                                     <tr><td>2.1.9.9</td><td>Datum und Zeit der Abgabe<br /><i>Data e ora ritiro merce</i></td>
                                                                                          <td><span><xsl:value-of select="DataOraRitiro" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataOraRitiro" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataInizioTrasporto">
                                                                                     <tr><td>2.1.9.10</td><td>Datum Transportbeginn<br /><i>Data inizio trasporto</i></td>
                                                                                          <td><span><xsl:value-of select="DataInizioTrasporto" />
                                                                                          </span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataInizioTrasporto" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="TipoResa">
                                                                                     <tr><td>2.1.9.11</td><td>Typologie der Abgabe<br /><i>Tipologia di resa</i></td>
                                                                                          <td><span><xsl:value-of select="TipoResa" /></span> (Kodifizierung nach ICC-Standard)<br /><i>(codifica secondo standard ICC)</i></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Indirizzo">
                                                                                     <tr><td>2.1.9.12.1</td><td>Adresse der Abgabe<br /><i>Indirizzo di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Indirizzo" /></span></td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/NumeroCivico">
                                                                                     <tr><td>2.1.9.12.2</td><td>Hausnummer Abgabeadresse<br /><i>Numero civico indirizzo di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/NumeroCivico" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/CAP">
                                                                                     <tr><td>2.1.9.12.3</td><td>PLZ Adresse Abgabe<br /><i>CAP indirizzo di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/CAP" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Comune">
                                                                                     <tr><td>2.1.9.12.4</td><td>Gemeinde Abgabe<br /><i>Comune di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Comune" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Provincia">
                                                                                     <tr><td>2.1.9.12.5</td><td>Provinz Abgabe<br /><i>Provincia di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Provincia" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Nazione">
                                                                                     <tr><td>2.1.9.12.6</td><td>Land der Abgabe<br /><i>Nazione di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Nazione" /></span></td>
                                                                                          </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataOraConsegna">
                                                                                     <tr><td>2.1.9.13</td><td>Land der Abgabe<br /><i>Nazione di resa</i></td>
                                                                                          <td><span><xsl:value-of select="DataOraConsegna" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                           </xsl:for-each>
                                                                 </xsl:if>
                                                                      </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI TRASPORTO-->

                                                       <!--INIZIO FATTURA PRINCIPALE-->
                                                       <xsl:if test="DatiGenerali/FatturaPrincipale/NumeroFatturaPrincipale">
                                                            <div id="fattura-principale">
                                                                 <h3>Daten zur Hauptrechnung - <i>Dati relativi alla fattura principale</i></h3>
                                                                 <table id="t1">
                                                                      <xsl:if test="DatiGenerali/FatturaPrincipale/NumeroFatturaPrincipale">
                                                                           <tr><td  width="70px">2.1.10.1</td>
                                                                                <td width="170px">Nummer der Hauptrechnung<br /><i>Numero fattura principale</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiGenerali/FatturaPrincipale/NumeroFatturaPrincipale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiGenerali/FatturaPrincipale/DataFatturaPrincipale">
                                                                           <tr><td  width="70px">2.1.10.2</td>
                                                                                <td width="170px">Datum Hauptrechnung<br /><i>Data fattura principale</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiGenerali/FatturaPrincipale/DataFatturaPrincipale" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DatiGenerali/FatturaPrincipale/DataFatturaPrincipale" /></xsl:call-template></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE FATTURA PRINCIPALE-->

                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI GENERALI-->

                                             <!--INIZIO DATI BENI E SERVIZI-->
                                             <xsl:if test="DatiBeniServizi/DettaglioLinee">
                                                  <div id="dati-dettaglio-linee">

                                                       <!--INIZIO DATI DI DETTAGLIO DELLE LINEE-->
                                                       <xsl:if test="DatiBeniServizi/DettaglioLinee">
                                                            <div id="righe">
                                                                 <h3>Daten zur Lieferung - <i>Dati relativi alle linee di dettaglio della fornitura</i></h3>
                                                                <table id="t2">
                                                                  <tr bgcolor="#998c99">
                                                                    <th align="center" width="25">Nr</th>
                                                                    <th width="175">Beschreibung<br />Descrizione cessione/prestazione</th>
                                                                    <th width="65">Menge<br />Quantità</th>
                                                                    <th width="20">ME<br />UM</th>
                                                                    <th width="85">Preis<br />Prezzo</th>
                                                                    <th width="80">Skonto<br />Sconto</th>
                                                                    <th width="85">Preis gesamt<br />Prezzo totale</th>
                                                                    <th width="40">MwSt<br />IVA<br />(%)</th>
                                                                  </tr>
                                                                                                       <xsl:for-each select="DatiBeniServizi/DettaglioLinee">
                                                                                                            <tr>
                                                                    <td align="center"><span><xsl:value-of select="NumeroLinea" /></span></td>
                                                                      <td>
                                                                                                                      <xsl:if test="Descrizione">
                                                                        <xsl:if test="CodiceArticolo">
                                                                          <xsl:for-each select="CodiceArticolo">
                                                                            <xsl:if test="CodiceTipo"><span><xsl:value-of select="CodiceTipo" /></span></xsl:if>
                                                                            <xsl:if test="CodiceValore"><span><xsl:value-of select="CodiceValore" /></span></xsl:if><br />
                                                                          </xsl:for-each>
                                                                        </xsl:if>
                                                                        <span><xsl:value-of select="Descrizione" /></span>
                                                                      </xsl:if>
                                                                      <xsl:if test="DataInizioPeriodo"><br />
                                                                        <xsl:if test="DataInizioPeriodo">Datum Beginn des Leistungszeitraumes <i>inizio periodo di riferimento</i>: <span>
                                                                          <xsl:value-of select="DataInizioPeriodo" /></span><xsl:call-template name="FormatDate">
                                                                          <xsl:with-param name="DateTime" select="DataInizioPeriodo" /></xsl:call-template>
                                                                          <xsl:if test="DataFinePeriodo"><br /> </xsl:if></xsl:if>
                                                                          <xsl:if test="DataFinePeriodo">Datum Ende des Leistungszeitraumes <i>Data fine periodo di riferimento</i>: <span>
                                                                        <xsl:value-of select="DataFinePeriodo" /></span><xsl:call-template name="FormatDate">
                                                                        <xsl:with-param name="DateTime" select="DataFinePeriodo" /></xsl:call-template></xsl:if></xsl:if>
                                                                      <xsl:if test="ScontoMaggiorazione/Tipo"><br /><span><xsl:value-of select="ScontoMaggiorazione/Tipo" /></span>
                                                                        <xsl:variable name="TCP"><xsl:value-of select="ScontoMaggiorazione/Tipo" /></xsl:variable>
                                                                         <xsl:choose>
                                                                              <xsl:when test="$TCP='SC'"> (Skonto)<i>(sconto)</i></xsl:when>
                                                                              <xsl:when test="$TCP='PR'"> (Prämie)<i>(premio)</i></xsl:when>
                                                                              <xsl:when test="$TCP='AB'"> (Gutschrift)<i>(abbuono)</i></xsl:when>
                                                                              <xsl:when test="$TCP='AC'"> (Zusatzspesen)<i>(spesa accessoria)</i></xsl:when>
                                                                              <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                         </xsl:choose><span><xsl:value-of select="ScontoMaggiorazione/Percentuale" />%</span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="Quantita">
                                                                         <span><xsl:value-of select="format-number(Quantita, '#.###,###','euro')" /></span></xsl:if></td>
                                                                         <td><xsl:if test="UnitaMisura"><span><xsl:value-of select="UnitaMisura" /></span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="PrezzoUnitario"><span><xsl:value-of select="format-number(PrezzoUnitario, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="ScontoMaggiorazione/Importo"><span><xsl:value-of select="format-number(ScontoMaggiorazione/Importo, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="PrezzoTotale"><span><xsl:value-of select="format-number(PrezzoTotale, '###.##0,00', 'euro')"  /></span></xsl:if></td>
                                                                         <td align="center"><xsl:if test="AliquotaIVA">
                                                                         <xsl:variable name="IVA" select="AliquotaIVA"/>
                                                                         <xsl:choose>
                                                                              <xsl:when test="$IVA='0.00' or $IVA='0'">
                                                                                   <xsl:if test="Natura"><span><xsl:value-of select="Natura" /></span></xsl:if>
                                                                              </xsl:when>
                                                                              <xsl:otherwise><span><xsl:value-of select="format-number(AliquotaIVA, '##0')" /></span></xsl:otherwise>
                                                                         </xsl:choose>
                                                                         </xsl:if></td>

                                                                      </tr>
                                                                 </xsl:for-each>
                                                              </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DI DETTAGLIO DELLE LINEE-->

                                                       <!--INIZIO DATI DI RIEPILOGO ALIQUOTE E NATURE-->
                                                       <xsl:if test="DatiBeniServizi/DatiRiepilogo">
                                                            <div id="riepilogo-aliquote-nature">
                                                                 <h3>Daten zur MwSt. nach Satz und Art - <i>Dati di riepilogo per aliquota IVA e natura</i></h3>
                                                                 <table border="1" width="610px">
                                                                 <tr bgcolor="#998c99">
                                                                        <th width="45">MwSt<br />Aliq.</th>
                                                                        <th width="70">Art<br />Natura</th>
                                                                        <th width="75">Spesen<br />Spese</th>
                                                                        <th width="75">Rundung<br />Arroton.</th>
                                                                        <th width="75">Grundlage<br />Imponibile</th>
                                                                        <th width="75">Steuer<br />Imposta</th>
                                                                        <th width="75">Fälligkeit<br />Esigibilita</th>
                                                                        <th width="85">Ges.Bezug<br />Rif.Norma</th>
                                                                 </tr>
                                                                 <xsl:for-each select="DatiBeniServizi/DatiRiepilogo">
                                                                      <tr>
                                                                           <td align="center"><xsl:if test="AliquotaIVA">
                                                                                     <xsl:variable name="IVA" select="AliquotaIVA"/>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$IVA='0.00' or $IVA='0'">
                                                                                               <xsl:if test="Natura"><span><xsl:value-of select="Natura" /></span></xsl:if>
                                                                                          </xsl:when>
                                                                                          <xsl:otherwise><span><xsl:value-of select="format-number(AliquotaIVA, '##0')" /></span></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                                     </xsl:if></td>

                                                                           <td><xsl:if test="Natura"><xsl:variable name="NAT1"><xsl:value-of select="Natura" /></xsl:variable>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$NAT1='N1'"> (escluse ex art.15)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N2'"> (non soggette)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N3'"> (non imponibili)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N4'"> (esenti)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N5'"> (regime del margine)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N6'"> (inversione contabile)</xsl:when>
                                                                                          <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                             </xsl:if></td>
                                                                           <td align="right"><xsl:if test="SpeseAccessorie"><span><xsl:value-of select="format-number(SpeseAccessorie, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td align="right"><xsl:if test="Arrotondamento"><span><xsl:value-of select="format-number(Arrotondamento, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td align="right"><xsl:if test="ImponibileImporto"><span><xsl:variable name="Ii" select="ImponibileImporto" /><xsl:value-of select="format-number($Ii, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td align="right"><xsl:if test="Imposta"><span><xsl:value-of select="format-number(Imposta, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td><xsl:if test="EsigibilitaIVA"><span><xsl:value-of select="EsigibilitaIVA" /></span><xsl:variable name="EI"><xsl:value-of select="EsigibilitaIVA" /></xsl:variable>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$EI='I'"> (esigibilità immediata)</xsl:when>
                                                                                          <xsl:when test="$EI='D'"> (esigibilità differita)</xsl:when>
                                                                                          <xsl:when test="$EI='S'"> (scissione dei pagamenti)</xsl:when>
                                                                                          <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                              </xsl:if></td>
                                                                           <td><xsl:if test="RiferimentoNormativo"><span><xsl:value-of select="RiferimentoNormativo" /></span></xsl:if></td>
                                                                      </tr>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI RIEPILOGO ALIQUOTE E NATURE-->

                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI BENI E SERVIZI-->

                                             <!--INIZIO DATI VEICOLI-->
                                             <xsl:if test="DatiVeicoli">
                                                  <div id="dati-veicoli"><h3>Daten zum Transportfahrzeug - <i>Dati Veicoli ex art. 38 dl 331/1993</i></h3>
                                                       <table id="t1">
                                                            <xsl:for-each select="DatiVeicoli">
                                                                 <xsl:if test="Data">
                                                                      <tr><td width="70px">2.3.1</td><td width="170px">Datum Ersteinschreibung des Fahrzeuges<br /><i> prima immatricolazione / iscrizione PR </i></td>
                                                                           <td width="364px"><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                      </tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="TotalePercorso">
                                                                      <tr><td>2.3.2</td><td>Gesamtlänge Fahrt<br /><i>Totale percorso</i></td>
                                                                           <td><span><xsl:value-of select="TotalePercorso" /></span></td>
                                                                      </tr>
                                                                 </xsl:if>
                                                            </xsl:for-each>
                                                       </table>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI VEICOLI-->

                                             <!--INIZIO DATI PAGAMENTO-->
                                             <xsl:if test="DatiPagamento">
                                                  <div id="dati-pagamento-condizioni">
                                                       <h3>Daten zur Bezahlung - <i>Dati relativi al pagamento</i></h3>
                                                            <xsl:for-each select="DatiPagamento">
                                                                 <xsl:if test="CondizioniPagamento">
                                                                 <table id="t1">
                                                                      <tr><td width="70px">2.4.1</td><td width="170px">Zahlungsbedingungen<br /><i>Condizioni di pagamento</i></td>
                                                                           <td width="364px"><span><xsl:value-of select="CondizioniPagamento" /></span><xsl:variable name="CP"><xsl:value-of select="CondizioniPagamento" /></xsl:variable>
                                                                           <xsl:choose>
                                                                                <xsl:when test="$CP='TP01'"> (Ratenzahlung)<i>(pagamento a rate)</i></xsl:when>
                                                                                <xsl:when test="$CP='TP02'"> (Einmalzahlung)<i>(pagamento completo)</i></xsl:when>
                                                                                <xsl:when test="$CP='TP03'"> (Vorauszahlung)<i>(anticipo)</i></xsl:when>
                                                                                <xsl:when test="$CP=''"></xsl:when>
                                                                                <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                           </xsl:choose></td>
                                                                      </tr>
                                                                 </table>
                                                                 </xsl:if>

                                                                 <xsl:if test="DettaglioPagamento">
                                                                      <!--
                                                                      <tr><td></td><td colspan="2"><h5>Details zur Bezahlung - <i>Dettaglio pagamento</i></h5></td></tr>
                                                                      -->
                                                                 <xsl:variable name="TOTALRATEN" select="count(DettaglioPagamento)" />
                                                                 <xsl:for-each select="DettaglioPagamento">
                                                                 <xsl:if test="$TOTALRATEN>1">
                                                                      <h4>Rate Nr. <i>Rata N°</i>:&#160;<xsl:value-of select="position()" />&#160;<xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataScadenzaPagamento" /></xsl:call-template></h4>
                                                                 </xsl:if>
                                                                 <table id="t1">
                                                                      <xsl:if test="Beneficiario">
                                                                           <tr><td width="70px">2.4.2.1</td><td width="170px">Zahlungsempfänger<br /><i>Beneficiario pagamento</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Beneficiario" /></span></td>
                                                                           </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="ModalitaPagamento">
                                                                                <tr><td width="70px">2.4.2.2</td><td width="170px">Zahlungsmodalität<br /><i>Modalità di pagamento</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="ModalitaPagamento" /></span><xsl:variable name="MP"><xsl:value-of select="ModalitaPagamento" /></xsl:variable>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$MP='MP01'"> (bar)<i>(contanti)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP02'"> (Scheck)<i>(assegno)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP03'"> (Zirkularscheck)<i>(assegno circolare)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP04'"> (über Schatzamt)<i>(contanti presso Tesoreria)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP05'"> (Überweisung)<i>(bonifico)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP06'"> (Wechsel)<i>(vaglia cambiario)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP07'"> (Bankmitteilung)<i>(bollettino bancario)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP08'"> (Zahlkarte)<i>(carta di pagamento)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP09'"> (RID)</xsl:when>
                                                                                          <xsl:when test="$MP='MP10'"> (RID normal)<i>(RID utenze)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP11'"> (RID Schnell)<i>(RID veloce)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP12'"> (RIBA)</xsl:when>
                                                                                          <xsl:when test="$MP='MP13'"> (MAV)</xsl:when>
                                                                                          <xsl:when test="$MP='MP14'"> (quietanza erario)</xsl:when>
                                                                                          <xsl:when test="$MP='MP15'"> (giroconto su conti di con</xsl:when>
                                                                                          <xsl:when test="$MP='MP16'"> (Bankdauerauftrag)<i>(domiciliazione bancaria)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP17'"> (Postdauerauftrag)<i>(domiciliazione postale)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP18'"> (Postüberweisung)<i>(bollettino di c/c postale)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP19'"> (SEPA Direct Debit)</xsl:when>
                                                                                          <xsl:when test="$MP='MP20'"> (SEPA Direct Debit CORE)</xsl:when>
                                                                                          <xsl:when test="$MP='MP21'"> (SEPA Direct Debit B2B)</xsl:when>
                                                                                          <xsl:when test="$MP=''"></xsl:when>
                                                                                          <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                                     </td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataRiferimentoTerminiPagamento">
                                                                                     <tr><td>2.4.2.3</td><td>Beginn Zahlungsfrist<br /><i>Dec. termine pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="DataRiferimentoTerminiPagamento" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataRiferimentoTerminiPagamento" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="GiorniTerminiPagamento">
                                                                                     <tr><td>2.4.2.4</td><td>Zahlungsziel (Tagen)<br /><i>Term. pagamento (giorni)</i></td>
                                                                                          <td><span><xsl:value-of select="GiorniTerminiPagamento" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataScadenzaPagamento">
                                                                                     <tr><td>2.4.2.5</td><td>Ende Zahlungsziel<br /><i>Data scadenza pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="DataScadenzaPagamento" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataScadenzaPagamento" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="ImportoPagamento">
                                                                                     <tr><td>2.4.2.6</td><td>Betrag<br /><i>Importo</i></td>
                                                                                          <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoPagamento, '###.##0,00', 'euro')" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CodUfficioPostale">
                                                                                     <tr><td>2.4.2.7</td><td>Kodex Postamt<br /><i>Codice Ufficio Postale</i></td>
                                                                                          <td><span><xsl:value-of select="CodUfficioPostale" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="TitoloQuietanzante">
                                                                                     <tr><td>2.4.2.11</td><td>Titel des Quittierenden<br /><i>Titolo del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="TitoloQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="NomeQuietanzante">
                                                                                     <tr><td>2.4.2.8</td><td>Name des Quittierenden<br /><i>Nome del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="NomeQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CognomeQuietanzante">
                                                                                     <tr><td>2.4.2.9</td><td>Nachname des Quittierenden<br /><i>Cognome del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="CognomeQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CFQuietanzante">
                                                                                     <tr><td>2.4.2.10</td><td>StNr. des Quittierenden<br /><i>CF del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="CFQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IstitutoFinanziario">
                                                                                     <tr><td>2.4.2.12</td><td>Finanzinstitut<br /><i>Istituto finanziario</i></td>
                                                                                          <td><span><xsl:value-of select="IstitutoFinanziario" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IBAN">
                                                                                     <tr><td>2.4.2.13</td><td>IBAN<br /><i>Codice IBAN</i></td>
                                                                                          <td><span><xsl:value-of select="IBAN" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="ABI">
                                                                                     <tr><td>2.4.2.14</td><td>ABI<br /><i>Codice ABI</i></td>
                                                                                          <td><span><xsl:value-of select="ABI" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CAB">
                                                                                     <tr><td>2.4.2.15</td><td>CAB<br /><i>Codice CAB</i></td>
                                                                                          <td><span><xsl:value-of select="CAB" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="BIC">
                                                                                     <tr><td>2.4.2.16</td><td>BIC<br /><i>Codice BIC</i></td>
                                                                                          <td><span><xsl:value-of select="BIC" /></span></td>
                                                                                          </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="ScontoPagamentoAnticipato">
                                                                                     <tr><td>2.4.2.17</td><td>Skonto für Zahlung vor Zahlungsziel<br /><i>Sconto per pagamento anticipato</i></td>
                                                                                          <td><span><xsl:value-of select="ScontoPagamentoAnticipato" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataLimitePagamentoAnticipato">
                                                                                     <tr><td>2.4.2.18</td><td>letzter Termin für Zahlung vor Zahlungsziel<br />
                                                                                          <i>Data limite per il pagamento anticipato</i></td>
                                                                                          <td><span><xsl:value-of select="DataLimitePagamentoAnticipato" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataLimitePagamentoAnticipato" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="PenalitaPagamentiRitardati">
                                                                                     <tr><td>2.4.2.19</td><td>Pönale für verspätete Zahlung<br /><i>Penale per ritardato pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="PenalitaPagamentiRitardati" /></span></td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataDecorrenzaPenale">
                                                                                     <tr><td>2.4.2.20</td><td>Beginndatum für Anwendung der Pönale<br /><i>Data di decorrenza della penale</i></td>
                                                                                          <td><span><xsl:value-of select="DataDecorrenzaPenale" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataDecorrenzaPenale" /></xsl:call-template></td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CodicePagamento">
                                                                                     <tr><td>2.4.2.21</td><td>Zahlungs-Kodex<br /><i>Codice pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="CodicePagamento" /></span></td></tr>
                                                                                </xsl:if>
                                                                           </table>
                                                                      </xsl:for-each>
                                                                 </xsl:if>
                                                            </xsl:for-each>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI PAGAMENTO-->

                                             <!--INIZIO ALLEGATI-->
                                             <xsl:if test="Allegati">
                                                  <div id="allegati"><h3>Daten zu den Anlagen - <i>Dati relativi agli allegati</i></h3><xsl:for-each select="Allegati">
                                                            <table id="t1">
                                                                 <xsl:if test="NomeAttachment">
                                                                      <tr><td width="70px">2.5.1</td><td width="170px">Name der Anlage<br /><i>Nome dell'allegato</i></td>
                                                                           <td width="364px"><span><xsl:value-of select="NomeAttachment" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="AlgoritmoCompressione">
                                                                      <tr><td>2.5.2</td><td>Kompressionsalgoritmus<br /><i>Algoritmo di compressione</i></td>
                                                                           <td><span><xsl:value-of select="AlgoritmoCompressione" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="FormatoAttachment">
                                                                      <tr><td>2.5.3</td><td>Format<br /><i>Formato</i></td>
                                                                           <td><span><xsl:value-of select="FormatoAttachment" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="DescrizioneAttachment">
                                                                      <tr><td>2.5.4</td>
                                                                           <td>Beschreibung<br /><i>Descrizione</i></td>
                                                                           <td><span><xsl:value-of select="DescrizioneAttachment" /></span></td></tr>
                                                                 </xsl:if>
                                                            </table>
                                                       </xsl:for-each>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE ALLEGATI-->

                                             <div class="footer"><xsl:value-of select="$VersionFT" /><br /><a href="http://www.fatturapa.gov.it">www.fatturapa.gov.it</a></div>
                                        </div>
                                   </xsl:for-each>
                                   <!--FINE BODY-->

                              </div>
                         </xsl:if>
                    </div>
               </body>
          </html>
     </xsl:template>
</xsl:stylesheet><?xml version="1.0"?>
<!-- copyleft: Ferdinand TAVERNINI WOBI-IPES Bozen/Bolzano -->
<!-- Versionsdatum: 2015-07-04 -->
<!-- Feedback erwünscht an info@ing-tavernini.com -->
<xsl:stylesheet 
     version="1.0" 
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:a="http://www.fatturapa.gov.it/sdi/fatturapa/v1.1">
     <xsl:output method="html" />
     <xsl:variable name="VersionFT" select="'Tabellenversion - Versione tabellare: 8.3 © 2015 Ferdinand TAVERNINI  GPLv3'" />
     <xsl:decimal-format name="euro" decimal-separator="," grouping-separator="." />

     <xsl:template name="CodiceUnivocoUfficio">
          <xsl:param name="kode" />
          <xsl:choose>
               <xsl:when test="$kode = 'U9CVVQ'" ><span><xsl:value-of select="$kode" /></span><br />Generaldirektion<br /><i>DIREZIONE GENERALE</i></xsl:when>
               <xsl:when test="$kode = '9G9VCD'" ><span><xsl:value-of select="$kode" /></span><br />Rechtsamt<br /><i>UFFICIO AFFARI LEGALI</i></xsl:when>
               <xsl:when test="$kode = 'D31MSA'" ><span><xsl:value-of select="$kode" /></span><br />EDV-Amt<br /><i>UFFICIO EDP</i></xsl:when>
               <xsl:when test="$kode = '0COHRW'" ><span><xsl:value-of select="$kode" /></span><br />Personal- und Organisationsamt<br /><i>UFFICIO PERSONALE ED ORGANIZZAZIONE</i></xsl:when>
               <xsl:when test="$kode = 'LSXW8L'" ><span><xsl:value-of select="$kode" /></span><br />Wohnungszuweisungund Mieter<br /><i>RIPARTIZIONE ALLOGGI ED INQUILINATO</i></xsl:when>
               <xsl:when test="$kode = 'RW81BN'" ><span><xsl:value-of select="$kode" /></span><br />Mieterservicestelle Bozen<br /><i>CENTRO SERVIZI ALL'INQUILINATO DI BOLZANO</i></xsl:when>
               <xsl:when test="$kode = 'GNXLXD'" ><span><xsl:value-of select="$kode" /></span><br />Mieterservicestelle Meran<br /><i>CENTRO SERVIZI ALL'INQUILINATO DI MERANO</i></xsl:when>
               <xsl:when test="$kode = 'GSRA1J'" ><span><xsl:value-of select="$kode" /></span><br />Mieterservicestelle Brixen<br /><i>CENTRO SERVIZI ALL'INQUILINATO DI BRESSANONE</i></xsl:when>
               <xsl:when test="$kode = '80WPE5'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Dienste<br /><i>RIPARTIZIONE SERVIZI TECNICI</i></xsl:when>
               <xsl:when test="$kode = 'NP7VMX'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt Mitte Süd<br /><i>UFFICIO TECNICO CENTRO SUD</i></xsl:when>
               <xsl:when test="$kode = 'KOJPJL'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt Ost<br /><i>UFFICIO TECNICO EST</i></xsl:when>
               <xsl:when test="$kode = '6ACTCE'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt West<br /><i>UFFICIO TECNICO OVEST</i></xsl:when>
               <xsl:when test="$kode = 'UAQVHQ'" ><span><xsl:value-of select="$kode" /></span><br />Amt für Buchhaltung, Bilanzen, Versicherung und Zahlungen<br /><i>UFFICIO CONTABILITA, BILANCI, ASSICURAZIONI E PAGAMENTI</i></xsl:when>
               <xsl:when test="$kode = '3PZ58V'" ><span><xsl:value-of select="$kode" /></span><br />Arbeitsgruppe für Vergabe, Verträge und Vermögen<br /><i>GRUPPO DI LAVORO APPALTI, CONTRATTI E PATRIMONIO</i></xsl:when>
               <xsl:when test="$kode = '00ROQ2'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt Instandhaltung<br /><i>UFFICIO TECNICO MANUTENZIONE</i></xsl:when>
               <xsl:when test="$kode = 'UFQKV2'" ><span><xsl:value-of select="$kode" /></span><br />Uff_eFatturaPA</xsl:when>

               <xsl:otherwise><span><xsl:value-of select="$kode" /></span></xsl:otherwise>
          </xsl:choose>
          <xsl:variable name="kodeSel" select="''" />
     </xsl:template>

     <xsl:template name="FormatDate">
          <xsl:param name="DateTime" />

          <xsl:variable name="year" select="substring($DateTime,1,4)" />
          <xsl:variable name="month" select="substring($DateTime,6,2)" />
          <xsl:variable name="day" select="substring($DateTime,9,2)" />

          <xsl:value-of select="' ('" />
          <xsl:value-of select="$day" />
          <xsl:value-of select="' '" />
          <xsl:choose>
               <xsl:when test="$month = '1' or $month = '01'">Jan./Gen.</xsl:when>
               <xsl:when test="$month = '2' or $month = '02'">Feb.</xsl:when>
               <xsl:when test="$month = '3' or $month = '03'">Mar.</xsl:when>
               <xsl:when test="$month = '4' or $month = '04'">Apr.</xsl:when>
               <xsl:when test="$month = '5' or $month = '05'">Mai/Mag.</xsl:when>
               <xsl:when test="$month = '6' or $month = '06'">Jun./Giu.</xsl:when>
               <xsl:when test="$month = '7' or $month = '07'">Jul./Lug.</xsl:when>
               <xsl:when test="$month = '8' or $month = '08'">Aug./Ago.</xsl:when>
               <xsl:when test="$month = '9' or $month = '09'">Sep./Set.</xsl:when>
               <xsl:when test="$month = '10'">Okt./Ott.</xsl:when>
               <xsl:when test="$month = '11'">Nov.</xsl:when>
               <xsl:when test="$month = '12'">Dez./Dic.</xsl:when>
               <xsl:otherwise><font color="red">Unbekannter Monat - <i>Mese non riconosciuto</i></font></xsl:otherwise>
          </xsl:choose>
          <xsl:value-of select="' '" />
          <xsl:value-of select="$year" />
          <xsl:variable name="time" select="substring($DateTime,12)" />
          <xsl:if test="$time != ''">
               <xsl:variable name="hh" select="substring($time,1,2)" />
               <xsl:variable name="mm" select="substring($time,4,2)" />
               <xsl:variable name="ss" select="substring($time,7,2)" />
               <xsl:value-of select="' '" />
               <xsl:value-of select="$hh" />
               <xsl:value-of select="':'" />
               <xsl:value-of select="$mm" />
               <xsl:value-of select="':'" />
               <xsl:value-of select="$ss" />
          </xsl:if>
          <xsl:value-of select="')'" />
     </xsl:template>
     <xsl:template match="/">
          <html>
               <head>
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <style type="text/css">
@media print  {  body { font-size: 7pt }
               h1 { font-size: 12pt; }
               h2 { font-size: 11pt; }
               h3 { font-size: 10pt; }
               h4 { font-size:  9pt; }
               h5 { font-size:  8pt; }
                                   }
@page print { size: A4 portrait; }

@media screen {  body { font-size: 10px }}
body { max-width: 643px; min-width: 640px; }

fattura-container { font-size: 8px; width: 80%; position: relative;}
{ font-family: sans-serif; margin-left: auto; margin-right: auto; padding: 0; }
.version { font-size: 8px; float:right; color: #777777; }
h1 { padding: 5px 0 0 0; margin: 0; font-size: 22px; }
h2 { padding: 5px 0 0 0; margin: 0; font-size: 18px; }
h3 { padding: 5px 0 0 0; margin: 0; font-size: 15px; }
h4 { padding: 5px 0 0 0; margin: 0; font-size: 12px; }
h5 { padding: 5px 0 0 0; margin: 0; font-size: 10px; font-style: italic; }
ul { list-style-type: none; margin: 0 !important; padding: 15px 0 0 40px !important; }
ul li {}
span { font-weight: bold; }
fehler {color: red; text-decoration:blink; }
div { padding: 0; margin: 0; }
div.page {
background-color: #fff !important;
position: relative;
margin: 5px 0 5px 0;
padding: 5px;
background: -moz-linear-gradient(0% 0 360deg, #FFFFFF, #F2F2F2 20%, #FFFFFF) repeat scroll 0 0 transparent;
border: 1px solid #CCCCCC;
-webkitbox-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
-mozbox-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
background: url('logo_sdi_trasparente.jpg') 98% 50px no-repeat;
}
table {table-layout:fixed; width:630px;}
table td {overflow: hidden;}
table, td, th { border: 1px solid black; border-collapse: collapse;}
#t1 td, #t1 th { border: none; }
#ti td { color: #000000; background-color: #EAF2D3;}
th, td { padding: 2px;}
div.footer { padding: 10px 0 0 0; margin: 0; font-size: 10px; text-align: center; color: #777777; }
tr:nth-of-type(even){background-color: #F3F3F3;}
tr:nth-of-type(odd) {background-color:#ddd;}
th {background-color:#0f0f0f; color: #fafafa;}</style>
               </head>
               <body>
                    <div id="fattura-container">
                         <!--INIZIO DATI HEADER-->
                         <xsl:if test="a:FatturaElettronica">
                              <div id="fattura-elettronica"><h1>Italienische elektronische Rechnung<br /><i>FATTURA ELETTRONICA</i></h1><xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader">
                                        <div class="page">
                                             <div class="version">Version <xsl:value-of select="a:FatturaElettronica/@versione"/></div>
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/DatiTrasmissione">
                                                  <!--INIZIO DATI DELLA TRASMISSIONE-->
                                                  <div id="dati-trasmissione"><h3>Daten zur Übertragung - <i>Dati relativi alla trasmissione</i></h3><table id="t1">
                                                            <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/DatiTrasmissione">
                                                                 <xsl:if test="IdTrasmittente or ProgressivoInvio or FormatoTrasmissione">
                                                                      <tr><td width="70px">1.1.[3|1|2]</td>
                                                                           <td width="170px">Übertragungskennung<br /><i>Ident. di trasmissione</i></td>
                                                                                <td width="364px"><span>
                                                                                <xsl:if test="FormatoTrasmissione"><xsl:value-of select="FormatoTrasmissione" />:</xsl:if>
                                                                                <xsl:if test="IdTrasmittente"><xsl:value-of select="IdTrasmittente/IdPaese" /><xsl:value-of select="IdTrasmittente/IdCodice" />_</xsl:if>
                                                                                <xsl:if test="ProgressivoInvio"><xsl:value-of select="ProgressivoInvio" /></xsl:if>
                                                                                </span></td></tr>
                                                                           </xsl:if>
                                                                 <!--
                                                                 <xsl:if test="IdTrasmittente">
                                                                      <tr><td width="70px">1.1.1</td>
                                                                           <td width="170px">Steuernummer des Senders<br /><i>Ident. del trasmittente</i></td>
                                                                           <td width="364px"><span><xsl:value-of select="IdTrasmittente/IdPaese" /><xsl:value-of select="IdTrasmittente/IdCodice" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="ProgressivoInvio">
                                                                      <tr><td>1.1.2</td>
                                                                           <td>Übertragung Nr.<br /><i>Progressivo di invio</i></td>
                                                                           <td><span><xsl:value-of select="ProgressivoInvio" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="FormatoTrasmissione">
                                                                      <tr><td>1.1.3</td>
                                                                           <td>Übertragungsformat<br /><i>Formato Trasmissione</i></td>
                                                                           <td><span><xsl:value-of select="FormatoTrasmissione" /></span></td></tr>
                                                                 </xsl:if>
                                                                 -->
                                                                 <xsl:if test="CodiceDestinatario">
                                                                      <tr><td>1.1.4</td><td>Kodex der öff. Verwal.<br /><i>Cod. Amministra. destina.</i></td>
                                                                           <td><xsl:call-template name="CodiceUnivocoUfficio"><xsl:with-param name="kode" select="CodiceDestinatario" /></xsl:call-template></td>
                                                                      </tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="ContattiTrasmittente/Telefono">
                                                                      <tr><td>1.1.5.1</td><td>Telefonnummer Sender<br /><i>Telefono del trasmittente</i></td>
                                                                           <td><span><xsl:value-of select="ContattiTrasmittente/Telefono" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="ContattiTrasmittente/Email">
                                                                      <tr><td>1.1.5.2</td><td>E-Mail des Senders<br /><i>E-mail del trasmittente</i></td>
                                                                           <td><span><xsl:value-of select="ContattiTrasmittente/Email" /></span></td></tr>
                                                                 </xsl:if>
                                                            </xsl:for-each>
                                                       </table>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI DELLA TRASMISSIONE-->

                                             <!--INIZIO DATI CEDENTE PRESTATORE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore">
                                                  <div id="cedente">
                                                       <h3>Daten zum Lieferanten/Freiberufler - <i>Dati del cedente/prestatore</i></h3>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/DatiAnagrafici">
                                                            <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/DatiAnagrafici">

                                                                      <!--
                                                                      <xsl:if test="Anagrafica/Denominazione">
                                                                           <tr><td width="70px">1.2.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td></tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Titolo">
                                                                           <tr><td>1.2.1.3.4</td><td>Titel<br /><i>Titolo</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td></tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Nome">
                                                                           <tr><td width="70px">1.2.1.3.2</td><td width="170px">Name<br /><i>Nome</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Cognome">
                                                                           <tr><td>1.2.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="Anagrafica/Denominazione or Anagrafica/Nome">
                                                                           <tr><td width="70px">1.2.1.[1|4|2|3]</td><td width="170px">Benennung<br /><i>Nominativo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" />&#160;<xsl:value-of select="Anagrafica/Titolo" />&#160;<xsl:value-of select="Anagrafica/Nome" />&#160;<xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>


                                                                      <xsl:if test="Anagrafica/CodEORI">
                                                                           <tr><td>1.2.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      <!--

                                                                      <xsl:if test="AlboProfessionale">
                                                                           <tr><td>1.2.1.4</td><td>Zugehörigkeit Berufsalbum<br /><i>Albo professionale di appartenenza</i></td>
                                                                                <td><span><xsl:value-of select="AlboProfessionale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="ProvinciaAlbo">
                                                                           <tr><td>1.2.1.5</td><td>Berufsalbum der Provinz<br /><i>Provincia di competenza dell'Albo</i></td>
                                                                                <td><span><xsl:value-of select="ProvinciaAlbo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroIscrizioneAlbo">
                                                                           <tr><td>1.2.1.6</td><td>Einschreibungsnummer im Berufsalbum<br /><i>Numero iscrizione all'Albo</i></td>
                                                                                <td><span><xsl:value-of select="NumeroIscrizioneAlbo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DataIscrizioneAlbo">
                                                                           <tr><td>1.2.1.7</td><td>Datum der Einschreibung<br /><i>Data iscrizione all'Albo</i></td>
                                                                                <td><span><xsl:value-of select="DataIscrizioneAlbo" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataIscrizioneAlbo" /></xsl:call-template></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      -->

                                                                      <xsl:if test="AlboProfessionale or ProvinciaAlbo or NumeroIscrizioneAlbo or DataIscrizioneAlbo">
                                                                           <tr><td>1.2.1.[4|5|6|7]</td><td>Zugehörigkeit Berufsalbum<br /><i>Albo professionale di appartenenza</i></td>
                                                                                <td><span><xsl:value-of select="AlboProfessionale" />&#160;<xsl:value-of select="ProvinciaAlbo" />&#160;<xsl:value-of select="NumeroIscrizioneAlbo" /></span><xsl:if test="DataIscrizioneAlbo">&#160;<span><xsl:value-of select="DataIscrizioneAlbo" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataIscrizioneAlbo" /></xsl:call-template></xsl:if></td>
                                                                           </tr>
                                                                      </xsl:if>


                                                                      <xsl:if test="IdFiscaleIVA">
                                                                           <tr><td>1.2.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CodiceFiscale">
                                                                           <tr><td>1.2.1.2</td><td>Steuernummer<br /><i>Codice fiscale</i></td>
                                                                                <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="RegimeFiscale">
                                                                           <tr><td>1.2.1.8</td><td>Steuersystem<br /><i>Regime fiscale</i></td>
                                                                                <td><span><xsl:value-of select="RegimeFiscale" /></span>
                                                                                <xsl:variable name="RF"><xsl:value-of select="RegimeFiscale" /></xsl:variable>
                                                                                <xsl:choose>
                                                                                     <xsl:when test="$RF='RF01'"> (ordinario)</xsl:when>
                                                                                     <xsl:when test="$RF='RF02'"> (contribuenti minimi)</xsl:when>
                                                                                     <xsl:when test="$RF='RF03'"> (nuove iniziative produttive)</xsl:when>
                                                                                     <xsl:when test="$RF='RF04'"> (agricoltura e attività connesse e pesca)</xsl:when>
                                                                                     <xsl:when test="$RF='RF05'"> (vendita sali e tabacchi)</xsl:when>
                                                                                     <xsl:when test="$RF='RF06'"> (commercio fiammiferi)</xsl:when>
                                                                                     <xsl:when test="$RF='RF07'"> (editoria)</xsl:when>
                                                                                     <xsl:when test="$RF='RF08'"> (gestione servizi telefonia pubblica)</xsl:when>
                                                                                     <xsl:when test="$RF='RF09'"> (rivendita documenti di trasporto pubblico e di sosta)</xsl:when>
                                                                                     <xsl:when test="$RF='RF10'"> (intrattenimenti, giochi e altre attività di cui alla tariffa allegata al DPR 640/72)</xsl:when>
                                                                                     <xsl:when test="$RF='RF11'"> (agenzie viaggi e turismo)</xsl:when>
                                                                                     <xsl:when test="$RF='RF12'"> (agriturismo)</xsl:when>
                                                                                     <xsl:when test="$RF='RF13'"> (vendite a domicilio)</xsl:when>
                                                                                     <xsl:when test="$RF='RF14'"> (rivendita beni usati, oggetti d’arte, d’antiquariato o da collezione)</xsl:when>
                                                                                     <xsl:when test="$RF='RF15'"> (agenzie di vendite all’asta di oggetti d’arte, antiquariato o da collezione)</xsl:when>
                                                                                     <xsl:when test="$RF='RF16'"> (IVA per cassa P.A.)</xsl:when>
                                                                                     <xsl:when test="$RF='RF17'"> (IVA per cassa - art. 32-bis, D.L. 83/2012)</xsl:when>
                                                                                     <xsl:when test="$RF='RF19'"> (Regime forfettario)</xsl:when>
                                                                                     <xsl:when test="$RF='RF18'"> (altro)</xsl:when>
                                                                                     <xsl:when test="$RF=''"></xsl:when>
                                                                                     <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                </xsl:choose>
                                                                                </td></tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/Sede">
                                                            <h4>Firmensitz - <i>Dati della sede</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/Sede">
                                                                 <!--
                                                                      <xsl:if test="Indirizzo">
                                                                           <tr><td width="70px">1.2.2.1</td><td width="170px">Anschrift<br /><i>Indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroCivico">
                                                                           <tr><td>1.2.2.2</td><td>Hausnummer<br /><i>Numero civico</i></td>
                                                                                <td><span><xsl:value-of select="NumeroCivico" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CAP">
                                                                           <tr><td>1.2.2.3</td><td>PLZ<br /><i>CAP</i></td>
                                                                                <td><span><xsl:value-of select="CAP" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Comune">
                                                                           <tr><td>1.2.2.4</td><td>Gemeinde<br /><i>Comune</i></td>
                                                                                <td><span><xsl:value-of select="Comune" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Provincia">
                                                                           <tr><td>1.2.2.5</td><td>Provinz<br /><i>Provincia</i></td>
                                                                                <td><span><xsl:value-of select="Provincia" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Nazione">
                                                                           <tr><td>1.2.2.6</td><td>Land<br /><i>Nazione</i></td>
                                                                                <td><span><xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 -->

                                                                      <xsl:if test="Indirizzo or NumeroCivico or CAP or Comune or Provincia or Nazione">
                                                                           <tr><td width="70px">1.2.2.[1|2|3|4|5|6]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" />&#160;<xsl:value-of select="NumeroCivico" /><br /><xsl:value-of select="CAP" />&#160;<xsl:value-of select="Comune" />&#160;<xsl:value-of select="Provincia" />&#160;<xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>

                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/StabileOrganizzazione">
                                                            <h4>Daten der Organisation - <i>Dati della stabile organizzazione</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/StabileOrganizzazione">

                                                                      <!--
                                                                      <xsl:if test="Indirizzo">
                                                                           <tr><td width="70px">1.2.3.1</td><td width="170px">Anschrift<br /><i>Indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroCivico">
                                                                           <tr><td>1.2.3.2</td><td>Hausnummer<br /><i>Numero civico</i></td>
                                                                                <td><span><xsl:value-of select="NumeroCivico" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CAP">
                                                                           <tr><td>1.2.3.3</td><td>PLZ<br /><i>CAP</i></td>
                                                                                <td><span><xsl:value-of select="CAP" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Comune">
                                                                           <tr><td>1.2.3.4</td><td>Gemeinde<br /><i>Comune</i></td>
                                                                                <td><span><xsl:value-of select="Comune" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Provincia">
                                                                           <tr><td>1.2.3.5</td><td>Provinz<br /><i>Provincia</i></td>
                                                                                <td><span><xsl:value-of select="Provincia" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Nazione">
                                                                           <tr><td>1.2.3.6</td><td>Land<br /><i>Nazione</i></td>
                                                                                <td><span><xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 -->

                                                                      <xsl:if test="Indirizzo or NumeroCivico or CAP or Comune or Provincia or Nazione">
                                                                           <tr><td width="70px">1.2.3.[1|2|3|4|5]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" />&#160;<xsl:value-of select="NumeroCivico" /><br /><xsl:value-of select="CAP" />&#160;<xsl:value-of select="Comune" />&#160;<xsl:value-of select="Provincia" />&#160;<xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>

                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/IscrizioneREA">
                                                            <h4>Handelsregistereintragung - <i>Dati di iscrizione nel registro delle imprese</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/IscrizioneREA">
                                                                      <xsl:if test="Ufficio">
                                                                           <tr><td width="70px">1.2.4.1</td><td width="170px">Handelsregister der Provinz<br /><i>Uff. Reg. Imp. Provinciale</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Ufficio" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroREA">
                                                                           <tr><td>1.2.4.2</td><td>Eintragungsnummer<br /><i>Numero di iscrizione</i></td>
                                                                                <td><span><xsl:value-of select="NumeroREA" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CapitaleSociale">
                                                                           <tr><td>1.2.4.3</td><td>Handelskapital<br /><i>Capitale sociale</i></td>
                                                                                <td><span><xsl:value-of select="CapitaleSociale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="SocioUnico">
                                                                           <tr><td>1.2.4.4</td><td>Anzahl Gesellschafter<br /><i>Numero soci</i></td>
                                                                                <td><span><xsl:value-of select="SocioUnico" /></span>
                                                                                <xsl:variable name="NS"><xsl:value-of select="SocioUnico" /></xsl:variable>
                                                                                <xsl:choose>
                                                                                     <xsl:when test="$NS='SU'"> (Einzelgesellschafter)<i>(socio unico)</i></xsl:when>
                                                                                     <xsl:when test="$NS='SM'"> (mehrere Gesellschafter)<i>(più soci)</i></xsl:when>
                                                                                     <xsl:when test="$NS=''"></xsl:when>
                                                                                     <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="StatoLiquidazione">
                                                                           <tr><td>1.2.4.5</td><td>Auflösung<br /><i>Stato di liquidazione</i></td>
                                                                                <td><span><xsl:value-of select="StatoLiquidazione" /></span><xsl:variable name="SL"><xsl:value-of select="StatoLiquidazione" /></xsl:variable>
                                                                                <xsl:choose>
                                                                                     <xsl:when test="$SL='LS'"> (in Auflösung)<i>(in liquidazione)</i></xsl:when>
                                                                                     <xsl:when test="$SL='LN'"> (nicht in Auflösung)<i>(non in liquidazione)</i></xsl:when>
                                                                                     <xsl:when test="$SL=''"></xsl:when>
                                                                                     <xsl:otherwise><fehler>(!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>

                                                       <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/Contatti">
                                                            <xsl:if test="Telefono or Fax or Email">
                                                                 <h4>Adresse - <i>Recapiti</i></h4>
                                                                 <table id="t1">
                                                                      <xsl:if test="Telefono">
                                                                           <tr><td width="70px">1.2.5.1</td><td width="170px">Telefon<br /><i>Telefono</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Telefono" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Fax">
                                                                           <tr><td width="70px">1.2.5.2</td><td width="170px">FAX<br /><i>Fax</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Fax" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Email">
                                                                           <tr><td width="70px">1.2.5.3</td><td width="170px">E-Mail<br /><i>E-mail</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Email" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </xsl:if>
                                                       </xsl:for-each>

                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/RiferimentoAmministrazione">
                                                            <h4>Verwaltungsreferenz - <i>Riferimento amministrativo</i></h4>
                                                                 <table id="t1">
                                                                      <tr><td width="70px">1.2.6</td><td width="170px">Referenz<br /><i>Riferimento</i></td> 
                                                                           <td width="364px"><span><xsl:value-of select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/RiferimentoAmministrazione" /></span></td>
                                                                      </tr>
                                                                 </table>
                                                       </xsl:if>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI CEDENTE PRESTATORE-->

                                             <!--INIZIO DATI RAPPRESENTANTE FISCALE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/RappresentanteFiscale">
                                                  <div id="rappresentante-fiscale">
                                                       <h3>Daten des Vertreters für Steuerfragen für Dienstleisters / Lieferanten<br /><i>Dati del rappresentante fiscale del cedente / prestatore</i></h3>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/RappresentanteFiscale/DatiAnagrafici">
                                                            <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/RappresentanteFiscale/DatiAnagrafici">
                                                                      <xsl:if test="IdFiscaleIVA">
                                                                           <tr><td width="70px">1.3.1.1</td><td width="170px">Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /></span></td>
                                                                                </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CodiceFiscale">
                                                                           <tr><td>1.3.1.2</td><td>Steuernummer<br /><i>Codice fiscale</i></td>
                                                                                <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                                </tr>
                                                                      </xsl:if>

                                                                      <!--

                                                                      <xsl:if test="Anagrafica/Denominazione">
                                                                           <tr><td>1.3.1.3.1</td><td>Benennung<br /><i>Denominazione</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Titolo">
                                                                           <tr><td>1.3.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Nome">
                                                                           <tr><td>1.3.1.3.2</td><td>Name<br /><i>Nome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Cognome">
                                                                           <tr><td>1.3.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                 -->

                                                                      <xsl:if test="Anagrafica/Denominazione or Anagrafica/Titolo or Anagrafica/Nome or Anagrafica/Cognome">
                                                                           <tr><td width="70px">1.3.1.3.[1|4|2|3]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" />&#160;<xsl:value-of select="Anagrafica/Titolo" /><xsl:value-of select="Anagrafica/Nome" />&#160;<xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      <xsl:if test="Anagrafica/CodEORI">
                                                                           <tr><td>1.3.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI RAPPRESENTANTE FISCALE-->

                                             <!--INIZIO DATI CESSIONARIO COMMITTENTE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente">
                                                  <div id="cessionario">
                                                       <h3>Daten des Rechnungsempfängers - <i>Dati del cessionario / committente</i></h3>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/DatiAnagrafici">
                                                            <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/DatiAnagrafici">

                                                                      <!--
                                                                      <xsl:if test="Anagrafica/Denominazione">
                                                                           <tr><td width="70px">1.4.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Titolo">
                                                                           <tr><td>1.4.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Nome">
                                                                           <tr><td>1.4.1.3.2</td><td>Name<br /><i>Nome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Cognome">
                                                                           <tr><td>1.4.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="Anagrafica/Denominazione or Anagrafica/Titolo or Anagrafica/Nome or Anagrafica/Cognome">
                                                                           <tr><td width="70px">1.4.1.3.[1|4|2|3]</td><td width="170px">Benennung<br /><i>denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" />&#160;<xsl:value-of select="Anagrafica/Titolo" /><xsl:value-of select="Anagrafica/Nome" />&#160;<xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="IdFiscaleIVA">
                                                                           <tr><td>1.4.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /> </span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CodiceFiscale">
                                                                           <tr><td>1.4.1.2</td><td>Steuernummer<br /><i>Codice Fiscale</i></td>
                                                                                <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/CodEORI">
                                                                           <tr><td>1.4.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/Sede">
                                                            <h4>Firmensitz - <i>Dati della sede</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/Sede">

                                                                      <!--
                                                                      <xsl:if test="Indirizzo">
                                                                           <tr><td width="70px">1.4.2.1</td><td width="170px">Anschrift<br /><i>Indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroCivico">
                                                                           <tr><td>1.4.2.2</td><td>Hausnummer<br /><i>Numero civico</i></td>
                                                                                <td><span><xsl:value-of select="NumeroCivico" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CAP">
                                                                           <tr><td>1.4.2.3</td><td>PLZ<br /><i>CAP</i></td>
                                                                                <td><span><xsl:value-of select="CAP" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Comune">
                                                                           <tr><td>1.4.2.4</td><td>Gemeinde<br /><i>Comune</i></td>
                                                                                <td><span><xsl:value-of select="Comune" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Provincia">
                                                                           <tr><td>1.4.2.5</td><td>Provinz<br /><i>Provincia</i></td>
                                                                                <td><span><xsl:value-of select="Provincia" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Nazione">
                                                                           <tr><td>1.4.2.6</td><td>Land<br /><i>Nazione</i></td>
                                                                                <td><span><xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="Indirizzo or NumeroCivico or CAP or Comune or Provincia or Nazione">
                                                                           <tr><td width="70px">1.4.2.[1|2|3|4|5|6]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" />&#160;<xsl:value-of select="NumeroCivico" /><br /> <xsl:value-of select="CAP" />&#160;<xsl:value-of select="Comune" />&#160;<xsl:value-of select="Provincia" /> &#160;<xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>



                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI CESSIONARIO COMMITTENTE-->

                                             <!--INIZIO DATI TERZO INTERMEDIARIO SOGGETTO EMITTENTE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/TerzoIntermediarioOSoggettoEmittente">
                                                  <div id="terzointermediario">

                                                       <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/TerzoIntermediarioOSoggettoEmittente">
                                                            <h3>Daten des Vermittlers des Emittenten - <i>Dati del terzo intermediario soggetto emittente</i></h3>

                                                            <xsl:if test="DatiAnagrafici">
                                                                 <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                                 <table id="t1">

                                                                      <!--
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Denominazione">
                                                                           <tr><td width="70px">1.5.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Denominazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Titolo">
                                                                           <tr><td>1.5.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Titolo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Nome">
                                                                           <tr><td>1.5.1.3.2</td><td>Name<br /><i>Nome</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Cognome">
                                                                           <tr><td>1.5.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Denominazione or DatiAnagrafici/Anagrafica/Titolo or DatiAnagrafici/Anagrafica/Nome or DatiAnagrafici/Anagrafica/Cognome">
                                                                           <tr><td width="70px">1.5.1.3.[1|4|2|3]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Denominazione" />&#160;<xsl:value-of select="DatiAnagrafici/Anagrafica/Titolo" />&#160;<xsl:value-of select="DatiAnagrafici/Anagrafica/Nome" /> &#160;<xsl:value-of select="DatiAnagrafici/Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>


                                                                      <xsl:if test="DatiAnagrafici/IdFiscaleIVA">
                                                                           <tr><td>1.5.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/IdFiscaleIVA/IdPaese" /><xsl:value-of select="DatiAnagrafici/IdFiscaleIVA/IdCodice" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/CodiceFiscale">
                                                                           <tr><td>1.5.1.2</td><td>Steuernummer<br /><i>Codice Fiscale</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/CodiceFiscale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/CodEORI">
                                                                           <tr><td>1.5.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </xsl:if>
                                                       </xsl:for-each>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI TERZO INTERMEDIARIO SOGGETTO EMITTENTE-->

                                             <!--INIZIO DATI SOGGETTO EMITTENTE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/SoggettoEmittente">
                                                  <div id="soggetto-emittente">
                                                       <h3>Rechnungsersteller - <i>Soggetto emittente la fattura</i></h3>
                                                       <table id="t1">
                                                            <tr><td width="70px">1.6</td><td width="170px">Austeller<br /><i>Soggetto emittente</i></td>
                                                            <td width="364px"><span><xsl:value-of select="a:FatturaElettronica/FatturaElettronicaHeader/SoggettoEmittente" /> </span><xsl:variable name="SC"><xsl:value-of select="a:FatturaElettronica/FatturaElettronicaHeader/SoggettoEmittente" /> </xsl:variable>
                                                                 <xsl:choose>
                                                                      <xsl:when test="$SC='CC'"> (Rechnungssteller)<i>(cessionario/committente)</i></xsl:when>
                                                                      <xsl:when test="$SC='TZ'"> (dritter)<i>(terzo)</i></xsl:when>
                                                                      <xsl:when test="$SC=''"></xsl:when>
                                                                      <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                 </xsl:choose></td>
                                                            </tr>
                                                       </table>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI SOGGETTO EMITTENTE-->

                                             <div class="footer"><xsl:value-of select="$VersionFT" /><br /><a href="http://www.fatturapa.gov.it">www.fatturapa.gov.it</a></div>
                                        </div>
                                   </xsl:if>
                                   <!--FINE DATI HEADER-->

                                   <!--INIZIO DATI BODY-->

                                   <xsl:variable name="TOTALBODY">
                                        <xsl:value-of select="count(a:FatturaElettronica/FatturaElettronicaBody)" />
                                   </xsl:variable>

                                   <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaBody">
                                        <xsl:if test="$TOTALBODY>1">
                                             <h2>Dokument Nummer <i>Numero documento nel lotto</i>:<xsl:value-of select="position()" /></h2>
                                        </xsl:if>

                                        <div class="page">
                                             <div class="version">Version <xsl:value-of select="../@versione"/></div>

                                             <xsl:variable name="Valuta" select="DatiGenerali/DatiGeneraliDocumento/Divisa" />

                                             <xsl:if test="DatiGenerali">
                                                  <!--INIZIO DATI GENERALI-->
                                                  <div id="dati-generali">

                                                       <xsl:if test="DatiGenerali/DatiGeneraliDocumento">

                                                            <!--INIZIO DATI GENERALI DOCUMENTO-->
                                                            <div id="dati-generali-documento">
                                                                 <h3>Generelle Rechnungssdaten - <i>Dati generali del documento</i></h3>

                                                                 <table id="t1">
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/TipoDocumento">
                                                                           <tr><td width="70px">2.1.1.[2|1]</td><td width="170px">Währung : Dokumententyp<br /><i>Valuta : Tipologia doc.</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="$Valuta" />&#160;:&#160;<xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </span><xsl:variable name="TD"><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </xsl:variable>
                                                                                          <xsl:choose>
                                                                                               <xsl:when test="$TD='TD01'"> (Rechnung)<i>(fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD02'"> (Accontorechnung)<i>(acconto/anticipo su fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD03'"> (Accontohonorar)<i>(acconto/anticipo su parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD04'"> (Gutschrift)<i>(nota di credito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD05'"> (Lastschrift)<i>(nota di debito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD06'"> (Honorarnote)<i>(parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD=''"></xsl:when>
                                                                                               <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                          </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      <!--
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/TipoDocumento">
                                                                           <tr><td width="70px">2.1.1.1</td><td width="170px">Dokumententyp<br /><i>Tipologia documento</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </span><xsl:variable name="TD"><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </xsl:variable>
                                                                                          <xsl:choose>
                                                                                               <xsl:when test="$TD='TD01'"> (Rechnung)<i>(fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD02'"> (Accontorechnung)<i>(acconto/anticipo su fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD03'"> (Accontohonorar)<i>(acconto/anticipo su parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD04'"> (Gutschrift)<i>(nota di credito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD05'"> (Lastschrift)<i>(nota di debito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD06'"> (Honorarnote)<i>(parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD=''"></xsl:when>
                                                                                               <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                          </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                           <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Divisa">
                                                                           <tr><td>2.1.1.2</td><td>Währung<br /><i>Valuta importi</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Divisa" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Data">
                                                                           <tr><td>2.1.1.[4|3]</td><td>Dok.-nummer und -datum<br /><i>Numero e data doc.</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Numero" />&#160;-&#160;<xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DatiGenerali/DatiGeneraliDocumento/Data" /></xsl:call-template>
                                                                           </td></tr>
                                                                      </xsl:if>


                                                                      <!--
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Data">
                                                                           <tr><td>2.1.1.3</td><td>Dokumentdatum<br /><i>Data documento</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DatiGenerali/DatiGeneraliDocumento/Data" /></xsl:call-template>
                                                                           </td></tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Numero">
                                                                           <tr><td>2.1.1.4</td><td>Dokumentennummer<br /><i>Numero documento</i></td>
                                                                                <td><span>
                                                                                     <xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Numero" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/ImportoTotaleDocumento">
                                                                           <tr><td>2.1.1.9</td><td>Gesamtbetrag Dokument<br /><i>Importo totale documento</i></td>
                                                                                <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:variable name="ITD" select="DatiGenerali/DatiGeneraliDocumento/ImportoTotaleDocumento" /><xsl:value-of select="format-number($ITD, '###.##0,00', 'euro')" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Arrotondamento">
                                                                           <tr><td>2.1.1.10</td><td>Rundung auf dem Gesamtbetrag<br /><i>Arrotondamento su Importo totale documento</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Arrotondamento" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/Causale">
                                                                           <tr><td>2.1.1.11</td><td>Grund<br /><i>Causale</i></td>
                                                                                <td><span><xsl:value-of select="current()" /></span></td>
                                                                           </tr>
                                                                      </xsl:for-each>
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Art73">
                                                                           <tr><td>2.1.1.12</td><td colspan="2">Art. 73 DPR 633/72</td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Art73" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>

                                                                 <!--INIZIO DATI DELLA RITENUTA-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/DatiRitenuta">
                                                                      <div id="dati-ritenuta">
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/DatiRitenuta">
                                                                                <h4>Einbehalte - <i>Ritenuta</i></h4>
                                                                                <table id="t1">
                                                                                     <xsl:if test="TipoRitenuta">
                                                                                          <tr><td width="70px">2.1.1.5.1</td><td width="170px">Art des Einbehaltes<br /><i>Tipologia ritenuta</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="TipoRitenuta" /></span><xsl:variable name="TR"><xsl:value-of select="TipoRitenuta" /></xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$TR='RT01'"> (ritenuta persone fisiche)</xsl:when>
                                                                                                    <xsl:when test="$TR='RT02'"> (ritenuta persone giuridiche)</xsl:when>
                                                                                                    <xsl:when test="$TR=''"></xsl:when>
                                                                                                    <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose>
                                                                                          </td></tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImportoRitenuta">
                                                                                          <tr><td>2.1.1.5.2</td><td>Einbehaltener Betrag<br /><i>Importo ritenuta</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoRitenuta, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="AliquotaRitenuta">
                                                                                          <tr><td>2.1.1.5.3</td><td>Einbehaltsatz<br /><i>Aliquota ritenuta (%)</i></td>
                                                                                               <td><span><xsl:value-of select="format-number(AliquotaRitenuta, '###')" /> %</span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="CausalePagamento">
                                                                                          <tr><td>2.1.1.5.4</td><td>Zahlungsgrund<br /><i>Causale di pagamento</i></td>
                                                                                               <td><span><xsl:value-of select="CausalePagamento" /></span><xsl:variable name="CP"><xsl:value-of select="CausalePagamento" /></xsl:variable><xsl:if test="$CP!=''"> (Kodex nach Modell 770S)<i>(decodifica come da modello 770S)</i></xsl:if></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI DELLA RITENUTA-->

                                                                 <!--INIZIO DATI DEL BOLLO-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/DatiBollo">
                                                                      <div id="dati-bollo">
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/DatiBollo">
                                                                                <h4>Stempelwert - <i>Bollo</i></h4>
                                                                                <table id="t1">
                                                                                     <xsl:if test="BolloVirtuale">
                                                                                          <tr><td width="70px">2.1.1.6.1</td><td width="170px">Virtueller Stempelwert<br /><i>Bollo virtuale</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="BolloVirtuale" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImportoBollo">
                                                                                          <tr><td>2.1.1.6.2</td><td>Betrag Stempelwert<br /><i>Importo bollo</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoBollo, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI DEL BOLLO-->

                                                                 <!--INIZIO DATI DELLA CASSA PREVIDENZIALE-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/DatiCassaPrevidenziale">
                                                                      <div id="dati-cassa-previdenziale">
                                                                           <h4>Fürsorgekasse - <i>Cassa previdenziale</i></h4>
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/DatiCassaPrevidenziale">
                                                                                <table id="t1">
                                                                                     <xsl:if test="TipoCassa">
                                                                                          <tr><td width="70px">2.1.1.7.1</td><td width="170px">Fürsorgekasse<br /><i>Cassa previdenziale</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="TipoCassa" /></span><xsl:variable name="TC"><xsl:value-of select="TipoCassa" />
                                                                                               </xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$TC='TC01'"> (Cassa Nazionale Previdenza e Assistenza Avvocati e Procuratori legali)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC02'"> (Cassa Previdenza Dottori Commercialisti)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC03'"> (Cassa Previdenza e Assistenza Geometri)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC04'"> (Cassa Nazionale Previdenza e Assistenza Ingegneri e Architetti liberi profess.)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC05'"> (Cassa Nazionale del Notariato)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC06'"> (Cassa Nazionale Previdenza e Assistenza Ragionieri e Periti commerciali)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC07'"> (Ente Nazionale Assistenza Agenti e Rappresentanti di Commercio-ENASARCO)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC08'"> (Ente Nazionale Previdenza e Assistenza Consulenti del Lavoro-ENPACL)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC09'"> (Ente Nazionale Previdenza e Assistenza Medici-ENPAM)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC10'"> (Ente Nazionale Previdenza e Assistenza Farmacisti-ENPAF)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC11'"> (Ente Nazionale Previdenza e Assistenza Veterinari-ENPAV)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC12'"> (Ente Nazionale Previdenza e Assistenza Impiegati dell'Agricoltura-ENPAIA)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC13'"> (Fondo Previdenza Impiegati Imprese di Spedizione e Agenzie Marittime)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC14'"> (Istituto Nazionale Previdenza Giornalisti Italiani-INPGI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC15'"> (Opera Nazionale Assistenza Orfani Sanitari Italiani-ONAOSI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC16'"> (Cassa Autonoma Assistenza Integrativa Giornalisti Italiani-CASAGIT)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC17'"> (Ente Previdenza Periti Industriali e Periti Industriali Laureati-EPPI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC18'"> (Ente Previdenza e Assistenza Pluricategoriale-EPAP)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC19'"> (Ente Nazionale Previdenza e Assistenza Biologi-ENPAB)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC20'"> (Ente Nazionale Previdenza e Assistenza Professione Infermieristica-ENPAPI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC21'"> (Ente Nazionale Previdenza e Assistenza Psicologi-ENPAP)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC22'"> (INPS)</xsl:when>
                                                                                                    <xsl:when test="$TC=''"></xsl:when>
                                                                                                    <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImponibileCassa">
                                                                                          <tr><td>2.1.1.7.4</td><td>Grundlage Fürsorgebeitrag<br /><i>Imponibile previdenziale</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImponibileCassa, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="AlCassa">
                                                                                          <tr><td>2.1.1.7.2</td><td>Fürsorgebeitragssatz (%)<br /><i>Aliquota contri. cassa (%)</i></td>
                                                                                               <td><span><xsl:value-of select="format-number(AlCassa, '###')" /> %</span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImportoContributoCassa">
                                                                                          <tr><td>2.1.1.7.3</td><td>Fürsorgebeitrag<br /><i>Importo contributo cassa</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoContributoCassa, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="AliquotaIVA">
                                                                                          <tr><td>2.1.1.7.5</td><td>MwSt-Satz<br /><i>Aliquota IVA applicata</i></td>
                                                                                               <td><span><xsl:value-of select="format-number(AliquotaIVA, '###')" /> %</span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Ritenuta">
                                                                                          <tr><td>2.1.1.7.6</td><td>Fürsorgebeitrag im Abzug<br /><i>Contributo cassa soggetto a ritenuta</i></td>
                                                                                               <td><span><xsl:value-of select="Ritenuta" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Natura">
                                                                                          <tr><td>2.1.1.7.7</td><td>Art der Beitragsfreistellung<br /><i>Tipologia di non imponibilità del contributo</i></td>
                                                                                               <td><span><xsl:value-of select="Natura" /></span><xsl:variable name="NT"><xsl:value-of select="Natura" /></xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$NT='N1'"> (escluse ex art. 15)</xsl:when>
                                                                                                    <xsl:when test="$NT='N2'"> (non soggette)</xsl:when>
                                                                                                    <xsl:when test="$NT='N3'"> (non imponibili)</xsl:when>
                                                                                                    <xsl:when test="$NT='N4'"> (esenti)</xsl:when>
                                                                                                    <xsl:when test="$NT='N5'"> (regime del margine)</xsl:when>
                                                                                                    <xsl:when test="$NT='N6'"> (inversione contabile)</xsl:when>
                                                                                                    <xsl:when test="$NT=''"></xsl:when>
                                                                                                    <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="RiferimentoAmministrazione">
                                                                                          <tr><td>2.1.1.7.8</td><td>Hinweis Verwaltung / Buchhaltung<br /><i>Riferimento amministrativo / contabile</i></td>
                                                                                               <td><span><xsl:value-of select="RiferimentoAmministrazione" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI DELLA CASSA PREVIDENZIALE-->

                                                                 <!--INIZIO DATI SCONTO / MAGGIORAZIONE-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/ScontoMaggiorazione">
                                                                      <h4>Skonto/Aufschläge - <i>Sconto/maggiorazione</i></h4>
                                                                      <div id="dati-sconto-maggiorazione">
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/ScontoMaggiorazione">
                                                                                <table id="t1">
                                                                                     <xsl:if test="Tipo">
                                                                                          <tr><td width="70px">2.1.1.8.1</td><td width="170px">Typologie<br /><i>Tipologia</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="Tipo" /></span>
                                                                                               <xsl:variable name="TSM"><xsl:value-of select="Tipo" /></xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$TSM='SC'"> (sconto)</xsl:when>
                                                                                                    <xsl:when test="$TSM='MG'"> (maggiorazione)</xsl:when>
                                                                                                    <xsl:otherwise> <fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Percentuale">
                                                                                          <tr><td>2.1.1.8.2</td><td>Prozentsatz<br /><i>Percentuale</i></td>
                                                                                               <td><span><xsl:value-of select="Percentuale" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Importo">
                                                                                          <tr><td>2.1.1.8.3</td><td>Betrag<br /><i>Importo</i></td>
                                                                                               <td><span><xsl:value-of select="Importo" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI SCONTO / MAGGIORAZIONE-->

                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI GENERALI DOCUMENTO-->

                                                       <!--INIZIO DATI DELL'ORDINE DI ACQUISTO-->
                                                       <xsl:if test="DatiGenerali/DatiOrdineAcquisto">
                                                            <div id="dati-ordine-acquisto">
                                                                 <h3>Daten zur Bestellung - <i>Dati dell'ordine di acquisto</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiOrdineAcquisto">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.2.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span><br /></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td width="70px">2.1.2.2</td><td width="170px">Bestellkennung<br /><i>Ident. ordine di acquisto</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.2.3</td><td>Bestellungsdatum<br /><i>Data ordine di acquisto</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.2.4</td><td>Zeilennummer der Bestellung<br /><i>Numero linea ordine di acquisto</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.2.5</td><td>Verkaufs-/Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.2.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.2.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DELL'ORDINE DI ACQUISTO-->

                                                       <!--INIZIO DATI DEL CONTRATTO-->
                                                       <xsl:if test="DatiGenerali/DatiContratto">
                                                            <div id="dati-contratto">
                                                                 <h3>Vertragsdaten - <i>Dati del contratto</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiContratto">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.3.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td width="70px">2.1.3.2</td><td width="170px">Vertragskenndaten<br /><i>Ident. contratto</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.3.3</td><td>Vertagsdatum<br /><i>Data contratto</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.3.4</td><td>Zeilennummer Vertrag<br /><i>Numero linea contratto</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.3.5</td><td>Verk.-/Konv.-kodex<br /><i>Codice comm./conv.</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.3.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.3.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DEL CONTRATTO-->

                                                       <!--INIZIO DATI CONVENZIONE-->
                                                       <xsl:if test="DatiGenerali/DatiConvenzione">
                                                            <div id="dati-convenzione">
                                                                 <h3>Daten der Konvention - <i>Dati della convenzione</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiConvenzione">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.4.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td>2.1.4.2</td><td>Konventionskennung<br /><i>Ident. convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.4.3</td><td>Datum Konvention<br /><i>Data convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.4.4</td><td>Zeilennummer Konvention<br /><i>Numero linea convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.4.5</td><td>Verkaufs- / Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.4.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.4.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI CONVENZIONE-->

                                                       <!--INIZIO DATI RICEZIONE-->
                                                       <xsl:if test="DatiGenerali/DatiRicezione">
                                                            <div id="dati-ricezione">
                                                                 <h3>Daten zum Erhalt der Leistung - <i>Dati della ricezione</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiRicezione">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.5.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td>2.1.5.2</td><td>Kennzeichen des Empfangs<br /><i>Ident. ricezione</i></td>
                                                                                     <td><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.5.3</td><td>Empfangsdatum<br /><i>Data ricezione</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.5.4</td><td>Zeilennummer des Empfangs<br /><i>Numero linea ricezione</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.5.5</td><td>Verkaufs- / Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.5.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.5.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                      </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI RICEZIONE-->

                                                       <!--INIZIO DATI FATTURE COLLEGATE-->
                                                       <xsl:if test="DatiGenerali/DatiFattureCollegate">
                                                            <div id="dati-fatture-collegate">
                                                                 <h3>Daten zu verbundenen Rechnungen - <i>Dati della fattura collegata</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiFattureCollegate">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.6.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td>2.1.6.2</td><td>Kennzeichen der dazugehörenden Rechnung<br /><i>Ident. fattura collegata</i></td>
                                                                                     <td><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.6.3</td><td>Datum der dazugehörenden Rechnung<br /><i>Data fattura collegata</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.6.4</td><td>Zeilennummer bei der dazugehörenden Rechnung<br /><i>Numero linea fattura collegata</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.6.5</td><td>Verkaufs- / Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.6.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.6.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                      </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI FATTURE COLLEGATE-->

                                                       <!--INIZIO DATI RIFERIMENTO SAL-->
                                                       <xsl:if test="DatiGenerali/DatiSAL">
                                                            <div id="dati-sal">
                                                                 <h3>Baufortschritt - <i>Stato avanzamento lavori</i></h3>
                                                                 <table id="t1">
                                                                      <xsl:if test="DatiGenerali/DatiSAL/RiferimentoFase">
                                                                           <tr><td width="70px">2.1.7.1</td><td width="170px">Nummer Baufortschritt<br /><i>Numero fase avanzamento</i></td>
                                                                                <td width="364px"><xsl:for-each select="DatiGenerali/DatiSAL/RiferimentoFase"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI RIFERIMENTO SAL-->

                                                       <!--INIZIO DATI  DDT-->
                                                       <xsl:if test="DatiGenerali/DatiDDT">
                                                            <div id="dati-ddt">
                                                                 <h3>Daten zum Warenbegleitschein (WBS) - <i>Dati del documento di trasporto (DDT)</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiDDT">
                                                                           <xsl:if test="NumeroDDT or DataDDT or RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.8.[1|2|3]</td>
                                                                                <td width="170px">Nummer, Datum WBS<br /><i>Numero data DDT</i></td>
                                                                                     <td width="364px">
                                                                                     <xsl:if test="NumeroDDT"><span><xsl:value-of select="NumeroDDT" /></span></xsl:if>
                                                                                     <xsl:if test="DataDDT"> vom/<i>del</i>&#160;<span><xsl:value-of select="DataDDT" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataDDT" /></xsl:call-template></xsl:if>
                                                                                     <xsl:if test="RiferimentoNumeroLinea"><br />Betrifft Zeile/<i>Rif.linea</i>&#160;<xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></xsl:if>
                                                                                </td></tr>
                                                                           </xsl:if>

                                                                           <!--
                                                                           <xsl:if test="NumeroDDT">
                                                                                <tr><td width="70px">2.1.8.1</td><td width="170px">Nummer WBS<br /><i>Numero DDT</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="NumeroDDT" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="DataDDT">
                                                                                <tr><td>2.1.8.2</td><td>Datum WBS<br /><i>Data DDT</i></td>
                                                                                     <td><span><xsl:value-of select="DataDDT" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataDDT" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td>2.1.8.3</td><td>Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           -->

                                                                      </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DDT-->

                                                       <!--INIZIO DATI  TRASPORTO-->
                                                       <xsl:if test="DatiGenerali/DatiTrasporto">
                                                            <div id="dati-trasporto">
                                                                 <h3>Daten zum Warentransport - <i>Dati relativi al trasporto</i></h3>
                                                                 <xsl:if test="DatiGenerali/DatiTrasporto/DatiAnagraficiVettore">
                                                                      <h4>Daten des Frächters - <i>Dati del vettore</i></h4>
                                                                 </xsl:if>
                                                                 <table id="t1">
                                                                 <xsl:if test="DatiGenerali/DatiTrasporto/DatiAnagraficiVettore">
                                                                           <xsl:for-each select="DatiGenerali/DatiTrasporto/DatiAnagraficiVettore">
                                                                                <xsl:if test="Anagrafica/Denominazione">
                                                                                     <tr><td width="70px">2.1.9.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                          <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/Titolo">
                                                                                     <tr><td>2.1.9.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                          <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/Nome">
                                                                                     <tr><td width="90px">2.1.9.1.3.2</td><td width="170px">Name<br /><i>Nome</i></td>
                                                                                          <td width="364px"><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/Cognome">
                                                                                     <tr><td>2.1.9.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                          <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IdFiscaleIVA/IdPaese">
                                                                                     <tr><td>2.1.9.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                          <td><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CodiceFiscale">
                                                                                     <tr><td>2.1.9.1.2</td><td>Steuernummer<br /><i>Codice Fiscale</i></td>
                                                                                          <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/CodEORI">
                                                                                     <tr><td>2.1.9.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                          <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="NumeroLicenzaGuida">
                                                                                     <tr><td>2.1.9.1.4</td><td>Führerscheinnummer<br /><i>Numero licenza di guida</i></td>
                                                                                          <td><span><xsl:value-of select="NumeroLicenzaGuida" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                           </xsl:for-each>
                                                                 </xsl:if>

                                                                 <xsl:if
                                                                      test="DatiGenerali/DatiTrasporto/MezzoTrasporto or DatiGenerali/DatiTrasporto/CausaleTrasporto or DatiGenerali/DatiTrasporto/NumeroColli or DatiGenerali/DatiTrasporto/Descrizione or DatiGenerali/DatiTrasporto/UnitaMisuraPeso or DatiGenerali/DatiTrasporto/PesoLordo or DatiGenerali/DatiTrasporto/PesoNetto or DatiGenerali/DatiTrasporto/DataOraRitiro or DatiGenerali/DatiTrasporto/DataInizioTrasporto or DatiGenerali/DatiTrasporto/TipoResa or DatiGenerali/DatiTrasporto/IndirizzoResa">
                                                                      <tr><td colspan="3"><h4>Weitere Daten - <i>Altri dati</i></h4></td></tr>
                                                                           <xsl:for-each select="DatiGenerali/DatiTrasporto">
                                                                                <xsl:if test="MezzoTrasporto">
                                                                                     <tr><td>2.1.9.2</td><td>Transortmittel<br /><i>Mezzo di trasporto</i></td>
                                                                                          <td><span><xsl:value-of select="MezzoTrasporto" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CausaleTrasporto">
                                                                                     <tr><td>2.1.9.3</td><td>Transportgrund<br /><i>Causale trasporto</i></td>
                                                                                          <td><span><xsl:value-of select="CausaleTrasporto" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="NumeroColli">
                                                                                     <tr><td>2.1.9.4</td><td>Anzahl der Frachtstücke<br /><i>Numero colli trasportati</i></td>
                                                                                          <td><span><xsl:value-of select="NumeroColli" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Descrizione">
                                                                                     <tr><td>2.1.9.5</td><td>Beschreibung der transportierten Güter<br /><i>Descrizione beni trasportati</i></td>
                                                                                          <td><span><xsl:value-of select="Descrizione" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="UnitaMisuraPeso">
                                                                                     <tr><td>2.1.9.6</td><td>Messeinheit der Ware<br /><i>Unità di misura del peso merce</i></td>
                                                                                          <td><span><xsl:value-of select="UnitaMisuraPeso" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="PesoLordo">
                                                                                     <tr><td>2.1.9.7</td><td>Bruttogewicht<br /><i>Peso lordo</i></td>
                                                                                          <td><span><xsl:value-of select="PesoLordo" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="PesoNetto">
                                                                                     <tr><td>2.1.9.8</td><td>Nettogewicht<br /><i>Peso netto</i></td>
                                                                                          <td><span><xsl:value-of select="PesoNetto" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataOraRitiro">
                                                                                     <tr><td>2.1.9.9</td><td>Datum und Zeit der Abgabe<br /><i>Data e ora ritiro merce</i></td>
                                                                                          <td><span><xsl:value-of select="DataOraRitiro" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataOraRitiro" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataInizioTrasporto">
                                                                                     <tr><td>2.1.9.10</td><td>Datum Transportbeginn<br /><i>Data inizio trasporto</i></td>
                                                                                          <td><span><xsl:value-of select="DataInizioTrasporto" />
                                                                                          </span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataInizioTrasporto" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="TipoResa">
                                                                                     <tr><td>2.1.9.11</td><td>Typologie der Abgabe<br /><i>Tipologia di resa</i></td>
                                                                                          <td><span><xsl:value-of select="TipoResa" /></span> (Kodifizierung nach ICC-Standard)<br /><i>(codifica secondo standard ICC)</i></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Indirizzo">
                                                                                     <tr><td>2.1.9.12.1</td><td>Adresse der Abgabe<br /><i>Indirizzo di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Indirizzo" /></span></td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/NumeroCivico">
                                                                                     <tr><td>2.1.9.12.2</td><td>Hausnummer Abgabeadresse<br /><i>Numero civico indirizzo di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/NumeroCivico" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/CAP">
                                                                                     <tr><td>2.1.9.12.3</td><td>PLZ Adresse Abgabe<br /><i>CAP indirizzo di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/CAP" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Comune">
                                                                                     <tr><td>2.1.9.12.4</td><td>Gemeinde Abgabe<br /><i>Comune di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Comune" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Provincia">
                                                                                     <tr><td>2.1.9.12.5</td><td>Provinz Abgabe<br /><i>Provincia di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Provincia" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Nazione">
                                                                                     <tr><td>2.1.9.12.6</td><td>Land der Abgabe<br /><i>Nazione di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Nazione" /></span></td>
                                                                                          </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataOraConsegna">
                                                                                     <tr><td>2.1.9.13</td><td>Land der Abgabe<br /><i>Nazione di resa</i></td>
                                                                                          <td><span><xsl:value-of select="DataOraConsegna" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                           </xsl:for-each>
                                                                 </xsl:if>
                                                                      </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI TRASPORTO-->

                                                       <!--INIZIO FATTURA PRINCIPALE-->
                                                       <xsl:if test="DatiGenerali/FatturaPrincipale/NumeroFatturaPrincipale">
                                                            <div id="fattura-principale">
                                                                 <h3>Daten zur Hauptrechnung - <i>Dati relativi alla fattura principale</i></h3>
                                                                 <table id="t1">
                                                                      <xsl:if test="DatiGenerali/FatturaPrincipale/NumeroFatturaPrincipale">
                                                                           <tr><td  width="70px">2.1.10.1</td>
                                                                                <td width="170px">Nummer der Hauptrechnung<br /><i>Numero fattura principale</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiGenerali/FatturaPrincipale/NumeroFatturaPrincipale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiGenerali/FatturaPrincipale/DataFatturaPrincipale">
                                                                           <tr><td  width="70px">2.1.10.2</td>
                                                                                <td width="170px">Datum Hauptrechnung<br /><i>Data fattura principale</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiGenerali/FatturaPrincipale/DataFatturaPrincipale" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DatiGenerali/FatturaPrincipale/DataFatturaPrincipale" /></xsl:call-template></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE FATTURA PRINCIPALE-->

                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI GENERALI-->

                                             <!--INIZIO DATI BENI E SERVIZI-->
                                             <xsl:if test="DatiBeniServizi/DettaglioLinee">
                                                  <div id="dati-dettaglio-linee">

                                                       <!--INIZIO DATI DI DETTAGLIO DELLE LINEE-->
                                                       <xsl:if test="DatiBeniServizi/DettaglioLinee">
                                                            <div id="righe">
                                                                 <h3>Daten zur Lieferung - <i>Dati relativi alle linee di dettaglio della fornitura</i></h3>
                                                                <table id="t2">
                                                                  <tr bgcolor="#998c99">
                                                                    <th align="center" width="25">Nr</th>
                                                                    <th width="175">Beschreibung<br />Descrizione cessione/prestazione</th>
                                                                    <th width="65">Menge<br />Quantità</th>
                                                                    <th width="20">ME<br />UM</th>
                                                                    <th width="85">Preis<br />Prezzo</th>
                                                                    <th width="80">Skonto<br />Sconto</th>
                                                                    <th width="85">Preis gesamt<br />Prezzo totale</th>
                                                                    <th width="40">MwSt<br />IVA<br />(%)</th>
                                                                  </tr>
                                                                                                       <xsl:for-each select="DatiBeniServizi/DettaglioLinee">
                                                                                                            <tr>
                                                                    <td align="center"><span><xsl:value-of select="NumeroLinea" /></span></td>
                                                                      <td>
                                                                                                                      <xsl:if test="Descrizione">
                                                                        <xsl:if test="CodiceArticolo">
                                                                          <xsl:for-each select="CodiceArticolo">
                                                                            <xsl:if test="CodiceTipo"><span><xsl:value-of select="CodiceTipo" /></span></xsl:if>
                                                                            <xsl:if test="CodiceValore"><span><xsl:value-of select="CodiceValore" /></span></xsl:if><br />
                                                                          </xsl:for-each>
                                                                        </xsl:if>
                                                                        <span><xsl:value-of select="Descrizione" /></span>
                                                                      </xsl:if>
                                                                      <xsl:if test="DataInizioPeriodo"><br />
                                                                        <xsl:if test="DataInizioPeriodo">Datum Beginn des Leistungszeitraumes <i>inizio periodo di riferimento</i>: <span>
                                                                          <xsl:value-of select="DataInizioPeriodo" /></span><xsl:call-template name="FormatDate">
                                                                          <xsl:with-param name="DateTime" select="DataInizioPeriodo" /></xsl:call-template>
                                                                          <xsl:if test="DataFinePeriodo"><br /> </xsl:if></xsl:if>
                                                                          <xsl:if test="DataFinePeriodo">Datum Ende des Leistungszeitraumes <i>Data fine periodo di riferimento</i>: <span>
                                                                        <xsl:value-of select="DataFinePeriodo" /></span><xsl:call-template name="FormatDate">
                                                                        <xsl:with-param name="DateTime" select="DataFinePeriodo" /></xsl:call-template></xsl:if></xsl:if>
                                                                      <xsl:if test="ScontoMaggiorazione/Tipo"><br /><span><xsl:value-of select="ScontoMaggiorazione/Tipo" /></span>
                                                                        <xsl:variable name="TCP"><xsl:value-of select="ScontoMaggiorazione/Tipo" /></xsl:variable>
                                                                         <xsl:choose>
                                                                              <xsl:when test="$TCP='SC'"> (Skonto)<i>(sconto)</i></xsl:when>
                                                                              <xsl:when test="$TCP='PR'"> (Prämie)<i>(premio)</i></xsl:when>
                                                                              <xsl:when test="$TCP='AB'"> (Gutschrift)<i>(abbuono)</i></xsl:when>
                                                                              <xsl:when test="$TCP='AC'"> (Zusatzspesen)<i>(spesa accessoria)</i></xsl:when>
                                                                              <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                         </xsl:choose><span><xsl:value-of select="ScontoMaggiorazione/Percentuale" />%</span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="Quantita">
                                                                         <span><xsl:value-of select="format-number(Quantita, '#.###,###','euro')" /></span></xsl:if></td>
                                                                         <td><xsl:if test="UnitaMisura"><span><xsl:value-of select="UnitaMisura" /></span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="PrezzoUnitario"><span><xsl:value-of select="format-number(PrezzoUnitario, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="ScontoMaggiorazione/Importo"><span><xsl:value-of select="format-number(ScontoMaggiorazione/Importo, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="PrezzoTotale"><span><xsl:value-of select="format-number(PrezzoTotale, '###.##0,00', 'euro')"  /></span></xsl:if></td>
                                                                         <td align="center"><xsl:if test="AliquotaIVA">
                                                                         <xsl:variable name="IVA" select="AliquotaIVA"/>
                                                                         <xsl:choose>
                                                                              <xsl:when test="$IVA='0.00' or $IVA='0'">
                                                                                   <xsl:if test="Natura"><span><xsl:value-of select="Natura" /></span></xsl:if>
                                                                              </xsl:when>
                                                                              <xsl:otherwise><span><xsl:value-of select="format-number(AliquotaIVA, '##0')" /></span></xsl:otherwise>
                                                                         </xsl:choose>
                                                                         </xsl:if></td>

                                                                      </tr>
                                                                 </xsl:for-each>
                                                              </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DI DETTAGLIO DELLE LINEE-->

                                                       <!--INIZIO DATI DI RIEPILOGO ALIQUOTE E NATURE-->
                                                       <xsl:if test="DatiBeniServizi/DatiRiepilogo">
                                                            <div id="riepilogo-aliquote-nature">
                                                                 <h3>Daten zur MwSt. nach Satz und Art - <i>Dati di riepilogo per aliquota IVA e natura</i></h3>
                                                                 <table border="1" width="610px">
                                                                 <tr bgcolor="#998c99">
                                                                        <th width="45">MwSt<br />Aliq.</th>
                                                                        <th width="70">Art<br />Natura</th>
                                                                        <th width="75">Spesen<br />Spese</th>
                                                                        <th width="75">Rundung<br />Arroton.</th>
                                                                        <th width="75">Grundlage<br />Imponibile</th>
                                                                        <th width="75">Steuer<br />Imposta</th>
                                                                        <th width="75">Fälligkeit<br />Esigibilita</th>
                                                                        <th width="85">Ges.Bezug<br />Rif.Norma</th>
                                                                 </tr>
                                                                 <xsl:for-each select="DatiBeniServizi/DatiRiepilogo">
                                                                      <tr>
                                                                           <td align="center"><xsl:if test="AliquotaIVA">
                                                                                     <xsl:variable name="IVA" select="AliquotaIVA"/>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$IVA='0.00' or $IVA='0'">
                                                                                               <xsl:if test="Natura"><span><xsl:value-of select="Natura" /></span></xsl:if>
                                                                                          </xsl:when>
                                                                                          <xsl:otherwise><span><xsl:value-of select="format-number(AliquotaIVA, '##0')" /></span></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                                     </xsl:if></td>

                                                                           <td><xsl:if test="Natura"><xsl:variable name="NAT1"><xsl:value-of select="Natura" /></xsl:variable>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$NAT1='N1'"> (escluse ex art.15)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N2'"> (non soggette)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N3'"> (non imponibili)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N4'"> (esenti)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N5'"> (regime del margine)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N6'"> (inversione contabile)</xsl:when>
                                                                                          <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                             </xsl:if></td>
                                                                           <td align="right"><xsl:if test="SpeseAccessorie"><span><xsl:value-of select="format-number(SpeseAccessorie, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td align="right"><xsl:if test="Arrotondamento"><span><xsl:value-of select="format-number(Arrotondamento, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td align="right"><xsl:if test="ImponibileImporto"><span><xsl:variable name="Ii" select="ImponibileImporto" /><xsl:value-of select="format-number($Ii, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td align="right"><xsl:if test="Imposta"><span><xsl:value-of select="format-number(Imposta, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td><xsl:if test="EsigibilitaIVA"><span><xsl:value-of select="EsigibilitaIVA" /></span><xsl:variable name="EI"><xsl:value-of select="EsigibilitaIVA" /></xsl:variable>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$EI='I'"> (esigibilità immediata)</xsl:when>
                                                                                          <xsl:when test="$EI='D'"> (esigibilità differita)</xsl:when>
                                                                                          <xsl:when test="$EI='S'"> (scissione dei pagamenti)</xsl:when>
                                                                                          <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                              </xsl:if></td>
                                                                           <td><xsl:if test="RiferimentoNormativo"><span><xsl:value-of select="RiferimentoNormativo" /></span></xsl:if></td>
                                                                      </tr>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI RIEPILOGO ALIQUOTE E NATURE-->

                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI BENI E SERVIZI-->

                                             <!--INIZIO DATI VEICOLI-->
                                             <xsl:if test="DatiVeicoli">
                                                  <div id="dati-veicoli"><h3>Daten zum Transportfahrzeug - <i>Dati Veicoli ex art. 38 dl 331/1993</i></h3>
                                                       <table id="t1">
                                                            <xsl:for-each select="DatiVeicoli">
                                                                 <xsl:if test="Data">
                                                                      <tr><td width="70px">2.3.1</td><td width="170px">Datum Ersteinschreibung des Fahrzeuges<br /><i> prima immatricolazione / iscrizione PR </i></td>
                                                                           <td width="364px"><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                      </tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="TotalePercorso">
                                                                      <tr><td>2.3.2</td><td>Gesamtlänge Fahrt<br /><i>Totale percorso</i></td>
                                                                           <td><span><xsl:value-of select="TotalePercorso" /></span></td>
                                                                      </tr>
                                                                 </xsl:if>
                                                            </xsl:for-each>
                                                       </table>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI VEICOLI-->

                                             <!--INIZIO DATI PAGAMENTO-->
                                             <xsl:if test="DatiPagamento">
                                                  <div id="dati-pagamento-condizioni">
                                                       <h3>Daten zur Bezahlung - <i>Dati relativi al pagamento</i></h3>
                                                            <xsl:for-each select="DatiPagamento">
                                                                 <xsl:if test="CondizioniPagamento">
                                                                 <table id="t1">
                                                                      <tr><td width="70px">2.4.1</td><td width="170px">Zahlungsbedingungen<br /><i>Condizioni di pagamento</i></td>
                                                                           <td width="364px"><span><xsl:value-of select="CondizioniPagamento" /></span><xsl:variable name="CP"><xsl:value-of select="CondizioniPagamento" /></xsl:variable>
                                                                           <xsl:choose>
                                                                                <xsl:when test="$CP='TP01'"> (Ratenzahlung)<i>(pagamento a rate)</i></xsl:when>
                                                                                <xsl:when test="$CP='TP02'"> (Einmalzahlung)<i>(pagamento completo)</i></xsl:when>
                                                                                <xsl:when test="$CP='TP03'"> (Vorauszahlung)<i>(anticipo)</i></xsl:when>
                                                                                <xsl:when test="$CP=''"></xsl:when>
                                                                                <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                           </xsl:choose></td>
                                                                      </tr>
                                                                 </table>
                                                                 </xsl:if>

                                                                 <xsl:if test="DettaglioPagamento">
                                                                      <!--
                                                                      <tr><td></td><td colspan="2"><h5>Details zur Bezahlung - <i>Dettaglio pagamento</i></h5></td></tr>
                                                                      -->
                                                                 <xsl:variable name="TOTALRATEN" select="count(DettaglioPagamento)" />
                                                                 <xsl:for-each select="DettaglioPagamento">
                                                                 <xsl:if test="$TOTALRATEN>1">
                                                                      <h4>Rate Nr. <i>Rata N°</i>:&#160;<xsl:value-of select="position()" />&#160;<xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataScadenzaPagamento" /></xsl:call-template></h4>
                                                                 </xsl:if>
                                                                 <table id="t1">
                                                                      <xsl:if test="Beneficiario">
                                                                           <tr><td width="70px">2.4.2.1</td><td width="170px">Zahlungsempfänger<br /><i>Beneficiario pagamento</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Beneficiario" /></span></td>
                                                                           </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="ModalitaPagamento">
                                                                                <tr><td width="70px">2.4.2.2</td><td width="170px">Zahlungsmodalität<br /><i>Modalità di pagamento</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="ModalitaPagamento" /></span><xsl:variable name="MP"><xsl:value-of select="ModalitaPagamento" /></xsl:variable>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$MP='MP01'"> (bar)<i>(contanti)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP02'"> (Scheck)<i>(assegno)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP03'"> (Zirkularscheck)<i>(assegno circolare)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP04'"> (über Schatzamt)<i>(contanti presso Tesoreria)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP05'"> (Überweisung)<i>(bonifico)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP06'"> (Wechsel)<i>(vaglia cambiario)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP07'"> (Bankmitteilung)<i>(bollettino bancario)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP08'"> (Zahlkarte)<i>(carta di pagamento)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP09'"> (RID)</xsl:when>
                                                                                          <xsl:when test="$MP='MP10'"> (RID normal)<i>(RID utenze)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP11'"> (RID Schnell)<i>(RID veloce)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP12'"> (RIBA)</xsl:when>
                                                                                          <xsl:when test="$MP='MP13'"> (MAV)</xsl:when>
                                                                                          <xsl:when test="$MP='MP14'"> (quietanza erario)</xsl:when>
                                                                                          <xsl:when test="$MP='MP15'"> (giroconto su conti di con</xsl:when>
                                                                                          <xsl:when test="$MP='MP16'"> (Bankdauerauftrag)<i>(domiciliazione bancaria)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP17'"> (Postdauerauftrag)<i>(domiciliazione postale)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP18'"> (Postüberweisung)<i>(bollettino di c/c postale)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP19'"> (SEPA Direct Debit)</xsl:when>
                                                                                          <xsl:when test="$MP='MP20'"> (SEPA Direct Debit CORE)</xsl:when>
                                                                                          <xsl:when test="$MP='MP21'"> (SEPA Direct Debit B2B)</xsl:when>
                                                                                          <xsl:when test="$MP=''"></xsl:when>
                                                                                          <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                                     </td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataRiferimentoTerminiPagamento">
                                                                                     <tr><td>2.4.2.3</td><td>Beginn Zahlungsfrist<br /><i>Dec. termine pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="DataRiferimentoTerminiPagamento" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataRiferimentoTerminiPagamento" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="GiorniTerminiPagamento">
                                                                                     <tr><td>2.4.2.4</td><td>Zahlungsziel (Tagen)<br /><i>Term. pagamento (giorni)</i></td>
                                                                                          <td><span><xsl:value-of select="GiorniTerminiPagamento" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataScadenzaPagamento">
                                                                                     <tr><td>2.4.2.5</td><td>Ende Zahlungsziel<br /><i>Data scadenza pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="DataScadenzaPagamento" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataScadenzaPagamento" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="ImportoPagamento">
                                                                                     <tr><td>2.4.2.6</td><td>Betrag<br /><i>Importo</i></td>
                                                                                          <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoPagamento, '###.##0,00', 'euro')" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CodUfficioPostale">
                                                                                     <tr><td>2.4.2.7</td><td>Kodex Postamt<br /><i>Codice Ufficio Postale</i></td>
                                                                                          <td><span><xsl:value-of select="CodUfficioPostale" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="TitoloQuietanzante">
                                                                                     <tr><td>2.4.2.11</td><td>Titel des Quittierenden<br /><i>Titolo del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="TitoloQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="NomeQuietanzante">
                                                                                     <tr><td>2.4.2.8</td><td>Name des Quittierenden<br /><i>Nome del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="NomeQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CognomeQuietanzante">
                                                                                     <tr><td>2.4.2.9</td><td>Nachname des Quittierenden<br /><i>Cognome del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="CognomeQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CFQuietanzante">
                                                                                     <tr><td>2.4.2.10</td><td>StNr. des Quittierenden<br /><i>CF del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="CFQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IstitutoFinanziario">
                                                                                     <tr><td>2.4.2.12</td><td>Finanzinstitut<br /><i>Istituto finanziario</i></td>
                                                                                          <td><span><xsl:value-of select="IstitutoFinanziario" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IBAN">
                                                                                     <tr><td>2.4.2.13</td><td>IBAN<br /><i>Codice IBAN</i></td>
                                                                                          <td><span><xsl:value-of select="IBAN" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="ABI">
                                                                                     <tr><td>2.4.2.14</td><td>ABI<br /><i>Codice ABI</i></td>
                                                                                          <td><span><xsl:value-of select="ABI" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CAB">
                                                                                     <tr><td>2.4.2.15</td><td>CAB<br /><i>Codice CAB</i></td>
                                                                                          <td><span><xsl:value-of select="CAB" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="BIC">
                                                                                     <tr><td>2.4.2.16</td><td>BIC<br /><i>Codice BIC</i></td>
                                                                                          <td><span><xsl:value-of select="BIC" /></span></td>
                                                                                          </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="ScontoPagamentoAnticipato">
                                                                                     <tr><td>2.4.2.17</td><td>Skonto für Zahlung vor Zahlungsziel<br /><i>Sconto per pagamento anticipato</i></td>
                                                                                          <td><span><xsl:value-of select="ScontoPagamentoAnticipato" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataLimitePagamentoAnticipato">
                                                                                     <tr><td>2.4.2.18</td><td>letzter Termin für Zahlung vor Zahlungsziel<br />
                                                                                          <i>Data limite per il pagamento anticipato</i></td>
                                                                                          <td><span><xsl:value-of select="DataLimitePagamentoAnticipato" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataLimitePagamentoAnticipato" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="PenalitaPagamentiRitardati">
                                                                                     <tr><td>2.4.2.19</td><td>Pönale für verspätete Zahlung<br /><i>Penale per ritardato pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="PenalitaPagamentiRitardati" /></span></td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataDecorrenzaPenale">
                                                                                     <tr><td>2.4.2.20</td><td>Beginndatum für Anwendung der Pönale<br /><i>Data di decorrenza della penale</i></td>
                                                                                          <td><span><xsl:value-of select="DataDecorrenzaPenale" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataDecorrenzaPenale" /></xsl:call-template></td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CodicePagamento">
                                                                                     <tr><td>2.4.2.21</td><td>Zahlungs-Kodex<br /><i>Codice pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="CodicePagamento" /></span></td></tr>
                                                                                </xsl:if>
                                                                           </table>
                                                                      </xsl:for-each>
                                                                 </xsl:if>
                                                            </xsl:for-each>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI PAGAMENTO-->

                                             <!--INIZIO ALLEGATI-->
                                             <xsl:if test="Allegati">
                                                  <div id="allegati"><h3>Daten zu den Anlagen - <i>Dati relativi agli allegati</i></h3><xsl:for-each select="Allegati">
                                                            <table id="t1">
                                                                 <xsl:if test="NomeAttachment">
                                                                      <tr><td width="70px">2.5.1</td><td width="170px">Name der Anlage<br /><i>Nome dell'allegato</i></td>
                                                                           <td width="364px"><span><xsl:value-of select="NomeAttachment" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="AlgoritmoCompressione">
                                                                      <tr><td>2.5.2</td><td>Kompressionsalgoritmus<br /><i>Algoritmo di compressione</i></td>
                                                                           <td><span><xsl:value-of select="AlgoritmoCompressione" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="FormatoAttachment">
                                                                      <tr><td>2.5.3</td><td>Format<br /><i>Formato</i></td>
                                                                           <td><span><xsl:value-of select="FormatoAttachment" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="DescrizioneAttachment">
                                                                      <tr><td>2.5.4</td>
                                                                           <td>Beschreibung<br /><i>Descrizione</i></td>
                                                                           <td><span><xsl:value-of select="DescrizioneAttachment" /></span></td></tr>
                                                                 </xsl:if>
                                                            </table>
                                                       </xsl:for-each>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE ALLEGATI-->

                                             <div class="footer"><xsl:value-of select="$VersionFT" /><br /><a href="http://www.fatturapa.gov.it">www.fatturapa.gov.it</a></div>
                                        </div>
                                   </xsl:for-each>
                                   <!--FINE BODY-->

                              </div>
                         </xsl:if>
                    </div>
               </body>
          </html>
     </xsl:template>
</xsl:stylesheet><?xml version="1.0"?>
<!-- copyleft: Ferdinand TAVERNINI WOBI-IPES Bozen/Bolzano -->
<!-- Versionsdatum: 2015-07-04 -->
<!-- Feedback erwünscht an info@ing-tavernini.com -->
<xsl:stylesheet 
     version="1.0" 
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:a="http://www.fatturapa.gov.it/sdi/fatturapa/v1.1">
     <xsl:output method="html" />
     <xsl:variable name="VersionFT" select="'Tabellenversion - Versione tabellare: 8.3 © 2015 Ferdinand TAVERNINI  GPLv3'" />
     <xsl:decimal-format name="euro" decimal-separator="," grouping-separator="." />

     <xsl:template name="CodiceUnivocoUfficio">
          <xsl:param name="kode" />
          <xsl:choose>
               <xsl:when test="$kode = 'U9CVVQ'" ><span><xsl:value-of select="$kode" /></span><br />Generaldirektion<br /><i>DIREZIONE GENERALE</i></xsl:when>
               <xsl:when test="$kode = '9G9VCD'" ><span><xsl:value-of select="$kode" /></span><br />Rechtsamt<br /><i>UFFICIO AFFARI LEGALI</i></xsl:when>
               <xsl:when test="$kode = 'D31MSA'" ><span><xsl:value-of select="$kode" /></span><br />EDV-Amt<br /><i>UFFICIO EDP</i></xsl:when>
               <xsl:when test="$kode = '0COHRW'" ><span><xsl:value-of select="$kode" /></span><br />Personal- und Organisationsamt<br /><i>UFFICIO PERSONALE ED ORGANIZZAZIONE</i></xsl:when>
               <xsl:when test="$kode = 'LSXW8L'" ><span><xsl:value-of select="$kode" /></span><br />Wohnungszuweisungund Mieter<br /><i>RIPARTIZIONE ALLOGGI ED INQUILINATO</i></xsl:when>
               <xsl:when test="$kode = 'RW81BN'" ><span><xsl:value-of select="$kode" /></span><br />Mieterservicestelle Bozen<br /><i>CENTRO SERVIZI ALL'INQUILINATO DI BOLZANO</i></xsl:when>
               <xsl:when test="$kode = 'GNXLXD'" ><span><xsl:value-of select="$kode" /></span><br />Mieterservicestelle Meran<br /><i>CENTRO SERVIZI ALL'INQUILINATO DI MERANO</i></xsl:when>
               <xsl:when test="$kode = 'GSRA1J'" ><span><xsl:value-of select="$kode" /></span><br />Mieterservicestelle Brixen<br /><i>CENTRO SERVIZI ALL'INQUILINATO DI BRESSANONE</i></xsl:when>
               <xsl:when test="$kode = '80WPE5'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Dienste<br /><i>RIPARTIZIONE SERVIZI TECNICI</i></xsl:when>
               <xsl:when test="$kode = 'NP7VMX'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt Mitte Süd<br /><i>UFFICIO TECNICO CENTRO SUD</i></xsl:when>
               <xsl:when test="$kode = 'KOJPJL'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt Ost<br /><i>UFFICIO TECNICO EST</i></xsl:when>
               <xsl:when test="$kode = '6ACTCE'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt West<br /><i>UFFICIO TECNICO OVEST</i></xsl:when>
               <xsl:when test="$kode = 'UAQVHQ'" ><span><xsl:value-of select="$kode" /></span><br />Amt für Buchhaltung, Bilanzen, Versicherung und Zahlungen<br /><i>UFFICIO CONTABILITA, BILANCI, ASSICURAZIONI E PAGAMENTI</i></xsl:when>
               <xsl:when test="$kode = '3PZ58V'" ><span><xsl:value-of select="$kode" /></span><br />Arbeitsgruppe für Vergabe, Verträge und Vermögen<br /><i>GRUPPO DI LAVORO APPALTI, CONTRATTI E PATRIMONIO</i></xsl:when>
               <xsl:when test="$kode = '00ROQ2'" ><span><xsl:value-of select="$kode" /></span><br />Technisches Amt Instandhaltung<br /><i>UFFICIO TECNICO MANUTENZIONE</i></xsl:when>
               <xsl:when test="$kode = 'UFQKV2'" ><span><xsl:value-of select="$kode" /></span><br />Uff_eFatturaPA</xsl:when>

               <xsl:otherwise><span><xsl:value-of select="$kode" /></span></xsl:otherwise>
          </xsl:choose>
          <xsl:variable name="kodeSel" select="''" />
     </xsl:template>

     <xsl:template name="FormatDate">
          <xsl:param name="DateTime" />

          <xsl:variable name="year" select="substring($DateTime,1,4)" />
          <xsl:variable name="month" select="substring($DateTime,6,2)" />
          <xsl:variable name="day" select="substring($DateTime,9,2)" />

          <xsl:value-of select="' ('" />
          <xsl:value-of select="$day" />
          <xsl:value-of select="' '" />
          <xsl:choose>
               <xsl:when test="$month = '1' or $month = '01'">Jan./Gen.</xsl:when>
               <xsl:when test="$month = '2' or $month = '02'">Feb.</xsl:when>
               <xsl:when test="$month = '3' or $month = '03'">Mar.</xsl:when>
               <xsl:when test="$month = '4' or $month = '04'">Apr.</xsl:when>
               <xsl:when test="$month = '5' or $month = '05'">Mai/Mag.</xsl:when>
               <xsl:when test="$month = '6' or $month = '06'">Jun./Giu.</xsl:when>
               <xsl:when test="$month = '7' or $month = '07'">Jul./Lug.</xsl:when>
               <xsl:when test="$month = '8' or $month = '08'">Aug./Ago.</xsl:when>
               <xsl:when test="$month = '9' or $month = '09'">Sep./Set.</xsl:when>
               <xsl:when test="$month = '10'">Okt./Ott.</xsl:when>
               <xsl:when test="$month = '11'">Nov.</xsl:when>
               <xsl:when test="$month = '12'">Dez./Dic.</xsl:when>
               <xsl:otherwise><font color="red">Unbekannter Monat - <i>Mese non riconosciuto</i></font></xsl:otherwise>
          </xsl:choose>
          <xsl:value-of select="' '" />
          <xsl:value-of select="$year" />
          <xsl:variable name="time" select="substring($DateTime,12)" />
          <xsl:if test="$time != ''">
               <xsl:variable name="hh" select="substring($time,1,2)" />
               <xsl:variable name="mm" select="substring($time,4,2)" />
               <xsl:variable name="ss" select="substring($time,7,2)" />
               <xsl:value-of select="' '" />
               <xsl:value-of select="$hh" />
               <xsl:value-of select="':'" />
               <xsl:value-of select="$mm" />
               <xsl:value-of select="':'" />
               <xsl:value-of select="$ss" />
          </xsl:if>
          <xsl:value-of select="')'" />
     </xsl:template>
     <xsl:template match="/">
          <html>
               <head>
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <style type="text/css">
@media print  {  body { font-size: 7pt }
               h1 { font-size: 12pt; }
               h2 { font-size: 11pt; }
               h3 { font-size: 10pt; }
               h4 { font-size:  9pt; }
               h5 { font-size:  8pt; }
                                   }
@page print { size: A4 portrait; }

@media screen {  body { font-size: 10px }}
body { max-width: 643px; min-width: 640px; }

fattura-container { font-size: 8px; width: 80%; position: relative;}
{ font-family: sans-serif; margin-left: auto; margin-right: auto; padding: 0; }
.version { font-size: 8px; float:right; color: #777777; }
h1 { padding: 5px 0 0 0; margin: 0; font-size: 22px; }
h2 { padding: 5px 0 0 0; margin: 0; font-size: 18px; }
h3 { padding: 5px 0 0 0; margin: 0; font-size: 15px; }
h4 { padding: 5px 0 0 0; margin: 0; font-size: 12px; }
h5 { padding: 5px 0 0 0; margin: 0; font-size: 10px; font-style: italic; }
ul { list-style-type: none; margin: 0 !important; padding: 15px 0 0 40px !important; }
ul li {}
span { font-weight: bold; }
fehler {color: red; text-decoration:blink; }
div { padding: 0; margin: 0; }
div.page {
background-color: #fff !important;
position: relative;
margin: 5px 0 5px 0;
padding: 5px;
background: -moz-linear-gradient(0% 0 360deg, #FFFFFF, #F2F2F2 20%, #FFFFFF) repeat scroll 0 0 transparent;
border: 1px solid #CCCCCC;
-webkitbox-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
-mozbox-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
background: url('logo_sdi_trasparente.jpg') 98% 50px no-repeat;
}
table {table-layout:fixed; width:630px;}
table td {overflow: hidden;}
table, td, th { border: 1px solid black; border-collapse: collapse;}
#t1 td, #t1 th { border: none; }
#ti td { color: #000000; background-color: #EAF2D3;}
th, td { padding: 2px;}
div.footer { padding: 10px 0 0 0; margin: 0; font-size: 10px; text-align: center; color: #777777; }
tr:nth-of-type(even){background-color: #F3F3F3;}
tr:nth-of-type(odd) {background-color:#ddd;}
th {background-color:#0f0f0f; color: #fafafa;}</style>
               </head>
               <body>
                    <div id="fattura-container">
                         <!--INIZIO DATI HEADER-->
                         <xsl:if test="a:FatturaElettronica">
                              <div id="fattura-elettronica"><h1>Italienische elektronische Rechnung<br /><i>FATTURA ELETTRONICA</i></h1><xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader">
                                        <div class="page">
                                             <div class="version">Version <xsl:value-of select="a:FatturaElettronica/@versione"/></div>
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/DatiTrasmissione">
                                                  <!--INIZIO DATI DELLA TRASMISSIONE-->
                                                  <div id="dati-trasmissione"><h3>Daten zur Übertragung - <i>Dati relativi alla trasmissione</i></h3><table id="t1">
                                                            <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/DatiTrasmissione">
                                                                 <xsl:if test="IdTrasmittente or ProgressivoInvio or FormatoTrasmissione">
                                                                      <tr><td width="70px">1.1.[3|1|2]</td>
                                                                           <td width="170px">Übertragungskennung<br /><i>Ident. di trasmissione</i></td>
                                                                                <td width="364px"><span>
                                                                                <xsl:if test="FormatoTrasmissione"><xsl:value-of select="FormatoTrasmissione" />:</xsl:if>
                                                                                <xsl:if test="IdTrasmittente"><xsl:value-of select="IdTrasmittente/IdPaese" /><xsl:value-of select="IdTrasmittente/IdCodice" />_</xsl:if>
                                                                                <xsl:if test="ProgressivoInvio"><xsl:value-of select="ProgressivoInvio" /></xsl:if>
                                                                                </span></td></tr>
                                                                           </xsl:if>
                                                                 <!--
                                                                 <xsl:if test="IdTrasmittente">
                                                                      <tr><td width="70px">1.1.1</td>
                                                                           <td width="170px">Steuernummer des Senders<br /><i>Ident. del trasmittente</i></td>
                                                                           <td width="364px"><span><xsl:value-of select="IdTrasmittente/IdPaese" /><xsl:value-of select="IdTrasmittente/IdCodice" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="ProgressivoInvio">
                                                                      <tr><td>1.1.2</td>
                                                                           <td>Übertragung Nr.<br /><i>Progressivo di invio</i></td>
                                                                           <td><span><xsl:value-of select="ProgressivoInvio" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="FormatoTrasmissione">
                                                                      <tr><td>1.1.3</td>
                                                                           <td>Übertragungsformat<br /><i>Formato Trasmissione</i></td>
                                                                           <td><span><xsl:value-of select="FormatoTrasmissione" /></span></td></tr>
                                                                 </xsl:if>
                                                                 -->
                                                                 <xsl:if test="CodiceDestinatario">
                                                                      <tr><td>1.1.4</td><td>Kodex der öff. Verwal.<br /><i>Cod. Amministra. destina.</i></td>
                                                                           <td><xsl:call-template name="CodiceUnivocoUfficio"><xsl:with-param name="kode" select="CodiceDestinatario" /></xsl:call-template></td>
                                                                      </tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="ContattiTrasmittente/Telefono">
                                                                      <tr><td>1.1.5.1</td><td>Telefonnummer Sender<br /><i>Telefono del trasmittente</i></td>
                                                                           <td><span><xsl:value-of select="ContattiTrasmittente/Telefono" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="ContattiTrasmittente/Email">
                                                                      <tr><td>1.1.5.2</td><td>E-Mail des Senders<br /><i>E-mail del trasmittente</i></td>
                                                                           <td><span><xsl:value-of select="ContattiTrasmittente/Email" /></span></td></tr>
                                                                 </xsl:if>
                                                            </xsl:for-each>
                                                       </table>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI DELLA TRASMISSIONE-->

                                             <!--INIZIO DATI CEDENTE PRESTATORE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore">
                                                  <div id="cedente">
                                                       <h3>Daten zum Lieferanten/Freiberufler - <i>Dati del cedente/prestatore</i></h3>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/DatiAnagrafici">
                                                            <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/DatiAnagrafici">

                                                                      <!--
                                                                      <xsl:if test="Anagrafica/Denominazione">
                                                                           <tr><td width="70px">1.2.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td></tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Titolo">
                                                                           <tr><td>1.2.1.3.4</td><td>Titel<br /><i>Titolo</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td></tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Nome">
                                                                           <tr><td width="70px">1.2.1.3.2</td><td width="170px">Name<br /><i>Nome</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Cognome">
                                                                           <tr><td>1.2.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="Anagrafica/Denominazione or Anagrafica/Nome">
                                                                           <tr><td width="70px">1.2.1.[1|4|2|3]</td><td width="170px">Benennung<br /><i>Nominativo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" />&#160;<xsl:value-of select="Anagrafica/Titolo" />&#160;<xsl:value-of select="Anagrafica/Nome" />&#160;<xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>


                                                                      <xsl:if test="Anagrafica/CodEORI">
                                                                           <tr><td>1.2.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      <!--

                                                                      <xsl:if test="AlboProfessionale">
                                                                           <tr><td>1.2.1.4</td><td>Zugehörigkeit Berufsalbum<br /><i>Albo professionale di appartenenza</i></td>
                                                                                <td><span><xsl:value-of select="AlboProfessionale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="ProvinciaAlbo">
                                                                           <tr><td>1.2.1.5</td><td>Berufsalbum der Provinz<br /><i>Provincia di competenza dell'Albo</i></td>
                                                                                <td><span><xsl:value-of select="ProvinciaAlbo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroIscrizioneAlbo">
                                                                           <tr><td>1.2.1.6</td><td>Einschreibungsnummer im Berufsalbum<br /><i>Numero iscrizione all'Albo</i></td>
                                                                                <td><span><xsl:value-of select="NumeroIscrizioneAlbo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DataIscrizioneAlbo">
                                                                           <tr><td>1.2.1.7</td><td>Datum der Einschreibung<br /><i>Data iscrizione all'Albo</i></td>
                                                                                <td><span><xsl:value-of select="DataIscrizioneAlbo" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataIscrizioneAlbo" /></xsl:call-template></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      -->

                                                                      <xsl:if test="AlboProfessionale or ProvinciaAlbo or NumeroIscrizioneAlbo or DataIscrizioneAlbo">
                                                                           <tr><td>1.2.1.[4|5|6|7]</td><td>Zugehörigkeit Berufsalbum<br /><i>Albo professionale di appartenenza</i></td>
                                                                                <td><span><xsl:value-of select="AlboProfessionale" />&#160;<xsl:value-of select="ProvinciaAlbo" />&#160;<xsl:value-of select="NumeroIscrizioneAlbo" /></span><xsl:if test="DataIscrizioneAlbo">&#160;<span><xsl:value-of select="DataIscrizioneAlbo" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataIscrizioneAlbo" /></xsl:call-template></xsl:if></td>
                                                                           </tr>
                                                                      </xsl:if>


                                                                      <xsl:if test="IdFiscaleIVA">
                                                                           <tr><td>1.2.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CodiceFiscale">
                                                                           <tr><td>1.2.1.2</td><td>Steuernummer<br /><i>Codice fiscale</i></td>
                                                                                <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="RegimeFiscale">
                                                                           <tr><td>1.2.1.8</td><td>Steuersystem<br /><i>Regime fiscale</i></td>
                                                                                <td><span><xsl:value-of select="RegimeFiscale" /></span>
                                                                                <xsl:variable name="RF"><xsl:value-of select="RegimeFiscale" /></xsl:variable>
                                                                                <xsl:choose>
                                                                                     <xsl:when test="$RF='RF01'"> (ordinario)</xsl:when>
                                                                                     <xsl:when test="$RF='RF02'"> (contribuenti minimi)</xsl:when>
                                                                                     <xsl:when test="$RF='RF03'"> (nuove iniziative produttive)</xsl:when>
                                                                                     <xsl:when test="$RF='RF04'"> (agricoltura e attività connesse e pesca)</xsl:when>
                                                                                     <xsl:when test="$RF='RF05'"> (vendita sali e tabacchi)</xsl:when>
                                                                                     <xsl:when test="$RF='RF06'"> (commercio fiammiferi)</xsl:when>
                                                                                     <xsl:when test="$RF='RF07'"> (editoria)</xsl:when>
                                                                                     <xsl:when test="$RF='RF08'"> (gestione servizi telefonia pubblica)</xsl:when>
                                                                                     <xsl:when test="$RF='RF09'"> (rivendita documenti di trasporto pubblico e di sosta)</xsl:when>
                                                                                     <xsl:when test="$RF='RF10'"> (intrattenimenti, giochi e altre attività di cui alla tariffa allegata al DPR 640/72)</xsl:when>
                                                                                     <xsl:when test="$RF='RF11'"> (agenzie viaggi e turismo)</xsl:when>
                                                                                     <xsl:when test="$RF='RF12'"> (agriturismo)</xsl:when>
                                                                                     <xsl:when test="$RF='RF13'"> (vendite a domicilio)</xsl:when>
                                                                                     <xsl:when test="$RF='RF14'"> (rivendita beni usati, oggetti d’arte, d’antiquariato o da collezione)</xsl:when>
                                                                                     <xsl:when test="$RF='RF15'"> (agenzie di vendite all’asta di oggetti d’arte, antiquariato o da collezione)</xsl:when>
                                                                                     <xsl:when test="$RF='RF16'"> (IVA per cassa P.A.)</xsl:when>
                                                                                     <xsl:when test="$RF='RF17'"> (IVA per cassa - art. 32-bis, D.L. 83/2012)</xsl:when>
                                                                                     <xsl:when test="$RF='RF19'"> (Regime forfettario)</xsl:when>
                                                                                     <xsl:when test="$RF='RF18'"> (altro)</xsl:when>
                                                                                     <xsl:when test="$RF=''"></xsl:when>
                                                                                     <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                </xsl:choose>
                                                                                </td></tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/Sede">
                                                            <h4>Firmensitz - <i>Dati della sede</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/Sede">
                                                                 <!--
                                                                      <xsl:if test="Indirizzo">
                                                                           <tr><td width="70px">1.2.2.1</td><td width="170px">Anschrift<br /><i>Indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroCivico">
                                                                           <tr><td>1.2.2.2</td><td>Hausnummer<br /><i>Numero civico</i></td>
                                                                                <td><span><xsl:value-of select="NumeroCivico" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CAP">
                                                                           <tr><td>1.2.2.3</td><td>PLZ<br /><i>CAP</i></td>
                                                                                <td><span><xsl:value-of select="CAP" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Comune">
                                                                           <tr><td>1.2.2.4</td><td>Gemeinde<br /><i>Comune</i></td>
                                                                                <td><span><xsl:value-of select="Comune" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Provincia">
                                                                           <tr><td>1.2.2.5</td><td>Provinz<br /><i>Provincia</i></td>
                                                                                <td><span><xsl:value-of select="Provincia" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Nazione">
                                                                           <tr><td>1.2.2.6</td><td>Land<br /><i>Nazione</i></td>
                                                                                <td><span><xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 -->

                                                                      <xsl:if test="Indirizzo or NumeroCivico or CAP or Comune or Provincia or Nazione">
                                                                           <tr><td width="70px">1.2.2.[1|2|3|4|5|6]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" />&#160;<xsl:value-of select="NumeroCivico" /><br /><xsl:value-of select="CAP" />&#160;<xsl:value-of select="Comune" />&#160;<xsl:value-of select="Provincia" />&#160;<xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>

                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/StabileOrganizzazione">
                                                            <h4>Daten der Organisation - <i>Dati della stabile organizzazione</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/StabileOrganizzazione">

                                                                      <!--
                                                                      <xsl:if test="Indirizzo">
                                                                           <tr><td width="70px">1.2.3.1</td><td width="170px">Anschrift<br /><i>Indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroCivico">
                                                                           <tr><td>1.2.3.2</td><td>Hausnummer<br /><i>Numero civico</i></td>
                                                                                <td><span><xsl:value-of select="NumeroCivico" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CAP">
                                                                           <tr><td>1.2.3.3</td><td>PLZ<br /><i>CAP</i></td>
                                                                                <td><span><xsl:value-of select="CAP" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Comune">
                                                                           <tr><td>1.2.3.4</td><td>Gemeinde<br /><i>Comune</i></td>
                                                                                <td><span><xsl:value-of select="Comune" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Provincia">
                                                                           <tr><td>1.2.3.5</td><td>Provinz<br /><i>Provincia</i></td>
                                                                                <td><span><xsl:value-of select="Provincia" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Nazione">
                                                                           <tr><td>1.2.3.6</td><td>Land<br /><i>Nazione</i></td>
                                                                                <td><span><xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 -->

                                                                      <xsl:if test="Indirizzo or NumeroCivico or CAP or Comune or Provincia or Nazione">
                                                                           <tr><td width="70px">1.2.3.[1|2|3|4|5]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" />&#160;<xsl:value-of select="NumeroCivico" /><br /><xsl:value-of select="CAP" />&#160;<xsl:value-of select="Comune" />&#160;<xsl:value-of select="Provincia" />&#160;<xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>

                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/IscrizioneREA">
                                                            <h4>Handelsregistereintragung - <i>Dati di iscrizione nel registro delle imprese</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/IscrizioneREA">
                                                                      <xsl:if test="Ufficio">
                                                                           <tr><td width="70px">1.2.4.1</td><td width="170px">Handelsregister der Provinz<br /><i>Uff. Reg. Imp. Provinciale</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Ufficio" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroREA">
                                                                           <tr><td>1.2.4.2</td><td>Eintragungsnummer<br /><i>Numero di iscrizione</i></td>
                                                                                <td><span><xsl:value-of select="NumeroREA" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CapitaleSociale">
                                                                           <tr><td>1.2.4.3</td><td>Handelskapital<br /><i>Capitale sociale</i></td>
                                                                                <td><span><xsl:value-of select="CapitaleSociale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="SocioUnico">
                                                                           <tr><td>1.2.4.4</td><td>Anzahl Gesellschafter<br /><i>Numero soci</i></td>
                                                                                <td><span><xsl:value-of select="SocioUnico" /></span>
                                                                                <xsl:variable name="NS"><xsl:value-of select="SocioUnico" /></xsl:variable>
                                                                                <xsl:choose>
                                                                                     <xsl:when test="$NS='SU'"> (Einzelgesellschafter)<i>(socio unico)</i></xsl:when>
                                                                                     <xsl:when test="$NS='SM'"> (mehrere Gesellschafter)<i>(più soci)</i></xsl:when>
                                                                                     <xsl:when test="$NS=''"></xsl:when>
                                                                                     <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="StatoLiquidazione">
                                                                           <tr><td>1.2.4.5</td><td>Auflösung<br /><i>Stato di liquidazione</i></td>
                                                                                <td><span><xsl:value-of select="StatoLiquidazione" /></span><xsl:variable name="SL"><xsl:value-of select="StatoLiquidazione" /></xsl:variable>
                                                                                <xsl:choose>
                                                                                     <xsl:when test="$SL='LS'"> (in Auflösung)<i>(in liquidazione)</i></xsl:when>
                                                                                     <xsl:when test="$SL='LN'"> (nicht in Auflösung)<i>(non in liquidazione)</i></xsl:when>
                                                                                     <xsl:when test="$SL=''"></xsl:when>
                                                                                     <xsl:otherwise><fehler>(!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>

                                                       <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/Contatti">
                                                            <xsl:if test="Telefono or Fax or Email">
                                                                 <h4>Adresse - <i>Recapiti</i></h4>
                                                                 <table id="t1">
                                                                      <xsl:if test="Telefono">
                                                                           <tr><td width="70px">1.2.5.1</td><td width="170px">Telefon<br /><i>Telefono</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Telefono" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Fax">
                                                                           <tr><td width="70px">1.2.5.2</td><td width="170px">FAX<br /><i>Fax</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Fax" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Email">
                                                                           <tr><td width="70px">1.2.5.3</td><td width="170px">E-Mail<br /><i>E-mail</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Email" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </xsl:if>
                                                       </xsl:for-each>

                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/RiferimentoAmministrazione">
                                                            <h4>Verwaltungsreferenz - <i>Riferimento amministrativo</i></h4>
                                                                 <table id="t1">
                                                                      <tr><td width="70px">1.2.6</td><td width="170px">Referenz<br /><i>Riferimento</i></td> 
                                                                           <td width="364px"><span><xsl:value-of select="a:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/RiferimentoAmministrazione" /></span></td>
                                                                      </tr>
                                                                 </table>
                                                       </xsl:if>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI CEDENTE PRESTATORE-->

                                             <!--INIZIO DATI RAPPRESENTANTE FISCALE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/RappresentanteFiscale">
                                                  <div id="rappresentante-fiscale">
                                                       <h3>Daten des Vertreters für Steuerfragen für Dienstleisters / Lieferanten<br /><i>Dati del rappresentante fiscale del cedente / prestatore</i></h3>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/RappresentanteFiscale/DatiAnagrafici">
                                                            <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/RappresentanteFiscale/DatiAnagrafici">
                                                                      <xsl:if test="IdFiscaleIVA">
                                                                           <tr><td width="70px">1.3.1.1</td><td width="170px">Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /></span></td>
                                                                                </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CodiceFiscale">
                                                                           <tr><td>1.3.1.2</td><td>Steuernummer<br /><i>Codice fiscale</i></td>
                                                                                <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                                </tr>
                                                                      </xsl:if>

                                                                      <!--

                                                                      <xsl:if test="Anagrafica/Denominazione">
                                                                           <tr><td>1.3.1.3.1</td><td>Benennung<br /><i>Denominazione</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Titolo">
                                                                           <tr><td>1.3.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Nome">
                                                                           <tr><td>1.3.1.3.2</td><td>Name<br /><i>Nome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Cognome">
                                                                           <tr><td>1.3.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                 -->

                                                                      <xsl:if test="Anagrafica/Denominazione or Anagrafica/Titolo or Anagrafica/Nome or Anagrafica/Cognome">
                                                                           <tr><td width="70px">1.3.1.3.[1|4|2|3]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" />&#160;<xsl:value-of select="Anagrafica/Titolo" /><xsl:value-of select="Anagrafica/Nome" />&#160;<xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      <xsl:if test="Anagrafica/CodEORI">
                                                                           <tr><td>1.3.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI RAPPRESENTANTE FISCALE-->

                                             <!--INIZIO DATI CESSIONARIO COMMITTENTE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente">
                                                  <div id="cessionario">
                                                       <h3>Daten des Rechnungsempfängers - <i>Dati del cessionario / committente</i></h3>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/DatiAnagrafici">
                                                            <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/DatiAnagrafici">

                                                                      <!--
                                                                      <xsl:if test="Anagrafica/Denominazione">
                                                                           <tr><td width="70px">1.4.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Titolo">
                                                                           <tr><td>1.4.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Nome">
                                                                           <tr><td>1.4.1.3.2</td><td>Name<br /><i>Nome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/Cognome">
                                                                           <tr><td>1.4.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="Anagrafica/Denominazione or Anagrafica/Titolo or Anagrafica/Nome or Anagrafica/Cognome">
                                                                           <tr><td width="70px">1.4.1.3.[1|4|2|3]</td><td width="170px">Benennung<br /><i>denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" />&#160;<xsl:value-of select="Anagrafica/Titolo" /><xsl:value-of select="Anagrafica/Nome" />&#160;<xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="IdFiscaleIVA">
                                                                           <tr><td>1.4.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /> </span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CodiceFiscale">
                                                                           <tr><td>1.4.1.2</td><td>Steuernummer<br /><i>Codice Fiscale</i></td>
                                                                                <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Anagrafica/CodEORI">
                                                                           <tr><td>1.4.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                       <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/Sede">
                                                            <h4>Firmensitz - <i>Dati della sede</i></h4>
                                                            <table id="t1">
                                                                 <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/Sede">

                                                                      <!--
                                                                      <xsl:if test="Indirizzo">
                                                                           <tr><td width="70px">1.4.2.1</td><td width="170px">Anschrift<br /><i>Indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="NumeroCivico">
                                                                           <tr><td>1.4.2.2</td><td>Hausnummer<br /><i>Numero civico</i></td>
                                                                                <td><span><xsl:value-of select="NumeroCivico" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="CAP">
                                                                           <tr><td>1.4.2.3</td><td>PLZ<br /><i>CAP</i></td>
                                                                                <td><span><xsl:value-of select="CAP" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Comune">
                                                                           <tr><td>1.4.2.4</td><td>Gemeinde<br /><i>Comune</i></td>
                                                                                <td><span><xsl:value-of select="Comune" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Provincia">
                                                                           <tr><td>1.4.2.5</td><td>Provinz<br /><i>Provincia</i></td>
                                                                                <td><span><xsl:value-of select="Provincia" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="Nazione">
                                                                           <tr><td>1.4.2.6</td><td>Land<br /><i>Nazione</i></td>
                                                                                <td><span><xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="Indirizzo or NumeroCivico or CAP or Comune or Provincia or Nazione">
                                                                           <tr><td width="70px">1.4.2.[1|2|3|4|5|6]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Indirizzo" />&#160;<xsl:value-of select="NumeroCivico" /><br /> <xsl:value-of select="CAP" />&#160;<xsl:value-of select="Comune" />&#160;<xsl:value-of select="Provincia" /> &#160;<xsl:value-of select="Nazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>



                                                                 </xsl:for-each>
                                                            </table>
                                                       </xsl:if>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI CESSIONARIO COMMITTENTE-->

                                             <!--INIZIO DATI TERZO INTERMEDIARIO SOGGETTO EMITTENTE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/TerzoIntermediarioOSoggettoEmittente">
                                                  <div id="terzointermediario">

                                                       <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaHeader/TerzoIntermediarioOSoggettoEmittente">
                                                            <h3>Daten des Vermittlers des Emittenten - <i>Dati del terzo intermediario soggetto emittente</i></h3>

                                                            <xsl:if test="DatiAnagrafici">
                                                                 <h4>Anagrafische Daten - <i>Dati anagrafici</i></h4>
                                                                 <table id="t1">

                                                                      <!--
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Denominazione">
                                                                           <tr><td width="70px">1.5.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Denominazione" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Titolo">
                                                                           <tr><td>1.5.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Titolo" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Nome">
                                                                           <tr><td>1.5.1.3.2</td><td>Name<br /><i>Nome</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Nome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Cognome">
                                                                           <tr><td>1.5.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/Denominazione or DatiAnagrafici/Anagrafica/Titolo or DatiAnagrafici/Anagrafica/Nome or DatiAnagrafici/Anagrafica/Cognome">
                                                                           <tr><td width="70px">1.5.1.3.[1|4|2|3]</td><td width="170px">Anschrift<br /><i>indirizzo</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiAnagrafici/Anagrafica/Denominazione" />&#160;<xsl:value-of select="DatiAnagrafici/Anagrafica/Titolo" />&#160;<xsl:value-of select="DatiAnagrafici/Anagrafica/Nome" /> &#160;<xsl:value-of select="DatiAnagrafici/Anagrafica/Cognome" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>


                                                                      <xsl:if test="DatiAnagrafici/IdFiscaleIVA">
                                                                           <tr><td>1.5.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/IdFiscaleIVA/IdPaese" /><xsl:value-of select="DatiAnagrafici/IdFiscaleIVA/IdCodice" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/CodiceFiscale">
                                                                           <tr><td>1.5.1.2</td><td>Steuernummer<br /><i>Codice Fiscale</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/CodiceFiscale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiAnagrafici/Anagrafica/CodEORI">
                                                                           <tr><td>1.5.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                <td><span><xsl:value-of select="DatiAnagrafici/Anagrafica/CodEORI" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </xsl:if>
                                                       </xsl:for-each>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI TERZO INTERMEDIARIO SOGGETTO EMITTENTE-->

                                             <!--INIZIO DATI SOGGETTO EMITTENTE-->
                                             <xsl:if test="a:FatturaElettronica/FatturaElettronicaHeader/SoggettoEmittente">
                                                  <div id="soggetto-emittente">
                                                       <h3>Rechnungsersteller - <i>Soggetto emittente la fattura</i></h3>
                                                       <table id="t1">
                                                            <tr><td width="70px">1.6</td><td width="170px">Austeller<br /><i>Soggetto emittente</i></td>
                                                            <td width="364px"><span><xsl:value-of select="a:FatturaElettronica/FatturaElettronicaHeader/SoggettoEmittente" /> </span><xsl:variable name="SC"><xsl:value-of select="a:FatturaElettronica/FatturaElettronicaHeader/SoggettoEmittente" /> </xsl:variable>
                                                                 <xsl:choose>
                                                                      <xsl:when test="$SC='CC'"> (Rechnungssteller)<i>(cessionario/committente)</i></xsl:when>
                                                                      <xsl:when test="$SC='TZ'"> (dritter)<i>(terzo)</i></xsl:when>
                                                                      <xsl:when test="$SC=''"></xsl:when>
                                                                      <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                 </xsl:choose></td>
                                                            </tr>
                                                       </table>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI SOGGETTO EMITTENTE-->

                                             <div class="footer"><xsl:value-of select="$VersionFT" /><br /><a href="http://www.fatturapa.gov.it">www.fatturapa.gov.it</a></div>
                                        </div>
                                   </xsl:if>
                                   <!--FINE DATI HEADER-->

                                   <!--INIZIO DATI BODY-->

                                   <xsl:variable name="TOTALBODY">
                                        <xsl:value-of select="count(a:FatturaElettronica/FatturaElettronicaBody)" />
                                   </xsl:variable>

                                   <xsl:for-each select="a:FatturaElettronica/FatturaElettronicaBody">
                                        <xsl:if test="$TOTALBODY>1">
                                             <h2>Dokument Nummer <i>Numero documento nel lotto</i>:<xsl:value-of select="position()" /></h2>
                                        </xsl:if>

                                        <div class="page">
                                             <div class="version">Version <xsl:value-of select="../@versione"/></div>

                                             <xsl:variable name="Valuta" select="DatiGenerali/DatiGeneraliDocumento/Divisa" />

                                             <xsl:if test="DatiGenerali">
                                                  <!--INIZIO DATI GENERALI-->
                                                  <div id="dati-generali">

                                                       <xsl:if test="DatiGenerali/DatiGeneraliDocumento">

                                                            <!--INIZIO DATI GENERALI DOCUMENTO-->
                                                            <div id="dati-generali-documento">
                                                                 <h3>Generelle Rechnungssdaten - <i>Dati generali del documento</i></h3>

                                                                 <table id="t1">
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/TipoDocumento">
                                                                           <tr><td width="70px">2.1.1.[2|1]</td><td width="170px">Währung : Dokumententyp<br /><i>Valuta : Tipologia doc.</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="$Valuta" />&#160;:&#160;<xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </span><xsl:variable name="TD"><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </xsl:variable>
                                                                                          <xsl:choose>
                                                                                               <xsl:when test="$TD='TD01'"> (Rechnung)<i>(fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD02'"> (Accontorechnung)<i>(acconto/anticipo su fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD03'"> (Accontohonorar)<i>(acconto/anticipo su parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD04'"> (Gutschrift)<i>(nota di credito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD05'"> (Lastschrift)<i>(nota di debito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD06'"> (Honorarnote)<i>(parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD=''"></xsl:when>
                                                                                               <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                          </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>

                                                                      <!--
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/TipoDocumento">
                                                                           <tr><td width="70px">2.1.1.1</td><td width="170px">Dokumententyp<br /><i>Tipologia documento</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </span><xsl:variable name="TD"><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/TipoDocumento" /> </xsl:variable>
                                                                                          <xsl:choose>
                                                                                               <xsl:when test="$TD='TD01'"> (Rechnung)<i>(fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD02'"> (Accontorechnung)<i>(acconto/anticipo su fattura)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD03'"> (Accontohonorar)<i>(acconto/anticipo su parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD04'"> (Gutschrift)<i>(nota di credito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD05'"> (Lastschrift)<i>(nota di debito)</i></xsl:when>
                                                                                               <xsl:when test="$TD='TD06'"> (Honorarnote)<i>(parcella)</i></xsl:when>
                                                                                               <xsl:when test="$TD=''"></xsl:when>
                                                                                               <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                          </xsl:choose></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                           <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Divisa">
                                                                           <tr><td>2.1.1.2</td><td>Währung<br /><i>Valuta importi</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Divisa" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Data">
                                                                           <tr><td>2.1.1.[4|3]</td><td>Dok.-nummer und -datum<br /><i>Numero e data doc.</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Numero" />&#160;-&#160;<xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DatiGenerali/DatiGeneraliDocumento/Data" /></xsl:call-template>
                                                                           </td></tr>
                                                                      </xsl:if>


                                                                      <!--
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Data">
                                                                           <tr><td>2.1.1.3</td><td>Dokumentdatum<br /><i>Data documento</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DatiGenerali/DatiGeneraliDocumento/Data" /></xsl:call-template>
                                                                           </td></tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Numero">
                                                                           <tr><td>2.1.1.4</td><td>Dokumentennummer<br /><i>Numero documento</i></td>
                                                                                <td><span>
                                                                                     <xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Numero" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      -->

                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/ImportoTotaleDocumento">
                                                                           <tr><td>2.1.1.9</td><td>Gesamtbetrag Dokument<br /><i>Importo totale documento</i></td>
                                                                                <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:variable name="ITD" select="DatiGenerali/DatiGeneraliDocumento/ImportoTotaleDocumento" /><xsl:value-of select="format-number($ITD, '###.##0,00', 'euro')" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Arrotondamento">
                                                                           <tr><td>2.1.1.10</td><td>Rundung auf dem Gesamtbetrag<br /><i>Arrotondamento su Importo totale documento</i></td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Arrotondamento" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/Causale">
                                                                           <tr><td>2.1.1.11</td><td>Grund<br /><i>Causale</i></td>
                                                                                <td><span><xsl:value-of select="current()" /></span></td>
                                                                           </tr>
                                                                      </xsl:for-each>
                                                                      <xsl:if test="DatiGenerali/DatiGeneraliDocumento/Art73">
                                                                           <tr><td>2.1.1.12</td><td colspan="2">Art. 73 DPR 633/72</td>
                                                                                <td><span><xsl:value-of select="DatiGenerali/DatiGeneraliDocumento/Art73" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>

                                                                 <!--INIZIO DATI DELLA RITENUTA-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/DatiRitenuta">
                                                                      <div id="dati-ritenuta">
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/DatiRitenuta">
                                                                                <h4>Einbehalte - <i>Ritenuta</i></h4>
                                                                                <table id="t1">
                                                                                     <xsl:if test="TipoRitenuta">
                                                                                          <tr><td width="70px">2.1.1.5.1</td><td width="170px">Art des Einbehaltes<br /><i>Tipologia ritenuta</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="TipoRitenuta" /></span><xsl:variable name="TR"><xsl:value-of select="TipoRitenuta" /></xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$TR='RT01'"> (ritenuta persone fisiche)</xsl:when>
                                                                                                    <xsl:when test="$TR='RT02'"> (ritenuta persone giuridiche)</xsl:when>
                                                                                                    <xsl:when test="$TR=''"></xsl:when>
                                                                                                    <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose>
                                                                                          </td></tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImportoRitenuta">
                                                                                          <tr><td>2.1.1.5.2</td><td>Einbehaltener Betrag<br /><i>Importo ritenuta</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoRitenuta, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="AliquotaRitenuta">
                                                                                          <tr><td>2.1.1.5.3</td><td>Einbehaltsatz<br /><i>Aliquota ritenuta (%)</i></td>
                                                                                               <td><span><xsl:value-of select="format-number(AliquotaRitenuta, '###')" /> %</span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="CausalePagamento">
                                                                                          <tr><td>2.1.1.5.4</td><td>Zahlungsgrund<br /><i>Causale di pagamento</i></td>
                                                                                               <td><span><xsl:value-of select="CausalePagamento" /></span><xsl:variable name="CP"><xsl:value-of select="CausalePagamento" /></xsl:variable><xsl:if test="$CP!=''"> (Kodex nach Modell 770S)<i>(decodifica come da modello 770S)</i></xsl:if></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI DELLA RITENUTA-->

                                                                 <!--INIZIO DATI DEL BOLLO-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/DatiBollo">
                                                                      <div id="dati-bollo">
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/DatiBollo">
                                                                                <h4>Stempelwert - <i>Bollo</i></h4>
                                                                                <table id="t1">
                                                                                     <xsl:if test="BolloVirtuale">
                                                                                          <tr><td width="70px">2.1.1.6.1</td><td width="170px">Virtueller Stempelwert<br /><i>Bollo virtuale</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="BolloVirtuale" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImportoBollo">
                                                                                          <tr><td>2.1.1.6.2</td><td>Betrag Stempelwert<br /><i>Importo bollo</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoBollo, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI DEL BOLLO-->

                                                                 <!--INIZIO DATI DELLA CASSA PREVIDENZIALE-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/DatiCassaPrevidenziale">
                                                                      <div id="dati-cassa-previdenziale">
                                                                           <h4>Fürsorgekasse - <i>Cassa previdenziale</i></h4>
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/DatiCassaPrevidenziale">
                                                                                <table id="t1">
                                                                                     <xsl:if test="TipoCassa">
                                                                                          <tr><td width="70px">2.1.1.7.1</td><td width="170px">Fürsorgekasse<br /><i>Cassa previdenziale</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="TipoCassa" /></span><xsl:variable name="TC"><xsl:value-of select="TipoCassa" />
                                                                                               </xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$TC='TC01'"> (Cassa Nazionale Previdenza e Assistenza Avvocati e Procuratori legali)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC02'"> (Cassa Previdenza Dottori Commercialisti)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC03'"> (Cassa Previdenza e Assistenza Geometri)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC04'"> (Cassa Nazionale Previdenza e Assistenza Ingegneri e Architetti liberi profess.)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC05'"> (Cassa Nazionale del Notariato)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC06'"> (Cassa Nazionale Previdenza e Assistenza Ragionieri e Periti commerciali)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC07'"> (Ente Nazionale Assistenza Agenti e Rappresentanti di Commercio-ENASARCO)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC08'"> (Ente Nazionale Previdenza e Assistenza Consulenti del Lavoro-ENPACL)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC09'"> (Ente Nazionale Previdenza e Assistenza Medici-ENPAM)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC10'"> (Ente Nazionale Previdenza e Assistenza Farmacisti-ENPAF)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC11'"> (Ente Nazionale Previdenza e Assistenza Veterinari-ENPAV)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC12'"> (Ente Nazionale Previdenza e Assistenza Impiegati dell'Agricoltura-ENPAIA)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC13'"> (Fondo Previdenza Impiegati Imprese di Spedizione e Agenzie Marittime)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC14'"> (Istituto Nazionale Previdenza Giornalisti Italiani-INPGI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC15'"> (Opera Nazionale Assistenza Orfani Sanitari Italiani-ONAOSI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC16'"> (Cassa Autonoma Assistenza Integrativa Giornalisti Italiani-CASAGIT)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC17'"> (Ente Previdenza Periti Industriali e Periti Industriali Laureati-EPPI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC18'"> (Ente Previdenza e Assistenza Pluricategoriale-EPAP)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC19'"> (Ente Nazionale Previdenza e Assistenza Biologi-ENPAB)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC20'"> (Ente Nazionale Previdenza e Assistenza Professione Infermieristica-ENPAPI)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC21'"> (Ente Nazionale Previdenza e Assistenza Psicologi-ENPAP)</xsl:when>
                                                                                                    <xsl:when test="$TC='TC22'"> (INPS)</xsl:when>
                                                                                                    <xsl:when test="$TC=''"></xsl:when>
                                                                                                    <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImponibileCassa">
                                                                                          <tr><td>2.1.1.7.4</td><td>Grundlage Fürsorgebeitrag<br /><i>Imponibile previdenziale</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImponibileCassa, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="AlCassa">
                                                                                          <tr><td>2.1.1.7.2</td><td>Fürsorgebeitragssatz (%)<br /><i>Aliquota contri. cassa (%)</i></td>
                                                                                               <td><span><xsl:value-of select="format-number(AlCassa, '###')" /> %</span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="ImportoContributoCassa">
                                                                                          <tr><td>2.1.1.7.3</td><td>Fürsorgebeitrag<br /><i>Importo contributo cassa</i></td>
                                                                                               <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoContributoCassa, '###.##0,00', 'euro')" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="AliquotaIVA">
                                                                                          <tr><td>2.1.1.7.5</td><td>MwSt-Satz<br /><i>Aliquota IVA applicata</i></td>
                                                                                               <td><span><xsl:value-of select="format-number(AliquotaIVA, '###')" /> %</span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Ritenuta">
                                                                                          <tr><td>2.1.1.7.6</td><td>Fürsorgebeitrag im Abzug<br /><i>Contributo cassa soggetto a ritenuta</i></td>
                                                                                               <td><span><xsl:value-of select="Ritenuta" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Natura">
                                                                                          <tr><td>2.1.1.7.7</td><td>Art der Beitragsfreistellung<br /><i>Tipologia di non imponibilità del contributo</i></td>
                                                                                               <td><span><xsl:value-of select="Natura" /></span><xsl:variable name="NT"><xsl:value-of select="Natura" /></xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$NT='N1'"> (escluse ex art. 15)</xsl:when>
                                                                                                    <xsl:when test="$NT='N2'"> (non soggette)</xsl:when>
                                                                                                    <xsl:when test="$NT='N3'"> (non imponibili)</xsl:when>
                                                                                                    <xsl:when test="$NT='N4'"> (esenti)</xsl:when>
                                                                                                    <xsl:when test="$NT='N5'"> (regime del margine)</xsl:when>
                                                                                                    <xsl:when test="$NT='N6'"> (inversione contabile)</xsl:when>
                                                                                                    <xsl:when test="$NT=''"></xsl:when>
                                                                                                    <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="RiferimentoAmministrazione">
                                                                                          <tr><td>2.1.1.7.8</td><td>Hinweis Verwaltung / Buchhaltung<br /><i>Riferimento amministrativo / contabile</i></td>
                                                                                               <td><span><xsl:value-of select="RiferimentoAmministrazione" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI DELLA CASSA PREVIDENZIALE-->

                                                                 <!--INIZIO DATI SCONTO / MAGGIORAZIONE-->
                                                                 <xsl:if test="DatiGenerali/DatiGeneraliDocumento/ScontoMaggiorazione">
                                                                      <h4>Skonto/Aufschläge - <i>Sconto/maggiorazione</i></h4>
                                                                      <div id="dati-sconto-maggiorazione">
                                                                           <xsl:for-each select="DatiGenerali/DatiGeneraliDocumento/ScontoMaggiorazione">
                                                                                <table id="t1">
                                                                                     <xsl:if test="Tipo">
                                                                                          <tr><td width="70px">2.1.1.8.1</td><td width="170px">Typologie<br /><i>Tipologia</i></td>
                                                                                               <td width="364px"><span><xsl:value-of select="Tipo" /></span>
                                                                                               <xsl:variable name="TSM"><xsl:value-of select="Tipo" /></xsl:variable>
                                                                                               <xsl:choose>
                                                                                                    <xsl:when test="$TSM='SC'"> (sconto)</xsl:when>
                                                                                                    <xsl:when test="$TSM='MG'"> (maggiorazione)</xsl:when>
                                                                                                    <xsl:otherwise> <fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                               </xsl:choose></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Percentuale">
                                                                                          <tr><td>2.1.1.8.2</td><td>Prozentsatz<br /><i>Percentuale</i></td>
                                                                                               <td><span><xsl:value-of select="Percentuale" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                     <xsl:if test="Importo">
                                                                                          <tr><td>2.1.1.8.3</td><td>Betrag<br /><i>Importo</i></td>
                                                                                               <td><span><xsl:value-of select="Importo" /></span></td>
                                                                                          </tr>
                                                                                     </xsl:if>
                                                                                </table>
                                                                           </xsl:for-each>
                                                                      </div>
                                                                 </xsl:if>
                                                                 <!--FINE DATI SCONTO / MAGGIORAZIONE-->

                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI GENERALI DOCUMENTO-->

                                                       <!--INIZIO DATI DELL'ORDINE DI ACQUISTO-->
                                                       <xsl:if test="DatiGenerali/DatiOrdineAcquisto">
                                                            <div id="dati-ordine-acquisto">
                                                                 <h3>Daten zur Bestellung - <i>Dati dell'ordine di acquisto</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiOrdineAcquisto">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.2.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span><br /></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td width="70px">2.1.2.2</td><td width="170px">Bestellkennung<br /><i>Ident. ordine di acquisto</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.2.3</td><td>Bestellungsdatum<br /><i>Data ordine di acquisto</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.2.4</td><td>Zeilennummer der Bestellung<br /><i>Numero linea ordine di acquisto</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.2.5</td><td>Verkaufs-/Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.2.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.2.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DELL'ORDINE DI ACQUISTO-->

                                                       <!--INIZIO DATI DEL CONTRATTO-->
                                                       <xsl:if test="DatiGenerali/DatiContratto">
                                                            <div id="dati-contratto">
                                                                 <h3>Vertragsdaten - <i>Dati del contratto</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiContratto">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.3.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td width="70px">2.1.3.2</td><td width="170px">Vertragskenndaten<br /><i>Ident. contratto</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.3.3</td><td>Vertagsdatum<br /><i>Data contratto</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.3.4</td><td>Zeilennummer Vertrag<br /><i>Numero linea contratto</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.3.5</td><td>Verk.-/Konv.-kodex<br /><i>Codice comm./conv.</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.3.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.3.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DEL CONTRATTO-->

                                                       <!--INIZIO DATI CONVENZIONE-->
                                                       <xsl:if test="DatiGenerali/DatiConvenzione">
                                                            <div id="dati-convenzione">
                                                                 <h3>Daten der Konvention - <i>Dati della convenzione</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiConvenzione">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.4.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td>2.1.4.2</td><td>Konventionskennung<br /><i>Ident. convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.4.3</td><td>Datum Konvention<br /><i>Data convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.4.4</td><td>Zeilennummer Konvention<br /><i>Numero linea convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.4.5</td><td>Verkaufs- / Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.4.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.4.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI CONVENZIONE-->

                                                       <!--INIZIO DATI RICEZIONE-->
                                                       <xsl:if test="DatiGenerali/DatiRicezione">
                                                            <div id="dati-ricezione">
                                                                 <h3>Daten zum Erhalt der Leistung - <i>Dati della ricezione</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiRicezione">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.5.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td>2.1.5.2</td><td>Kennzeichen des Empfangs<br /><i>Ident. ricezione</i></td>
                                                                                     <td><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.5.3</td><td>Empfangsdatum<br /><i>Data ricezione</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.5.4</td><td>Zeilennummer des Empfangs<br /><i>Numero linea ricezione</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.5.5</td><td>Verkaufs- / Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.5.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.5.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                      </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI RICEZIONE-->

                                                       <!--INIZIO DATI FATTURE COLLEGATE-->
                                                       <xsl:if test="DatiGenerali/DatiFattureCollegate">
                                                            <div id="dati-fatture-collegate">
                                                                 <h3>Daten zu verbundenen Rechnungen - <i>Dati della fattura collegata</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiFattureCollegate">
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.6.1</td><td width="170px">Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td width="364px"><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="IdDocumento">
                                                                                <tr><td>2.1.6.2</td><td>Kennzeichen der dazugehörenden Rechnung<br /><i>Ident. fattura collegata</i></td>
                                                                                     <td><span><xsl:value-of select="IdDocumento" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="Data">
                                                                                <tr><td>2.1.6.3</td><td>Datum der dazugehörenden Rechnung<br /><i>Data fattura collegata</i></td>
                                                                                     <td><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="NumItem">
                                                                                <tr><td>2.1.6.4</td><td>Zeilennummer bei der dazugehörenden Rechnung<br /><i>Numero linea fattura collegata</i></td>
                                                                                     <td><span><xsl:value-of select="NumItem" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCommessaConvenzione">
                                                                                <tr><td>2.1.6.5</td><td>Verkaufs- / Konventionskodex<br /><i>Codice commessa/convenzione</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCommessaConvenzione" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCUP">
                                                                                <tr><td>2.1.6.6</td><td>Staatlicher Projektkodex<br /><i>Codice Unitario Progetto (CUP)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCUP" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="CodiceCIG">
                                                                                <tr><td>2.1.6.7</td><td>Ausschreibungskode<br /><i>Codice Ident. Gara (CIG)</i></td>
                                                                                     <td><span><xsl:value-of select="CodiceCIG" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                      </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI FATTURE COLLEGATE-->

                                                       <!--INIZIO DATI RIFERIMENTO SAL-->
                                                       <xsl:if test="DatiGenerali/DatiSAL">
                                                            <div id="dati-sal">
                                                                 <h3>Baufortschritt - <i>Stato avanzamento lavori</i></h3>
                                                                 <table id="t1">
                                                                      <xsl:if test="DatiGenerali/DatiSAL/RiferimentoFase">
                                                                           <tr><td width="70px">2.1.7.1</td><td width="170px">Nummer Baufortschritt<br /><i>Numero fase avanzamento</i></td>
                                                                                <td width="364px"><xsl:for-each select="DatiGenerali/DatiSAL/RiferimentoFase"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI RIFERIMENTO SAL-->

                                                       <!--INIZIO DATI  DDT-->
                                                       <xsl:if test="DatiGenerali/DatiDDT">
                                                            <div id="dati-ddt">
                                                                 <h3>Daten zum Warenbegleitschein (WBS) - <i>Dati del documento di trasporto (DDT)</i></h3>
                                                                 <table id="t1">
                                                                 <xsl:for-each select="DatiGenerali/DatiDDT">
                                                                           <xsl:if test="NumeroDDT or DataDDT or RiferimentoNumeroLinea">
                                                                                <tr><td width="70px">2.1.8.[1|2|3]</td>
                                                                                <td width="170px">Nummer, Datum WBS<br /><i>Numero data DDT</i></td>
                                                                                     <td width="364px">
                                                                                     <xsl:if test="NumeroDDT"><span><xsl:value-of select="NumeroDDT" /></span></xsl:if>
                                                                                     <xsl:if test="DataDDT"> vom/<i>del</i>&#160;<span><xsl:value-of select="DataDDT" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataDDT" /></xsl:call-template></xsl:if>
                                                                                     <xsl:if test="RiferimentoNumeroLinea"><br />Betrifft Zeile/<i>Rif.linea</i>&#160;<xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></xsl:if>
                                                                                </td></tr>
                                                                           </xsl:if>

                                                                           <!--
                                                                           <xsl:if test="NumeroDDT">
                                                                                <tr><td width="70px">2.1.8.1</td><td width="170px">Nummer WBS<br /><i>Numero DDT</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="NumeroDDT" /></span></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="DataDDT">
                                                                                <tr><td>2.1.8.2</td><td>Datum WBS<br /><i>Data DDT</i></td>
                                                                                     <td><span><xsl:value-of select="DataDDT" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataDDT" /></xsl:call-template></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="RiferimentoNumeroLinea">
                                                                                <tr><td>2.1.8.3</td><td>Zugehörige Zeilennummer der Rechnung<br /><i>Numero linea di fattura a cui si riferisce</i></td>
                                                                                     <td><xsl:for-each select="RiferimentoNumeroLinea"><span><xsl:if test="(position( )) > 1">, </xsl:if><xsl:value-of select="." /></span></xsl:for-each></td>
                                                                                </tr>
                                                                           </xsl:if>
                                                                           -->

                                                                      </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DDT-->

                                                       <!--INIZIO DATI  TRASPORTO-->
                                                       <xsl:if test="DatiGenerali/DatiTrasporto">
                                                            <div id="dati-trasporto">
                                                                 <h3>Daten zum Warentransport - <i>Dati relativi al trasporto</i></h3>
                                                                 <xsl:if test="DatiGenerali/DatiTrasporto/DatiAnagraficiVettore">
                                                                      <h4>Daten des Frächters - <i>Dati del vettore</i></h4>
                                                                 </xsl:if>
                                                                 <table id="t1">
                                                                 <xsl:if test="DatiGenerali/DatiTrasporto/DatiAnagraficiVettore">
                                                                           <xsl:for-each select="DatiGenerali/DatiTrasporto/DatiAnagraficiVettore">
                                                                                <xsl:if test="Anagrafica/Denominazione">
                                                                                     <tr><td width="70px">2.1.9.1.3.1</td><td width="170px">Benennung<br /><i>Denominazione</i></td>
                                                                                          <td width="364px"><span><xsl:value-of select="Anagrafica/Denominazione" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/Titolo">
                                                                                     <tr><td>2.1.9.1.3.4</td><td>Honorartitel<br /><i>Titolo onorifico</i></td>
                                                                                          <td><span><xsl:value-of select="Anagrafica/Titolo" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/Nome">
                                                                                     <tr><td width="90px">2.1.9.1.3.2</td><td width="170px">Name<br /><i>Nome</i></td>
                                                                                          <td width="364px"><span><xsl:value-of select="Anagrafica/Nome" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/Cognome">
                                                                                     <tr><td>2.1.9.1.3.3</td><td>Nachname<br /><i>Cognome</i></td>
                                                                                          <td><span><xsl:value-of select="Anagrafica/Cognome" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IdFiscaleIVA/IdPaese">
                                                                                     <tr><td>2.1.9.1.1</td><td>Mehrwertsteuernummer<br /><i>Ident. fiscale ai fini IVA</i></td>
                                                                                          <td><span><xsl:value-of select="IdFiscaleIVA/IdPaese" /><xsl:value-of select="IdFiscaleIVA/IdCodice" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CodiceFiscale">
                                                                                     <tr><td>2.1.9.1.2</td><td>Steuernummer<br /><i>Codice Fiscale</i></td>
                                                                                          <td><span><xsl:value-of select="CodiceFiscale" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Anagrafica/CodEORI">
                                                                                     <tr><td>2.1.9.1.3.5</td><td>EORI-Kodex<br /><i>Codice EORI</i></td>
                                                                                          <td><span><xsl:value-of select="Anagrafica/CodEORI" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="NumeroLicenzaGuida">
                                                                                     <tr><td>2.1.9.1.4</td><td>Führerscheinnummer<br /><i>Numero licenza di guida</i></td>
                                                                                          <td><span><xsl:value-of select="NumeroLicenzaGuida" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                           </xsl:for-each>
                                                                 </xsl:if>

                                                                 <xsl:if
                                                                      test="DatiGenerali/DatiTrasporto/MezzoTrasporto or DatiGenerali/DatiTrasporto/CausaleTrasporto or DatiGenerali/DatiTrasporto/NumeroColli or DatiGenerali/DatiTrasporto/Descrizione or DatiGenerali/DatiTrasporto/UnitaMisuraPeso or DatiGenerali/DatiTrasporto/PesoLordo or DatiGenerali/DatiTrasporto/PesoNetto or DatiGenerali/DatiTrasporto/DataOraRitiro or DatiGenerali/DatiTrasporto/DataInizioTrasporto or DatiGenerali/DatiTrasporto/TipoResa or DatiGenerali/DatiTrasporto/IndirizzoResa">
                                                                      <tr><td colspan="3"><h4>Weitere Daten - <i>Altri dati</i></h4></td></tr>
                                                                           <xsl:for-each select="DatiGenerali/DatiTrasporto">
                                                                                <xsl:if test="MezzoTrasporto">
                                                                                     <tr><td>2.1.9.2</td><td>Transortmittel<br /><i>Mezzo di trasporto</i></td>
                                                                                          <td><span><xsl:value-of select="MezzoTrasporto" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CausaleTrasporto">
                                                                                     <tr><td>2.1.9.3</td><td>Transportgrund<br /><i>Causale trasporto</i></td>
                                                                                          <td><span><xsl:value-of select="CausaleTrasporto" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="NumeroColli">
                                                                                     <tr><td>2.1.9.4</td><td>Anzahl der Frachtstücke<br /><i>Numero colli trasportati</i></td>
                                                                                          <td><span><xsl:value-of select="NumeroColli" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="Descrizione">
                                                                                     <tr><td>2.1.9.5</td><td>Beschreibung der transportierten Güter<br /><i>Descrizione beni trasportati</i></td>
                                                                                          <td><span><xsl:value-of select="Descrizione" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="UnitaMisuraPeso">
                                                                                     <tr><td>2.1.9.6</td><td>Messeinheit der Ware<br /><i>Unità di misura del peso merce</i></td>
                                                                                          <td><span><xsl:value-of select="UnitaMisuraPeso" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="PesoLordo">
                                                                                     <tr><td>2.1.9.7</td><td>Bruttogewicht<br /><i>Peso lordo</i></td>
                                                                                          <td><span><xsl:value-of select="PesoLordo" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="PesoNetto">
                                                                                     <tr><td>2.1.9.8</td><td>Nettogewicht<br /><i>Peso netto</i></td>
                                                                                          <td><span><xsl:value-of select="PesoNetto" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataOraRitiro">
                                                                                     <tr><td>2.1.9.9</td><td>Datum und Zeit der Abgabe<br /><i>Data e ora ritiro merce</i></td>
                                                                                          <td><span><xsl:value-of select="DataOraRitiro" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataOraRitiro" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataInizioTrasporto">
                                                                                     <tr><td>2.1.9.10</td><td>Datum Transportbeginn<br /><i>Data inizio trasporto</i></td>
                                                                                          <td><span><xsl:value-of select="DataInizioTrasporto" />
                                                                                          </span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataInizioTrasporto" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="TipoResa">
                                                                                     <tr><td>2.1.9.11</td><td>Typologie der Abgabe<br /><i>Tipologia di resa</i></td>
                                                                                          <td><span><xsl:value-of select="TipoResa" /></span> (Kodifizierung nach ICC-Standard)<br /><i>(codifica secondo standard ICC)</i></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Indirizzo">
                                                                                     <tr><td>2.1.9.12.1</td><td>Adresse der Abgabe<br /><i>Indirizzo di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Indirizzo" /></span></td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/NumeroCivico">
                                                                                     <tr><td>2.1.9.12.2</td><td>Hausnummer Abgabeadresse<br /><i>Numero civico indirizzo di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/NumeroCivico" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/CAP">
                                                                                     <tr><td>2.1.9.12.3</td><td>PLZ Adresse Abgabe<br /><i>CAP indirizzo di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/CAP" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Comune">
                                                                                     <tr><td>2.1.9.12.4</td><td>Gemeinde Abgabe<br /><i>Comune di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Comune" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Provincia">
                                                                                     <tr><td>2.1.9.12.5</td><td>Provinz Abgabe<br /><i>Provincia di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Provincia" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IndirizzoResa/Nazione">
                                                                                     <tr><td>2.1.9.12.6</td><td>Land der Abgabe<br /><i>Nazione di resa</i></td>
                                                                                          <td><span><xsl:value-of select="IndirizzoResa/Nazione" /></span></td>
                                                                                          </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataOraConsegna">
                                                                                     <tr><td>2.1.9.13</td><td>Land der Abgabe<br /><i>Nazione di resa</i></td>
                                                                                          <td><span><xsl:value-of select="DataOraConsegna" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                           </xsl:for-each>
                                                                 </xsl:if>
                                                                      </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI TRASPORTO-->

                                                       <!--INIZIO FATTURA PRINCIPALE-->
                                                       <xsl:if test="DatiGenerali/FatturaPrincipale/NumeroFatturaPrincipale">
                                                            <div id="fattura-principale">
                                                                 <h3>Daten zur Hauptrechnung - <i>Dati relativi alla fattura principale</i></h3>
                                                                 <table id="t1">
                                                                      <xsl:if test="DatiGenerali/FatturaPrincipale/NumeroFatturaPrincipale">
                                                                           <tr><td  width="70px">2.1.10.1</td>
                                                                                <td width="170px">Nummer der Hauptrechnung<br /><i>Numero fattura principale</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiGenerali/FatturaPrincipale/NumeroFatturaPrincipale" /></span></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                      <xsl:if test="DatiGenerali/FatturaPrincipale/DataFatturaPrincipale">
                                                                           <tr><td  width="70px">2.1.10.2</td>
                                                                                <td width="170px">Datum Hauptrechnung<br /><i>Data fattura principale</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="DatiGenerali/FatturaPrincipale/DataFatturaPrincipale" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DatiGenerali/FatturaPrincipale/DataFatturaPrincipale" /></xsl:call-template></td>
                                                                           </tr>
                                                                      </xsl:if>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE FATTURA PRINCIPALE-->

                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI GENERALI-->

                                             <!--INIZIO DATI BENI E SERVIZI-->
                                             <xsl:if test="DatiBeniServizi/DettaglioLinee">
                                                  <div id="dati-dettaglio-linee">

                                                       <!--INIZIO DATI DI DETTAGLIO DELLE LINEE-->
                                                       <xsl:if test="DatiBeniServizi/DettaglioLinee">
                                                            <div id="righe">
                                                                 <h3>Daten zur Lieferung - <i>Dati relativi alle linee di dettaglio della fornitura</i></h3>
                                                                <table id="t2">
                                                                  <tr bgcolor="#998c99">
                                                                    <th align="center" width="25">Nr</th>
                                                                    <th width="175">Beschreibung<br />Descrizione cessione/prestazione</th>
                                                                    <th width="65">Menge<br />Quantità</th>
                                                                    <th width="20">ME<br />UM</th>
                                                                    <th width="85">Preis<br />Prezzo</th>
                                                                    <th width="80">Skonto<br />Sconto</th>
                                                                    <th width="85">Preis gesamt<br />Prezzo totale</th>
                                                                    <th width="40">MwSt<br />IVA<br />(%)</th>
                                                                  </tr>
                                                                                                       <xsl:for-each select="DatiBeniServizi/DettaglioLinee">
                                                                                                            <tr>
                                                                    <td align="center"><span><xsl:value-of select="NumeroLinea" /></span></td>
                                                                      <td>
                                                                                                                      <xsl:if test="Descrizione">
                                                                        <xsl:if test="CodiceArticolo">
                                                                          <xsl:for-each select="CodiceArticolo">
                                                                            <xsl:if test="CodiceTipo"><span><xsl:value-of select="CodiceTipo" /></span></xsl:if>
                                                                            <xsl:if test="CodiceValore"><span><xsl:value-of select="CodiceValore" /></span></xsl:if><br />
                                                                          </xsl:for-each>
                                                                        </xsl:if>
                                                                        <span><xsl:value-of select="Descrizione" /></span>
                                                                      </xsl:if>
                                                                      <xsl:if test="DataInizioPeriodo"><br />
                                                                        <xsl:if test="DataInizioPeriodo">Datum Beginn des Leistungszeitraumes <i>inizio periodo di riferimento</i>: <span>
                                                                          <xsl:value-of select="DataInizioPeriodo" /></span><xsl:call-template name="FormatDate">
                                                                          <xsl:with-param name="DateTime" select="DataInizioPeriodo" /></xsl:call-template>
                                                                          <xsl:if test="DataFinePeriodo"><br /> </xsl:if></xsl:if>
                                                                          <xsl:if test="DataFinePeriodo">Datum Ende des Leistungszeitraumes <i>Data fine periodo di riferimento</i>: <span>
                                                                        <xsl:value-of select="DataFinePeriodo" /></span><xsl:call-template name="FormatDate">
                                                                        <xsl:with-param name="DateTime" select="DataFinePeriodo" /></xsl:call-template></xsl:if></xsl:if>
                                                                      <xsl:if test="ScontoMaggiorazione/Tipo"><br /><span><xsl:value-of select="ScontoMaggiorazione/Tipo" /></span>
                                                                        <xsl:variable name="TCP"><xsl:value-of select="ScontoMaggiorazione/Tipo" /></xsl:variable>
                                                                         <xsl:choose>
                                                                              <xsl:when test="$TCP='SC'"> (Skonto)<i>(sconto)</i></xsl:when>
                                                                              <xsl:when test="$TCP='PR'"> (Prämie)<i>(premio)</i></xsl:when>
                                                                              <xsl:when test="$TCP='AB'"> (Gutschrift)<i>(abbuono)</i></xsl:when>
                                                                              <xsl:when test="$TCP='AC'"> (Zusatzspesen)<i>(spesa accessoria)</i></xsl:when>
                                                                              <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                         </xsl:choose><span><xsl:value-of select="ScontoMaggiorazione/Percentuale" />%</span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="Quantita">
                                                                         <span><xsl:value-of select="format-number(Quantita, '#.###,###','euro')" /></span></xsl:if></td>
                                                                         <td><xsl:if test="UnitaMisura"><span><xsl:value-of select="UnitaMisura" /></span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="PrezzoUnitario"><span><xsl:value-of select="format-number(PrezzoUnitario, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="ScontoMaggiorazione/Importo"><span><xsl:value-of select="format-number(ScontoMaggiorazione/Importo, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                         <td align="right"><xsl:if test="PrezzoTotale"><span><xsl:value-of select="format-number(PrezzoTotale, '###.##0,00', 'euro')"  /></span></xsl:if></td>
                                                                         <td align="center"><xsl:if test="AliquotaIVA">
                                                                         <xsl:variable name="IVA" select="AliquotaIVA"/>
                                                                         <xsl:choose>
                                                                              <xsl:when test="$IVA='0.00' or $IVA='0'">
                                                                                   <xsl:if test="Natura"><span><xsl:value-of select="Natura" /></span></xsl:if>
                                                                              </xsl:when>
                                                                              <xsl:otherwise><span><xsl:value-of select="format-number(AliquotaIVA, '##0')" /></span></xsl:otherwise>
                                                                         </xsl:choose>
                                                                         </xsl:if></td>

                                                                      </tr>
                                                                 </xsl:for-each>
                                                              </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI DI DETTAGLIO DELLE LINEE-->

                                                       <!--INIZIO DATI DI RIEPILOGO ALIQUOTE E NATURE-->
                                                       <xsl:if test="DatiBeniServizi/DatiRiepilogo">
                                                            <div id="riepilogo-aliquote-nature">
                                                                 <h3>Daten zur MwSt. nach Satz und Art - <i>Dati di riepilogo per aliquota IVA e natura</i></h3>
                                                                 <table border="1" width="610px">
                                                                 <tr bgcolor="#998c99">
                                                                        <th width="45">MwSt<br />Aliq.</th>
                                                                        <th width="70">Art<br />Natura</th>
                                                                        <th width="75">Spesen<br />Spese</th>
                                                                        <th width="75">Rundung<br />Arroton.</th>
                                                                        <th width="75">Grundlage<br />Imponibile</th>
                                                                        <th width="75">Steuer<br />Imposta</th>
                                                                        <th width="75">Fälligkeit<br />Esigibilita</th>
                                                                        <th width="85">Ges.Bezug<br />Rif.Norma</th>
                                                                 </tr>
                                                                 <xsl:for-each select="DatiBeniServizi/DatiRiepilogo">
                                                                      <tr>
                                                                           <td align="center"><xsl:if test="AliquotaIVA">
                                                                                     <xsl:variable name="IVA" select="AliquotaIVA"/>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$IVA='0.00' or $IVA='0'">
                                                                                               <xsl:if test="Natura"><span><xsl:value-of select="Natura" /></span></xsl:if>
                                                                                          </xsl:when>
                                                                                          <xsl:otherwise><span><xsl:value-of select="format-number(AliquotaIVA, '##0')" /></span></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                                     </xsl:if></td>

                                                                           <td><xsl:if test="Natura"><xsl:variable name="NAT1"><xsl:value-of select="Natura" /></xsl:variable>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$NAT1='N1'"> (escluse ex art.15)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N2'"> (non soggette)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N3'"> (non imponibili)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N4'"> (esenti)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N5'"> (regime del margine)</xsl:when>
                                                                                          <xsl:when test="$NAT1='N6'"> (inversione contabile)</xsl:when>
                                                                                          <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                             </xsl:if></td>
                                                                           <td align="right"><xsl:if test="SpeseAccessorie"><span><xsl:value-of select="format-number(SpeseAccessorie, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td align="right"><xsl:if test="Arrotondamento"><span><xsl:value-of select="format-number(Arrotondamento, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td align="right"><xsl:if test="ImponibileImporto"><span><xsl:variable name="Ii" select="ImponibileImporto" /><xsl:value-of select="format-number($Ii, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td align="right"><xsl:if test="Imposta"><span><xsl:value-of select="format-number(Imposta, '###.##0,00', 'euro')" /></span></xsl:if></td>
                                                                           <td><xsl:if test="EsigibilitaIVA"><span><xsl:value-of select="EsigibilitaIVA" /></span><xsl:variable name="EI"><xsl:value-of select="EsigibilitaIVA" /></xsl:variable>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$EI='I'"> (esigibilità immediata)</xsl:when>
                                                                                          <xsl:when test="$EI='D'"> (esigibilità differita)</xsl:when>
                                                                                          <xsl:when test="$EI='S'"> (scissione dei pagamenti)</xsl:when>
                                                                                          <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                              </xsl:if></td>
                                                                           <td><xsl:if test="RiferimentoNormativo"><span><xsl:value-of select="RiferimentoNormativo" /></span></xsl:if></td>
                                                                      </tr>
                                                                 </xsl:for-each>
                                                                 </table>
                                                            </div>
                                                       </xsl:if>
                                                       <!--FINE DATI RIEPILOGO ALIQUOTE E NATURE-->

                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI BENI E SERVIZI-->

                                             <!--INIZIO DATI VEICOLI-->
                                             <xsl:if test="DatiVeicoli">
                                                  <div id="dati-veicoli"><h3>Daten zum Transportfahrzeug - <i>Dati Veicoli ex art. 38 dl 331/1993</i></h3>
                                                       <table id="t1">
                                                            <xsl:for-each select="DatiVeicoli">
                                                                 <xsl:if test="Data">
                                                                      <tr><td width="70px">2.3.1</td><td width="170px">Datum Ersteinschreibung des Fahrzeuges<br /><i> prima immatricolazione / iscrizione PR </i></td>
                                                                           <td width="364px"><span><xsl:value-of select="Data" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="Data" /></xsl:call-template></td>
                                                                      </tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="TotalePercorso">
                                                                      <tr><td>2.3.2</td><td>Gesamtlänge Fahrt<br /><i>Totale percorso</i></td>
                                                                           <td><span><xsl:value-of select="TotalePercorso" /></span></td>
                                                                      </tr>
                                                                 </xsl:if>
                                                            </xsl:for-each>
                                                       </table>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI VEICOLI-->

                                             <!--INIZIO DATI PAGAMENTO-->
                                             <xsl:if test="DatiPagamento">
                                                  <div id="dati-pagamento-condizioni">
                                                       <h3>Daten zur Bezahlung - <i>Dati relativi al pagamento</i></h3>
                                                            <xsl:for-each select="DatiPagamento">
                                                                 <xsl:if test="CondizioniPagamento">
                                                                 <table id="t1">
                                                                      <tr><td width="70px">2.4.1</td><td width="170px">Zahlungsbedingungen<br /><i>Condizioni di pagamento</i></td>
                                                                           <td width="364px"><span><xsl:value-of select="CondizioniPagamento" /></span><xsl:variable name="CP"><xsl:value-of select="CondizioniPagamento" /></xsl:variable>
                                                                           <xsl:choose>
                                                                                <xsl:when test="$CP='TP01'"> (Ratenzahlung)<i>(pagamento a rate)</i></xsl:when>
                                                                                <xsl:when test="$CP='TP02'"> (Einmalzahlung)<i>(pagamento completo)</i></xsl:when>
                                                                                <xsl:when test="$CP='TP03'"> (Vorauszahlung)<i>(anticipo)</i></xsl:when>
                                                                                <xsl:when test="$CP=''"></xsl:when>
                                                                                <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                           </xsl:choose></td>
                                                                      </tr>
                                                                 </table>
                                                                 </xsl:if>

                                                                 <xsl:if test="DettaglioPagamento">
                                                                      <!--
                                                                      <tr><td></td><td colspan="2"><h5>Details zur Bezahlung - <i>Dettaglio pagamento</i></h5></td></tr>
                                                                      -->
                                                                 <xsl:variable name="TOTALRATEN" select="count(DettaglioPagamento)" />
                                                                 <xsl:for-each select="DettaglioPagamento">
                                                                 <xsl:if test="$TOTALRATEN>1">
                                                                      <h4>Rate Nr. <i>Rata N°</i>:&#160;<xsl:value-of select="position()" />&#160;<xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataScadenzaPagamento" /></xsl:call-template></h4>
                                                                 </xsl:if>
                                                                 <table id="t1">
                                                                      <xsl:if test="Beneficiario">
                                                                           <tr><td width="70px">2.4.2.1</td><td width="170px">Zahlungsempfänger<br /><i>Beneficiario pagamento</i></td>
                                                                                <td width="364px"><span><xsl:value-of select="Beneficiario" /></span></td>
                                                                           </tr>
                                                                           </xsl:if>
                                                                           <xsl:if test="ModalitaPagamento">
                                                                                <tr><td width="70px">2.4.2.2</td><td width="170px">Zahlungsmodalität<br /><i>Modalità di pagamento</i></td>
                                                                                     <td width="364px"><span><xsl:value-of select="ModalitaPagamento" /></span><xsl:variable name="MP"><xsl:value-of select="ModalitaPagamento" /></xsl:variable>
                                                                                     <xsl:choose>
                                                                                          <xsl:when test="$MP='MP01'"> (bar)<i>(contanti)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP02'"> (Scheck)<i>(assegno)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP03'"> (Zirkularscheck)<i>(assegno circolare)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP04'"> (über Schatzamt)<i>(contanti presso Tesoreria)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP05'"> (Überweisung)<i>(bonifico)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP06'"> (Wechsel)<i>(vaglia cambiario)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP07'"> (Bankmitteilung)<i>(bollettino bancario)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP08'"> (Zahlkarte)<i>(carta di pagamento)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP09'"> (RID)</xsl:when>
                                                                                          <xsl:when test="$MP='MP10'"> (RID normal)<i>(RID utenze)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP11'"> (RID Schnell)<i>(RID veloce)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP12'"> (RIBA)</xsl:when>
                                                                                          <xsl:when test="$MP='MP13'"> (MAV)</xsl:when>
                                                                                          <xsl:when test="$MP='MP14'"> (quietanza erario)</xsl:when>
                                                                                          <xsl:when test="$MP='MP15'"> (giroconto su conti di con</xsl:when>
                                                                                          <xsl:when test="$MP='MP16'"> (Bankdauerauftrag)<i>(domiciliazione bancaria)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP17'"> (Postdauerauftrag)<i>(domiciliazione postale)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP18'"> (Postüberweisung)<i>(bollettino di c/c postale)</i></xsl:when>
                                                                                          <xsl:when test="$MP='MP19'"> (SEPA Direct Debit)</xsl:when>
                                                                                          <xsl:when test="$MP='MP20'"> (SEPA Direct Debit CORE)</xsl:when>
                                                                                          <xsl:when test="$MP='MP21'"> (SEPA Direct Debit B2B)</xsl:when>
                                                                                          <xsl:when test="$MP=''"></xsl:when>
                                                                                          <xsl:otherwise><fehler> (!!! falscher Kodex !!!)<i>(!!! codice non previsto !!!)</i></fehler></xsl:otherwise>
                                                                                     </xsl:choose>
                                                                                     </td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataRiferimentoTerminiPagamento">
                                                                                     <tr><td>2.4.2.3</td><td>Beginn Zahlungsfrist<br /><i>Dec. termine pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="DataRiferimentoTerminiPagamento" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataRiferimentoTerminiPagamento" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="GiorniTerminiPagamento">
                                                                                     <tr><td>2.4.2.4</td><td>Zahlungsziel (Tagen)<br /><i>Term. pagamento (giorni)</i></td>
                                                                                          <td><span><xsl:value-of select="GiorniTerminiPagamento" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataScadenzaPagamento">
                                                                                     <tr><td>2.4.2.5</td><td>Ende Zahlungsziel<br /><i>Data scadenza pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="DataScadenzaPagamento" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataScadenzaPagamento" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="ImportoPagamento">
                                                                                     <tr><td>2.4.2.6</td><td>Betrag<br /><i>Importo</i></td>
                                                                                          <td><span><xsl:value-of select="$Valuta" />&#160;<xsl:value-of select="format-number(ImportoPagamento, '###.##0,00', 'euro')" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CodUfficioPostale">
                                                                                     <tr><td>2.4.2.7</td><td>Kodex Postamt<br /><i>Codice Ufficio Postale</i></td>
                                                                                          <td><span><xsl:value-of select="CodUfficioPostale" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="TitoloQuietanzante">
                                                                                     <tr><td>2.4.2.11</td><td>Titel des Quittierenden<br /><i>Titolo del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="TitoloQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="NomeQuietanzante">
                                                                                     <tr><td>2.4.2.8</td><td>Name des Quittierenden<br /><i>Nome del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="NomeQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CognomeQuietanzante">
                                                                                     <tr><td>2.4.2.9</td><td>Nachname des Quittierenden<br /><i>Cognome del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="CognomeQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CFQuietanzante">
                                                                                     <tr><td>2.4.2.10</td><td>StNr. des Quittierenden<br /><i>CF del quietanzante</i></td>
                                                                                          <td><span><xsl:value-of select="CFQuietanzante" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IstitutoFinanziario">
                                                                                     <tr><td>2.4.2.12</td><td>Finanzinstitut<br /><i>Istituto finanziario</i></td>
                                                                                          <td><span><xsl:value-of select="IstitutoFinanziario" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="IBAN">
                                                                                     <tr><td>2.4.2.13</td><td>IBAN<br /><i>Codice IBAN</i></td>
                                                                                          <td><span><xsl:value-of select="IBAN" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="ABI">
                                                                                     <tr><td>2.4.2.14</td><td>ABI<br /><i>Codice ABI</i></td>
                                                                                          <td><span><xsl:value-of select="ABI" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CAB">
                                                                                     <tr><td>2.4.2.15</td><td>CAB<br /><i>Codice CAB</i></td>
                                                                                          <td><span><xsl:value-of select="CAB" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="BIC">
                                                                                     <tr><td>2.4.2.16</td><td>BIC<br /><i>Codice BIC</i></td>
                                                                                          <td><span><xsl:value-of select="BIC" /></span></td>
                                                                                          </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="ScontoPagamentoAnticipato">
                                                                                     <tr><td>2.4.2.17</td><td>Skonto für Zahlung vor Zahlungsziel<br /><i>Sconto per pagamento anticipato</i></td>
                                                                                          <td><span><xsl:value-of select="ScontoPagamentoAnticipato" /></span></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataLimitePagamentoAnticipato">
                                                                                     <tr><td>2.4.2.18</td><td>letzter Termin für Zahlung vor Zahlungsziel<br />
                                                                                          <i>Data limite per il pagamento anticipato</i></td>
                                                                                          <td><span><xsl:value-of select="DataLimitePagamentoAnticipato" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataLimitePagamentoAnticipato" /></xsl:call-template></td>
                                                                                     </tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="PenalitaPagamentiRitardati">
                                                                                     <tr><td>2.4.2.19</td><td>Pönale für verspätete Zahlung<br /><i>Penale per ritardato pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="PenalitaPagamentiRitardati" /></span></td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="DataDecorrenzaPenale">
                                                                                     <tr><td>2.4.2.20</td><td>Beginndatum für Anwendung der Pönale<br /><i>Data di decorrenza della penale</i></td>
                                                                                          <td><span><xsl:value-of select="DataDecorrenzaPenale" /></span><xsl:call-template name="FormatDate"><xsl:with-param name="DateTime" select="DataDecorrenzaPenale" /></xsl:call-template></td></tr>
                                                                                </xsl:if>
                                                                                <xsl:if test="CodicePagamento">
                                                                                     <tr><td>2.4.2.21</td><td>Zahlungs-Kodex<br /><i>Codice pagamento</i></td>
                                                                                          <td><span><xsl:value-of select="CodicePagamento" /></span></td></tr>
                                                                                </xsl:if>
                                                                           </table>
                                                                      </xsl:for-each>
                                                                 </xsl:if>
                                                            </xsl:for-each>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE DATI PAGAMENTO-->

                                             <!--INIZIO ALLEGATI-->
                                             <xsl:if test="Allegati">
                                                  <div id="allegati"><h3>Daten zu den Anlagen - <i>Dati relativi agli allegati</i></h3><xsl:for-each select="Allegati">
                                                            <table id="t1">
                                                                 <xsl:if test="NomeAttachment">
                                                                      <tr><td width="70px">2.5.1</td><td width="170px">Name der Anlage<br /><i>Nome dell'allegato</i></td>
                                                                           <td width="364px"><span><xsl:value-of select="NomeAttachment" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="AlgoritmoCompressione">
                                                                      <tr><td>2.5.2</td><td>Kompressionsalgoritmus<br /><i>Algoritmo di compressione</i></td>
                                                                           <td><span><xsl:value-of select="AlgoritmoCompressione" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="FormatoAttachment">
                                                                      <tr><td>2.5.3</td><td>Format<br /><i>Formato</i></td>
                                                                           <td><span><xsl:value-of select="FormatoAttachment" /></span></td></tr>
                                                                 </xsl:if>
                                                                 <xsl:if test="DescrizioneAttachment">
                                                                      <tr><td>2.5.4</td>
                                                                           <td>Beschreibung<br /><i>Descrizione</i></td>
                                                                           <td><span><xsl:value-of select="DescrizioneAttachment" /></span></td></tr>
                                                                 </xsl:if>
                                                            </table>
                                                       </xsl:for-each>
                                                  </div>
                                             </xsl:if>
                                             <!--FINE ALLEGATI-->

                                             <div class="footer"><xsl:value-of select="$VersionFT" /><br /><a href="http://www.fatturapa.gov.it">www.fatturapa.gov.it</a></div>
                                        </div>
                                   </xsl:for-each>
                                   <!--FINE BODY-->

                              </div>
                         </xsl:if>
                    </div>
               </body>
          </html>
     </xsl:template>
</xsl:stylesheet>
