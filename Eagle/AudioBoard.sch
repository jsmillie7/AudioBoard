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
<layer number="101" name="Hidden" color="15" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Changes" color="12" fill="1" visible="yes" active="yes"/>
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
<library name="NRF24L01">
<description>&lt;b&gt;DIY Modules for Arduino, Raspberry Pi, CubieBoard etc.&lt;/b&gt;
&lt;br&gt;&lt;br&gt;
The library contains a list of symbols and footprints for popular, cheap and easy-to-use electronic modules.&lt;br&gt;
The modules are intend to work with microprocessor-based platforms such as &lt;a href="http://arduino.cc"&gt;Arduino&lt;/a&gt;, &lt;a href="http://raspberrypi.org/"&gt;Raspberry Pi&lt;/a&gt;, &lt;a href="http://cubieboard.org/"&gt;CubieBoard&lt;/a&gt;, &lt;a href="http://beagleboard.org/"&gt;BeagleBone&lt;/a&gt; and many others. There are many manufacturers of the modules in the world. Almost all of them can be bought on &lt;a href="ebay.com"&gt;ebay.com&lt;/a&gt;.&lt;br&gt;
&lt;br&gt;
By using this library, you can design a PCB for devices created with usage of modules. Even if you do not need to create PCB design, you can also use the library to quickly document your work by drawing schematics of devices built by you.&lt;br&gt;
&lt;br&gt;
The latest version, examples, photos and much more can be found at: &lt;b&gt;&lt;a href="http://diymodules.org/eagle"&gt;diymodules.org/eagle&lt;/a&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;
Comments, suggestions and bug reports please send to: &lt;b&gt;&lt;a href="mailto:eagle@diymodules.org"&gt;eagle@diymodules.org&lt;/b&gt;&lt;/a&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Version: 1.8.0 (2017-Jul-02)&lt;/i&gt;&lt;br&gt;
&lt;i&gt;Created by: Miroslaw Brudnowski&lt;/i&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Released under the Creative Commons Attribution 4.0 International License: &lt;a href="http://creativecommons.org/licenses/by/4.0"&gt;http://creativecommons.org/licenses/by/4.0&lt;/a&gt;&lt;/i&gt;
&lt;br&gt;&lt;br&gt;
&lt;center&gt;
&lt;a href="http://diymodules.org/eagle"&gt;&lt;img src="http://www.diymodules.org/img/diymodules-lbr-image.php?v=1.8.0" alt="DIYmodules.org"&gt;&lt;/a&gt;
&lt;/center&gt;</description>
<packages>
<package name="WIRELESS-NRF24L01">
<description>&lt;b&gt;2.4 GHz Wireless Module&lt;/b&gt; based on &lt;b&gt;NRF24L01&lt;/b&gt; chip</description>
<pad name="1" x="-12.7" y="6.35" drill="1.016" shape="square"/>
<pad name="8" x="-10.16" y="-1.27" drill="1.016"/>
<pad name="6" x="-10.16" y="1.27" drill="1.016"/>
<pad name="4" x="-10.16" y="3.81" drill="1.016"/>
<pad name="2" x="-10.16" y="6.35" drill="1.016"/>
<pad name="3" x="-12.7" y="3.81" drill="1.016"/>
<pad name="5" x="-12.7" y="1.27" drill="1.016"/>
<pad name="7" x="-12.7" y="-1.27" drill="1.016"/>
<text x="0" y="8.89" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-7.62" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
<wire x1="-14.3764" y1="8.001" x2="8.128" y2="8.001" width="0.127" layer="21"/>
<wire x1="8.128" y1="8.001" x2="14.6304" y2="8.001" width="0.127" layer="21"/>
<wire x1="14.6304" y1="8.001" x2="14.6304" y2="-6.985" width="0.127" layer="21"/>
<wire x1="14.6304" y1="-6.985" x2="8.128" y2="-6.985" width="0.127" layer="21"/>
<wire x1="8.128" y1="-6.985" x2="-14.3764" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-14.3764" y1="-6.985" x2="-14.3764" y2="8.001" width="0.127" layer="21"/>
<wire x1="-13.97" y1="6.985" x2="-13.335" y2="7.62" width="0.127" layer="21"/>
<wire x1="-13.335" y1="7.62" x2="-9.525" y2="7.62" width="0.127" layer="21"/>
<wire x1="-9.525" y1="7.62" x2="-8.89" y2="6.985" width="0.127" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="5.715" width="0.127" layer="21"/>
<wire x1="-8.89" y1="5.715" x2="-9.525" y2="5.08" width="0.127" layer="21"/>
<wire x1="-9.525" y1="5.08" x2="-8.89" y2="4.445" width="0.127" layer="21"/>
<wire x1="-8.89" y1="4.445" x2="-8.89" y2="3.175" width="0.127" layer="21"/>
<wire x1="-8.89" y1="3.175" x2="-9.525" y2="2.54" width="0.127" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-8.89" y2="1.905" width="0.127" layer="21"/>
<wire x1="-8.89" y1="1.905" x2="-8.89" y2="0.635" width="0.127" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-9.525" y2="0" width="0.127" layer="21"/>
<wire x1="-9.525" y1="0" x2="-8.89" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-8.89" y1="-0.635" x2="-8.89" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-8.89" y1="-1.905" x2="-9.525" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-10.795" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-11.43" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-11.43" y1="-1.905" x2="-12.065" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="-13.335" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-13.97" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-13.97" y1="-1.905" x2="-13.97" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-13.97" y1="-0.635" x2="-13.335" y2="0" width="0.127" layer="21"/>
<wire x1="-13.335" y1="0" x2="-13.97" y2="0.635" width="0.127" layer="21"/>
<wire x1="-13.97" y1="0.635" x2="-13.97" y2="1.905" width="0.127" layer="21"/>
<wire x1="-13.97" y1="1.905" x2="-13.335" y2="2.54" width="0.127" layer="21"/>
<wire x1="-13.335" y1="2.54" x2="-13.97" y2="3.175" width="0.127" layer="21"/>
<wire x1="-13.97" y1="3.175" x2="-13.97" y2="4.445" width="0.127" layer="21"/>
<wire x1="-13.97" y1="4.445" x2="-13.335" y2="5.08" width="0.127" layer="21"/>
<wire x1="-13.335" y1="5.08" x2="-13.97" y2="5.715" width="0.127" layer="21"/>
<wire x1="-13.97" y1="5.715" x2="-13.97" y2="6.985" width="0.127" layer="21"/>
<wire x1="8.128" y1="8.001" x2="8.128" y2="-6.985" width="0.127" layer="21"/>
<text x="12.192" y="0.508" size="1.778" layer="21" rot="R90" align="bottom-center">ANTENNA</text>
</package>
</packages>
<symbols>
<symbol name="WIRELESS-NRF24L01">
<description>&lt;b&gt;2.4 GHz Wireless Module&lt;/b&gt; based on &lt;b&gt;NRF24L01&lt;/b&gt; chip</description>
<pin name="GND" x="-22.86" y="10.16" length="middle" direction="pwr"/>
<pin name="VCC" x="-22.86" y="7.62" length="middle" direction="pwr"/>
<pin name="CE" x="-22.86" y="5.08" length="middle"/>
<pin name="CSN" x="-22.86" y="2.54" length="middle"/>
<pin name="SCK" x="-22.86" y="0" length="middle"/>
<pin name="MOSI" x="-22.86" y="-2.54" length="middle"/>
<pin name="MISO" x="-22.86" y="-5.08" length="middle"/>
<pin name="IRQ" x="-22.86" y="-7.62" length="middle"/>
<wire x1="-17.78" y1="12.7" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="17.78" y2="12.7" width="0.254" layer="94"/>
<wire x1="17.78" y1="12.7" x2="17.78" y2="-10.16" width="0.254" layer="94"/>
<wire x1="17.78" y1="-10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-17.78" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-10.16" x2="-17.78" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<text x="12.7" y="1.27" size="2.54" layer="94" rot="R90" align="center">ANTENNA</text>
<text x="20.32" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="20.32" y="7.62" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="WIRELESS-NRF24L01" prefix="M">
<description>&lt;b&gt;2.4 GHz Wireless Module&lt;/b&gt; based on &lt;b&gt;NRF24L01&lt;/b&gt; chip
&lt;p&gt;More details available here:&lt;br&gt;
&lt;a href="http://www.electrodragon.com/w/NRF24L01"&gt;http://www.electrodragon.com/w/NRF24L01&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;b&gt;&lt;a href="http://www.ebay.com/sch/nrf24l01+arduino"&gt;Click here to find device on ebay.com&lt;/a&gt;&lt;/b&gt;&lt;/p&gt;

