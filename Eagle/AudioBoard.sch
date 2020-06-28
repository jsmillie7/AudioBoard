<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Teensy3.2">
<packages>
<package name="TEENSY4.0">
<pad name="12" x="1.27" y="1.27" drill="1"/>
<pad name="11" x="1.27" y="3.81" drill="1"/>
<pad name="10" x="1.27" y="6.35" drill="1"/>
<pad name="9" x="1.27" y="8.89" drill="1"/>
<pad name="8" x="1.27" y="11.43" drill="1"/>
<pad name="7" x="1.27" y="13.97" drill="1"/>
<pad name="6" x="1.27" y="16.51" drill="1"/>
<pad name="5" x="1.27" y="19.05" drill="1"/>
<pad name="4" x="1.27" y="21.59" drill="1"/>
<pad name="3" x="1.27" y="24.13" drill="1"/>
<pad name="2" x="1.27" y="26.67" drill="1"/>
<pad name="TX" x="1.27" y="29.21" drill="1"/>
<pad name="RX" x="1.27" y="31.75" drill="1"/>
<pad name="GND" x="1.27" y="34.29" drill="1" shape="square"/>
<pad name="VBAT" x="3.81" y="1.27" drill="1"/>
<pad name="3.3V2" x="6.35" y="1.27" drill="1"/>
<pad name="GND2" x="8.89" y="1.27" drill="1"/>
<pad name="PROG" x="11.43" y="1.27" drill="1"/>
<pad name="ON/OFF" x="13.97" y="1.27" drill="1"/>
<pad name="13" x="16.51" y="1.27" drill="1"/>
<pad name="14" x="16.51" y="3.81" drill="1"/>
<pad name="15" x="16.51" y="6.35" drill="1"/>
<pad name="16" x="16.51" y="8.89" drill="1"/>
<pad name="17" x="16.51" y="11.43" drill="1"/>
<pad name="18" x="16.51" y="13.97" drill="1"/>
<pad name="19" x="16.51" y="16.51" drill="1"/>
<pad name="20" x="16.51" y="19.05" drill="1"/>
<pad name="21" x="16.51" y="21.59" drill="1"/>
<pad name="22" x="16.51" y="24.13" drill="1"/>
<pad name="23" x="16.51" y="26.67" drill="1"/>
<pad name="3.3V" x="16.51" y="29.21" drill="1"/>
<pad name="AGND" x="16.51" y="31.75" drill="1"/>
<pad name="VIN" x="16.51" y="34.29" drill="1"/>
<text x="8.89" y="17.78" size="1.27" layer="21" rot="R90" align="center">Teensy 4.0</text>
<wire x1="0" y1="0" x2="0" y2="35.56" width="0.127" layer="21" style="shortdash"/>
<wire x1="0" y1="35.56" x2="17.78" y2="35.56" width="0.127" layer="21" style="shortdash"/>
<wire x1="17.78" y1="35.56" x2="17.78" y2="0" width="0.127" layer="21" style="shortdash"/>
<wire x1="17.78" y1="0" x2="0" y2="0" width="0.127" layer="21" style="shortdash"/>
</package>
</packages>
<symbols>
<symbol name="T4.0">
<wire x1="0" y1="-10.16" x2="0" y2="35.56" width="0.254" layer="94"/>
<wire x1="0" y1="35.56" x2="20.32" y2="35.56" width="0.254" layer="94"/>
<wire x1="20.32" y1="35.56" x2="20.32" y2="-10.16" width="0.254" layer="94"/>
<wire x1="20.32" y1="-10.16" x2="0" y2="-10.16" width="0.254" layer="94"/>
<pin name="GND" x="-5.08" y="33.02" visible="pin" length="middle"/>
<pin name="RX" x="-5.08" y="30.48" visible="pin" length="middle"/>
<pin name="TX" x="-5.08" y="27.94" visible="pin" length="middle"/>
<pin name="2" x="-5.08" y="25.4" visible="pin" length="middle"/>
<pin name="3" x="-5.08" y="22.86" visible="pin" length="middle"/>
<pin name="4" x="-5.08" y="20.32" visible="pin" length="middle"/>
<pin name="5" x="-5.08" y="17.78" visible="pin" length="middle"/>
<pin name="6" x="-5.08" y="15.24" visible="pin" length="middle"/>
<pin name="7" x="-5.08" y="12.7" visible="pin" length="middle"/>
<pin name="8" x="-5.08" y="10.16" visible="pin" length="middle"/>
<pin name="9" x="-5.08" y="7.62" visible="pin" length="middle"/>
<pin name="10" x="-5.08" y="5.08" visible="pin" length="middle"/>
<pin name="11" x="-5.08" y="2.54" visible="pin" length="middle"/>
<pin name="14" x="25.4" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="15" x="25.4" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="16" x="25.4" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="17" x="25.4" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="18" x="25.4" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="19" x="25.4" y="15.24" visible="pin" length="middle" rot="R180"/>
<pin name="20" x="25.4" y="17.78" visible="pin" length="middle" rot="R180"/>
<pin name="21" x="25.4" y="20.32" visible="pin" length="middle" rot="R180"/>
<pin name="22" x="25.4" y="22.86" visible="pin" length="middle" rot="R180"/>
<pin name="23" x="25.4" y="25.4" visible="pin" length="middle" rot="R180"/>
<pin name="3.3V" x="25.4" y="27.94" visible="pin" length="middle" rot="R180"/>
<pin name="AGND" x="25.4" y="30.48" visible="pin" length="middle" rot="R180"/>
<pin name="VIN" x="25.4" y="33.02" visible="pin" length="middle" rot="R180"/>
<text x="10.16" y="38.1" size="1.778" layer="94" rot="R180" align="center">Teensy 4.0</text>
<pin name="VBAT" x="5.08" y="-15.24" visible="pin" length="middle" rot="R90"/>
<pin name="3.3V2" x="7.62" y="-15.24" visible="pin" length="middle" rot="R90"/>
<pin name="GND2" x="10.16" y="-15.24" visible="pin" length="middle" rot="R90"/>
<pin name="PROG" x="12.7" y="-15.24" visible="pin" length="middle" rot="R90"/>
<pin name="ON/OFF" x="15.24" y="-15.24" visible="pin" length="middle" rot="R90"/>
<pin name="12" x="-5.08" y="0" visible="pin" length="middle"/>
<pin name="13" x="25.4" y="0" visible="pin" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TEENSY4.0">
<gates>
<gate name="G$1" symbol="T4.0" x="0" y="15.24"/>
</gates>
<devices>
<device name="" package="TEENSY4.0">
<connects>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="3.3V2" pad="3.3V2"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="AGND" pad="AGND"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="ON/OFF" pad="ON/OFF"/>
<connect gate="G$1" pin="PROG" pad="PROG"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="VBAT" pad="VBAT"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="Teensy3.2" deviceset="TEENSY4.0" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="15.24" y="25.4" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
