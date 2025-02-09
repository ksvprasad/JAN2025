<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://practice.com/FMW/BusinessService/BusinessServiceBPELProcess" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/BusinessServiceBPELProcess.wsdl"/>
            <oracle-xsl-mapper:rootElement name="BusinessRequest" namespace="http://practice.com/FMW/BusinessService/BusinessServiceBPELProcess"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/BusinessServiceBPELProcess.wsdl"/>
            <oracle-xsl-mapper:rootElement name="BusinessResponce" namespace="http://practice.com/FMW/BusinessService/BusinessServiceBPELProcess"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [THU JAN 23 01:53:26 IST 2025].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:BusinessResponce>
         <ns0:OrderID>
            <xsl:value-of select="/ns0:BusinessRequest/ns0:OrderID"/>
         </ns0:OrderID>
         <xsl:for-each select="/ns0:BusinessRequest/ns0:ItemInfo">
            <ns0:ItemInfo>
               <ns0:ItemName>
                  <xsl:value-of select="ns0:ItemName"/>
               </ns0:ItemName>
               <ns0:ItemCost>
                  <xsl:value-of select="ns0:ItemCost"/>
               </ns0:ItemCost>
            </ns0:ItemInfo>
         </xsl:for-each>
         <ns0:TotalCost>
            <xsl:value-of select="sum (/ns0:BusinessRequest/ns0:ItemInfo/ns0:ItemCost )"/>
         </ns0:TotalCost>
      </ns0:BusinessResponce>
   </xsl:template>
</xsl:stylesheet>