&lt;p&gt;&lt;img alt="photo" src="http://www.diymodules.org/img/device-photo.php?name=WIRELESS-NRF24L01"&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="WIRELESS-NRF24L01" x="0" y="0"/>
</gates>
<devices>
<device name="" package="WIRELESS-NRF24L01">
<connects>
<connect gate="G$1" pin="CE" pad="3"/>
<connect gate="G$1" pin="CSN" pad="4"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="IRQ" pad="8"/>
<connect gate="G$1" pin="MISO" pad="7"/>
<connect gate="G$1" pin="MOSI" pad="6"/>
<connect gate="G$1" pin="SCK" pad="5"/>
<connect gate="G$1" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SPDIF">
<packages>
<package name="SPDIF-IN">
<wire x1="9.906" y1="13.716" x2="9.906" y2="0.216" width="0.127" layer="21" style="shortdash"/>
<wire x1="9.906" y1="0.216" x2="0.206" y2="0.216" width="0.127" layer="21" style="shortdash"/>
<wire x1="0.206" y1="0.216" x2="0.206" y2="11.366" width="0.127" layer="21" style="shortdash"/>
<wire x1="0.206" y1="11.366" x2="0.206" y2="13.716" width="0.127" layer="21" style="shortdash"/>
<wire x1="0.206" y1="13.716" x2="9.906" y2="13.716" width="0.127" layer="21" style="shortdash"/>
<pad name="SIGNAL" x="2.516" y="2.991" drill="0.65" rot="R180"/>
<pad name="VCC" x="7.596" y="2.991" drill="0.65" rot="R180"/>
<pad name="GND" x="5.056" y="2.991" drill="0.65" rot="R180"/>
<pad name="NC2" x="7.596" y="5.616" drill="0.7" rot="R180"/>
<pad name="NC1" x="2.516" y="5.616" drill="0.7" rot="R180"/>
<wire x1="9.806" y1="11.366" x2="0.206" y2="11.366" width="0.127" layer="21"/>
<text x="7.686" y="2.016" size="0.68" layer="21" rot="R180" align="center">3</text>
<text x="5.106" y="2.016" size="0.68" layer="21" rot="R180" align="center">2</text>
<text x="2.526" y="2.016" size="0.68" layer="21" rot="R180" align="center">1</text>
<text x="2.526" y="4.516" size="0.68" layer="21" rot="R180" align="center">5</text>
<text x="7.586" y="4.516" size="0.68" layer="21" rot="R180" align="center">4</text>
<text x="2.032" y="12.065" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="SPDIF-OUT">
<wire x1="9.906" y1="13.716" x2="9.906" y2="0.216" width="0.127" layer="21" style="shortdash"/>
<wire x1="9.906" y1="0.216" x2="0.206" y2="0.216" width="0.127" layer="21" style="shortdash"/>
<wire x1="0.206" y1="0.216" x2="0.206" y2="11.366" width="0.127" layer="21" style="shortdash"/>
<wire x1="0.206" y1="11.366" x2="0.206" y2="13.716" width="0.127" layer="21" style="shortdash"/>
<wire x1="0.206" y1="13.716" x2="9.906" y2="13.716" width="0.127" layer="21" style="shortdash"/>
<pad name="VCC" x="5.056" y="2.991" drill="0.65" rot="R180"/>
<pad name="GND" x="2.516" y="2.991" drill="0.65" rot="R180"/>
<pad name="SIGNAL" x="7.596" y="2.991" drill="0.65" rot="R180"/>
<pad name="NC2" x="7.596" y="5.616" drill="0.7" rot="R180"/>
<pad name="NC1" x="2.516" y="5.616" drill="0.7" rot="R180"/>
<wire x1="9.806" y1="11.366" x2="0.206" y2="11.366" width="0.127" layer="21"/>
<text x="7.686" y="2.016" size="0.68" layer="21" rot="R180" align="center">3</text>
<text x="5.106" y="2.016" size="0.68" layer="21" rot="R180" align="center">2</text>
<text x="2.526" y="2.016" size="0.68" layer="21" rot="R180" align="center">1</text>
<text x="2.526" y="4.516" size="0.68" layer="21" rot="R180" align="center">5</text>
<text x="7.586" y="4.516" size="0.68" layer="21" rot="R180" align="center">4</text>
<text x="1.905" y="11.938" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="PLT133/T6">
<pin name="SIGNAL" x="0" y="2.54" visible="pin" length="short"/>
<pin name="VCC" x="0" y="17.78" visible="pin" length="short"/>
<pin name="GND" x="0" y="10.16" visible="pin" length="short"/>
<pin name="NC1" x="20.32" y="15.24" visible="pin" length="short" rot="R180"/>
<pin name="NC2" x="20.32" y="5.08" visible="pin" length="short" rot="R180"/>
<wire x1="2.54" y1="0" x2="2.54" y2="20.32" width="0.254" layer="94"/>
<wire x1="2.54" y1="20.32" x2="17.78" y2="20.32" width="0.254" layer="94"/>
<wire x1="17.78" y1="20.32" x2="17.78" y2="0" width="0.254" layer="94"/>
<wire x1="17.78" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<text x="6.35" y="-1.778" size="1.27" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="S/PDIF-IN">
<gates>
<gate name="G$1" symbol="PLT133/T6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SPDIF-IN">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="NC1" pad="NC1"/>
<connect gate="G$1" pin="NC2" pad="NC2"/>
<connect gate="G$1" pin="SIGNAL" pad="SIGNAL"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="S/PDIF-OUT">
<gates>
<gate name="G$1" symbol="PLT133/T6" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="SPDIF-OUT">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="NC1" pad="NC1"/>
<connect gate="G$1" pin="NC2" pad="NC2"/>
<connect gate="G$1" pin="SIGNAL" pad="SIGNAL"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="smd_button">
<packages>
<package name="SMD">
<smd name="1" x="3.5" y="0" dx="2.032" dy="1.27" layer="1"/>
<smd name="2" x="-3.5" y="0" dx="2.032" dy="1.27" layer="1"/>
<text x="0" y="0" size="0.6096" layer="21" align="center">&gt;NAME</text>
<wire x1="3" y1="1.8" x2="-3" y2="1.8" width="0.127" layer="21"/>
<wire x1="-3" y1="1.8" x2="-3" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-3" y1="-1.8" x2="3" y2="-1.8" width="0.127" layer="21"/>
<wire x1="3" y1="-1.8" x2="3" y2="1.8" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="SWITCH">
<pin name="P$1" x="-7.62" y="0" visible="pad" length="middle" function="dot"/>
<pin name="P$2" x="7.62" y="0" visible="pad" length="middle" function="dot" rot="R180"/>
<wire x1="-3.81" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="3.81" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="0.8128" layer="94">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMD_BUTTON">
<gates>
<gate name="G$1" symbol="SWITCH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMD">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
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
<part name="M1" library="NRF24L01" deviceset="WIRELESS-NRF24L01" device=""/>
<part name="U$2" library="SPDIF" deviceset="S/PDIF-IN" device=""/>
<part name="U$3" library="SPDIF" deviceset="S/PDIF-OUT" device=""/>
<part name="U$4" library="smd_button" deviceset="SMD_BUTTON" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="10.16" y="33.02" smashed="yes"/>
<instance part="M1" gate="G$1" x="106.68" y="45.72" smashed="yes">
<attribute name="NAME" x="127" y="55.88" size="1.778" layer="95"/>
<attribute name="VALUE" x="127" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="U$2" gate="G$1" x="33.02" y="121.92" smashed="yes">
<attribute name="NAME" x="39.37" y="120.142" size="1.27" layer="95"/>
</instance>
<instance part="U$3" gate="G$1" x="33.02" y="91.44" smashed="yes">
<attribute name="NAME" x="39.37" y="89.662" size="1.27" layer="95"/>
</instance>
<instance part="U$4" gate="G$1" x="109.22" y="109.22" smashed="yes">
<attribute name="NAME" x="106.68" y="106.68" size="0.8128" layer="94"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="ON/OFF" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$1"/>
<wire x1="101.6" y1="109.22" x2="99.06" y2="109.22" width="0.1524" layer="91"/>
<label x="99.06" y="109.22" size="0.762" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="ON/OFF"/>
<wire x1="25.4" y1="17.78" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<label x="25.4" y="15.24" size="0.762" layer="95" rot="R270" xref="yes"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$2"/>
<wire x1="116.84" y1="109.22" x2="119.38" y2="109.22" width="0.1524" layer="91"/>
<label x="119.38" y="109.22" size="0.762" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND2"/>
<wire x1="20.32" y1="17.78" x2="20.32" y2="15.24" width="0.1524" layer="91"/>
<label x="20.32" y="15.24" size="0.762" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="AGND"/>
<wire x1="35.56" y1="63.5" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
<label x="38.1" y="63.5" size="0.762" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="5.08" y1="66.04" x2="2.54" y2="66.04" width="0.1524" layer="91"/>
<label x="2.54" y="66.04" size="0.762" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="3.3V"/>
<wire x1="35.56" y1="60.96" x2="38.1" y2="60.96" width="0.1524" layer="91"/>
<label x="38.1" y="60.96" size="0.762" layer="95" xref="yes"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VIN"/>
<wire x1="35.56" y1="66.04" x2="38.1" y2="66.04" width="0.1524" layer="91"/>
<label x="38.1" y="66.04" size="0.762" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
