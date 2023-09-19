<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
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
<library name="myLibrary">
<packages>
<package name="RASPBERRY-PI-PICO_THT">
<pad name="20" x="-8.89" y="-24.13" drill="1.016" diameter="1.778"/>
<pad name="21" x="8.89" y="-24.13" drill="1.016" diameter="1.778"/>
<pad name="19" x="-8.89" y="-21.59" drill="1.016" diameter="1.778"/>
<pad name="22" x="8.89" y="-21.59" drill="1.016" diameter="1.778"/>
<pad name="18" x="-8.89" y="-19.05" drill="1.016" diameter="1.778"/>
<pad name="23" x="8.89" y="-19.05" drill="1.016" diameter="1.778"/>
<pad name="17" x="-8.89" y="-16.51" drill="1.016" diameter="1.778"/>
<pad name="24" x="8.89" y="-16.51" drill="1.016" diameter="1.778"/>
<pad name="16" x="-8.89" y="-13.97" drill="1.016" diameter="1.778"/>
<pad name="25" x="8.89" y="-13.97" drill="1.016" diameter="1.778"/>
<pad name="15" x="-8.89" y="-11.43" drill="1.016" diameter="1.778"/>
<pad name="26" x="8.89" y="-11.43" drill="1.016" diameter="1.778"/>
<pad name="14" x="-8.89" y="-8.89" drill="1.016" diameter="1.778"/>
<pad name="27" x="8.89" y="-8.89" drill="1.016" diameter="1.778"/>
<pad name="13" x="-8.89" y="-6.35" drill="1.016" diameter="1.778"/>
<pad name="28" x="8.89" y="-6.35" drill="1.016" diameter="1.778"/>
<pad name="12" x="-8.89" y="-3.81" drill="1.016" diameter="1.778"/>
<pad name="29" x="8.89" y="-3.81" drill="1.016" diameter="1.778"/>
<pad name="11" x="-8.89" y="-1.27" drill="1.016" diameter="1.778"/>
<pad name="30" x="8.89" y="-1.27" drill="1.016" diameter="1.778"/>
<pad name="10" x="-8.89" y="1.27" drill="1.016" diameter="1.778"/>
<pad name="31" x="8.89" y="1.27" drill="1.016" diameter="1.778"/>
<pad name="9" x="-8.89" y="3.81" drill="1.016" diameter="1.778"/>
<pad name="32" x="8.89" y="3.81" drill="1.016" diameter="1.778"/>
<pad name="8" x="-8.89" y="6.35" drill="1.016" diameter="1.778"/>
<pad name="33" x="8.89" y="6.35" drill="1.016" diameter="1.778"/>
<pad name="7" x="-8.89" y="8.89" drill="1.016" diameter="1.778"/>
<pad name="34" x="8.89" y="8.89" drill="1.016" diameter="1.778"/>
<pad name="6" x="-8.89" y="11.43" drill="1.016" diameter="1.778"/>
<pad name="35" x="8.89" y="11.43" drill="1.016" diameter="1.778"/>
<pad name="5" x="-8.89" y="13.97" drill="1.016" diameter="1.778"/>
<pad name="36" x="8.89" y="13.97" drill="1.016" diameter="1.778"/>
<pad name="4" x="-8.89" y="16.51" drill="1.016" diameter="1.778"/>
<pad name="37" x="8.89" y="16.51" drill="1.016" diameter="1.778"/>
<pad name="3" x="-8.89" y="19.05" drill="1.016" diameter="1.778"/>
<pad name="38" x="8.89" y="19.05" drill="1.016" diameter="1.778"/>
<pad name="2" x="-8.89" y="21.59" drill="1.016" diameter="1.778"/>
<pad name="39" x="8.89" y="21.59" drill="1.016" diameter="1.778"/>
<pad name="1" x="-8.89" y="24.13" drill="1.016" diameter="1.778"/>
<pad name="40" x="8.89" y="24.13" drill="1.016" diameter="1.778"/>
<wire x1="-8.255" y1="-25.4" x2="-9.525" y2="-25.4" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-25.4" x2="-10.16" y2="-24.765" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-24.765" x2="-10.16" y2="-23.495" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-23.495" x2="-9.525" y2="-22.86" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-22.86" x2="-7.62" y2="-23.495" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-23.495" x2="-7.62" y2="-24.765" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-24.765" x2="-8.255" y2="-25.4" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-22.86" x2="-10.16" y2="-22.225" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-22.225" x2="-10.16" y2="-20.955" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-20.955" x2="-9.525" y2="-20.32" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-20.32" x2="-7.62" y2="-20.955" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-20.955" x2="-7.62" y2="-22.225" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-22.225" x2="-8.255" y2="-22.86" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-20.32" x2="-10.16" y2="-19.685" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-19.685" x2="-10.16" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-18.415" x2="-9.525" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-17.78" x2="-7.62" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-18.415" x2="-7.62" y2="-19.685" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-19.685" x2="-8.255" y2="-20.32" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-17.78" x2="-10.16" y2="-17.145" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-17.145" x2="-10.16" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-15.875" x2="-9.525" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-15.24" x2="-7.62" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-15.875" x2="-7.62" y2="-17.145" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-17.145" x2="-8.255" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-15.24" x2="-10.16" y2="-14.605" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-14.605" x2="-10.16" y2="-13.335" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-13.335" x2="-9.525" y2="-12.7" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-12.7" x2="-7.62" y2="-13.335" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-13.335" x2="-7.62" y2="-14.605" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-14.605" x2="-8.255" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-12.7" x2="-10.16" y2="-12.065" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-12.065" x2="-10.16" y2="-10.795" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-10.795" x2="-9.525" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-10.16" x2="-7.62" y2="-10.795" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-10.795" x2="-7.62" y2="-12.065" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-12.065" x2="-8.255" y2="-12.7" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-10.16" x2="-10.16" y2="-9.525" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-9.525" x2="-10.16" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-8.255" x2="-9.525" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-7.62" x2="-7.62" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-8.255" x2="-7.62" y2="-9.525" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-9.525" x2="-8.255" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-7.62" x2="-10.16" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-6.985" x2="-10.16" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-5.715" x2="-9.525" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-5.08" x2="-7.62" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-5.715" x2="-7.62" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-6.985" x2="-8.255" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-5.08" x2="-10.16" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-4.445" x2="-10.16" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-3.175" x2="-9.525" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-7.62" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-3.175" x2="-7.62" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-4.445" x2="-8.255" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-10.16" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="0" width="0.127" layer="21"/>
<wire x1="-8.255" y1="0" x2="-7.62" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-7.62" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-8.255" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-9.525" y1="0" x2="-10.16" y2="0.635" width="0.127" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="1.905" width="0.127" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-9.525" y2="2.54" width="0.127" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.127" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0.635" width="0.127" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-8.255" y2="0" width="0.127" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-10.16" y2="3.175" width="0.127" layer="21"/>
<wire x1="-10.16" y1="3.175" x2="-10.16" y2="4.445" width="0.127" layer="21"/>
<wire x1="-10.16" y1="4.445" x2="-9.525" y2="5.08" width="0.127" layer="21"/>
<wire x1="-8.255" y1="5.08" x2="-7.62" y2="4.445" width="0.127" layer="21"/>
<wire x1="-7.62" y1="4.445" x2="-7.62" y2="3.175" width="0.127" layer="21"/>
<wire x1="-7.62" y1="3.175" x2="-8.255" y2="2.54" width="0.127" layer="21"/>
<wire x1="-9.525" y1="5.08" x2="-10.16" y2="5.715" width="0.127" layer="21"/>
<wire x1="-10.16" y1="5.715" x2="-10.16" y2="6.985" width="0.127" layer="21"/>
<wire x1="-10.16" y1="6.985" x2="-9.525" y2="7.62" width="0.127" layer="21"/>
<wire x1="-8.255" y1="7.62" x2="-7.62" y2="6.985" width="0.127" layer="21"/>
<wire x1="-7.62" y1="6.985" x2="-7.62" y2="5.715" width="0.127" layer="21"/>
<wire x1="-7.62" y1="5.715" x2="-8.255" y2="5.08" width="0.127" layer="21"/>
<wire x1="-9.525" y1="7.62" x2="-10.16" y2="8.255" width="0.127" layer="21"/>
<wire x1="-10.16" y1="8.255" x2="-10.16" y2="9.525" width="0.127" layer="21"/>
<wire x1="-10.16" y1="9.525" x2="-9.525" y2="10.16" width="0.127" layer="21"/>
<wire x1="-8.255" y1="10.16" x2="-7.62" y2="9.525" width="0.127" layer="21"/>
<wire x1="-7.62" y1="9.525" x2="-7.62" y2="8.255" width="0.127" layer="21"/>
<wire x1="-7.62" y1="8.255" x2="-8.255" y2="7.62" width="0.127" layer="21"/>
<wire x1="-9.525" y1="10.16" x2="-10.16" y2="10.795" width="0.127" layer="21"/>
<wire x1="-10.16" y1="10.795" x2="-10.16" y2="12.065" width="0.127" layer="21"/>
<wire x1="-10.16" y1="12.065" x2="-9.525" y2="12.7" width="0.127" layer="21"/>
<wire x1="-8.255" y1="12.7" x2="-7.62" y2="12.065" width="0.127" layer="21"/>
<wire x1="-7.62" y1="12.065" x2="-7.62" y2="10.795" width="0.127" layer="21"/>
<wire x1="-7.62" y1="10.795" x2="-8.255" y2="10.16" width="0.127" layer="21"/>
<wire x1="-9.525" y1="12.7" x2="-10.16" y2="13.335" width="0.127" layer="21"/>
<wire x1="-10.16" y1="13.335" x2="-10.16" y2="14.605" width="0.127" layer="21"/>
<wire x1="-10.16" y1="14.605" x2="-9.525" y2="15.24" width="0.127" layer="21"/>
<wire x1="-8.255" y1="15.24" x2="-7.62" y2="14.605" width="0.127" layer="21"/>
<wire x1="-7.62" y1="14.605" x2="-7.62" y2="13.335" width="0.127" layer="21"/>
<wire x1="-7.62" y1="13.335" x2="-8.255" y2="12.7" width="0.127" layer="21"/>
<wire x1="-9.525" y1="15.24" x2="-10.16" y2="15.875" width="0.127" layer="21"/>
<wire x1="-10.16" y1="15.875" x2="-10.16" y2="17.145" width="0.127" layer="21"/>
<wire x1="-10.16" y1="17.145" x2="-9.525" y2="17.78" width="0.127" layer="21"/>
<wire x1="-8.255" y1="17.78" x2="-7.62" y2="17.145" width="0.127" layer="21"/>
<wire x1="-7.62" y1="17.145" x2="-7.62" y2="15.875" width="0.127" layer="21"/>
<wire x1="-7.62" y1="15.875" x2="-8.255" y2="15.24" width="0.127" layer="21"/>
<wire x1="-9.525" y1="17.78" x2="-10.16" y2="18.415" width="0.127" layer="21"/>
<wire x1="-10.16" y1="18.415" x2="-10.16" y2="19.685" width="0.127" layer="21"/>
<wire x1="-10.16" y1="19.685" x2="-9.525" y2="20.32" width="0.127" layer="21"/>
<wire x1="-8.255" y1="20.32" x2="-7.62" y2="19.685" width="0.127" layer="21"/>
<wire x1="-7.62" y1="19.685" x2="-7.62" y2="18.415" width="0.127" layer="21"/>
<wire x1="-7.62" y1="18.415" x2="-8.255" y2="17.78" width="0.127" layer="21"/>
<wire x1="-9.525" y1="20.32" x2="-10.16" y2="20.955" width="0.127" layer="21"/>
<wire x1="-10.16" y1="20.955" x2="-10.16" y2="22.225" width="0.127" layer="21"/>
<wire x1="-10.16" y1="22.225" x2="-9.525" y2="22.86" width="0.127" layer="21"/>
<wire x1="-8.255" y1="22.86" x2="-7.62" y2="22.225" width="0.127" layer="21"/>
<wire x1="-7.62" y1="22.225" x2="-7.62" y2="20.955" width="0.127" layer="21"/>
<wire x1="-7.62" y1="20.955" x2="-8.255" y2="20.32" width="0.127" layer="21"/>
<wire x1="-9.525" y1="22.86" x2="-10.16" y2="23.495" width="0.127" layer="21"/>
<wire x1="-10.16" y1="23.495" x2="-10.16" y2="24.765" width="0.127" layer="21"/>
<wire x1="-10.16" y1="24.765" x2="-9.525" y2="25.4" width="0.127" layer="21"/>
<wire x1="-8.255" y1="25.4" x2="-7.62" y2="24.765" width="0.127" layer="21"/>
<wire x1="-7.62" y1="24.765" x2="-7.62" y2="23.495" width="0.127" layer="21"/>
<wire x1="-7.62" y1="23.495" x2="-8.255" y2="22.86" width="0.127" layer="21"/>
<wire x1="-9.525" y1="25.4" x2="-8.255" y2="25.4" width="0.127" layer="21"/>
<wire x1="9.525" y1="-25.4" x2="8.255" y2="-25.4" width="0.127" layer="21"/>
<wire x1="8.255" y1="-25.4" x2="7.62" y2="-24.765" width="0.127" layer="21"/>
<wire x1="7.62" y1="-24.765" x2="7.62" y2="-23.495" width="0.127" layer="21"/>
<wire x1="7.62" y1="-23.495" x2="8.255" y2="-22.86" width="0.127" layer="21"/>
<wire x1="9.525" y1="-22.86" x2="10.16" y2="-23.495" width="0.127" layer="21"/>
<wire x1="10.16" y1="-23.495" x2="10.16" y2="-24.765" width="0.127" layer="21"/>
<wire x1="10.16" y1="-24.765" x2="9.525" y2="-25.4" width="0.127" layer="21"/>
<wire x1="8.255" y1="-22.86" x2="7.62" y2="-22.225" width="0.127" layer="21"/>
<wire x1="7.62" y1="-22.225" x2="7.62" y2="-20.955" width="0.127" layer="21"/>
<wire x1="7.62" y1="-20.955" x2="8.255" y2="-20.32" width="0.127" layer="21"/>
<wire x1="9.525" y1="-20.32" x2="10.16" y2="-20.955" width="0.127" layer="21"/>
<wire x1="10.16" y1="-20.955" x2="10.16" y2="-22.225" width="0.127" layer="21"/>
<wire x1="10.16" y1="-22.225" x2="9.525" y2="-22.86" width="0.127" layer="21"/>
<wire x1="8.255" y1="-20.32" x2="7.62" y2="-19.685" width="0.127" layer="21"/>
<wire x1="7.62" y1="-19.685" x2="7.62" y2="-18.415" width="0.127" layer="21"/>
<wire x1="7.62" y1="-18.415" x2="8.255" y2="-17.78" width="0.127" layer="21"/>
<wire x1="9.525" y1="-17.78" x2="10.16" y2="-18.415" width="0.127" layer="21"/>
<wire x1="10.16" y1="-18.415" x2="10.16" y2="-19.685" width="0.127" layer="21"/>
<wire x1="10.16" y1="-19.685" x2="9.525" y2="-20.32" width="0.127" layer="21"/>
<wire x1="8.255" y1="-17.78" x2="7.62" y2="-17.145" width="0.127" layer="21"/>
<wire x1="7.62" y1="-17.145" x2="7.62" y2="-15.875" width="0.127" layer="21"/>
<wire x1="7.62" y1="-15.875" x2="8.255" y2="-15.24" width="0.127" layer="21"/>
<wire x1="9.525" y1="-15.24" x2="10.16" y2="-15.875" width="0.127" layer="21"/>
<wire x1="10.16" y1="-15.875" x2="10.16" y2="-17.145" width="0.127" layer="21"/>
<wire x1="10.16" y1="-17.145" x2="9.525" y2="-17.78" width="0.127" layer="21"/>
<wire x1="8.255" y1="-15.24" x2="7.62" y2="-14.605" width="0.127" layer="21"/>
<wire x1="7.62" y1="-14.605" x2="7.62" y2="-13.335" width="0.127" layer="21"/>
<wire x1="7.62" y1="-13.335" x2="8.255" y2="-12.7" width="0.127" layer="21"/>
<wire x1="9.525" y1="-12.7" x2="10.16" y2="-13.335" width="0.127" layer="21"/>
<wire x1="10.16" y1="-13.335" x2="10.16" y2="-14.605" width="0.127" layer="21"/>
<wire x1="10.16" y1="-14.605" x2="9.525" y2="-15.24" width="0.127" layer="21"/>
<wire x1="8.255" y1="-12.7" x2="7.62" y2="-12.065" width="0.127" layer="21"/>
<wire x1="7.62" y1="-12.065" x2="7.62" y2="-10.795" width="0.127" layer="21"/>
<wire x1="7.62" y1="-10.795" x2="8.255" y2="-10.16" width="0.127" layer="21"/>
<wire x1="9.525" y1="-10.16" x2="10.16" y2="-10.795" width="0.127" layer="21"/>
<wire x1="10.16" y1="-10.795" x2="10.16" y2="-12.065" width="0.127" layer="21"/>
<wire x1="10.16" y1="-12.065" x2="9.525" y2="-12.7" width="0.127" layer="21"/>
<wire x1="8.255" y1="-10.16" x2="7.62" y2="-9.525" width="0.127" layer="21"/>
<wire x1="7.62" y1="-9.525" x2="7.62" y2="-8.255" width="0.127" layer="21"/>
<wire x1="7.62" y1="-8.255" x2="8.255" y2="-7.62" width="0.127" layer="21"/>
<wire x1="9.525" y1="-7.62" x2="10.16" y2="-8.255" width="0.127" layer="21"/>
<wire x1="10.16" y1="-8.255" x2="10.16" y2="-9.525" width="0.127" layer="21"/>
<wire x1="10.16" y1="-9.525" x2="9.525" y2="-10.16" width="0.127" layer="21"/>
<wire x1="8.255" y1="-7.62" x2="7.62" y2="-6.985" width="0.127" layer="21"/>
<wire x1="7.62" y1="-6.985" x2="7.62" y2="-5.715" width="0.127" layer="21"/>
<wire x1="7.62" y1="-5.715" x2="8.255" y2="-5.08" width="0.127" layer="21"/>
<wire x1="9.525" y1="-5.08" x2="10.16" y2="-5.715" width="0.127" layer="21"/>
<wire x1="10.16" y1="-5.715" x2="10.16" y2="-6.985" width="0.127" layer="21"/>
<wire x1="10.16" y1="-6.985" x2="9.525" y2="-7.62" width="0.127" layer="21"/>
<wire x1="8.255" y1="-5.08" x2="7.62" y2="-4.445" width="0.127" layer="21"/>
<wire x1="7.62" y1="-4.445" x2="7.62" y2="-3.175" width="0.127" layer="21"/>
<wire x1="7.62" y1="-3.175" x2="8.255" y2="-2.54" width="0.127" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="10.16" y2="-3.175" width="0.127" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="10.16" y2="-4.445" width="0.127" layer="21"/>
<wire x1="10.16" y1="-4.445" x2="9.525" y2="-5.08" width="0.127" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="7.62" y2="-1.905" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="-0.635" width="0.127" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="0" width="0.127" layer="21"/>
<wire x1="9.525" y1="0" x2="10.16" y2="-0.635" width="0.127" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.16" y2="-1.905" width="0.127" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.255" y1="0" x2="7.62" y2="0.635" width="0.127" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="1.905" width="0.127" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.127" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.127" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="0.635" width="0.127" layer="21"/>
<wire x1="10.16" y1="0.635" x2="9.525" y2="0" width="0.127" layer="21"/>
<wire x1="8.255" y1="2.54" x2="7.62" y2="3.175" width="0.127" layer="21"/>
<wire x1="7.62" y1="3.175" x2="7.62" y2="4.445" width="0.127" layer="21"/>
<wire x1="7.62" y1="4.445" x2="8.255" y2="5.08" width="0.127" layer="21"/>
<wire x1="9.525" y1="5.08" x2="10.16" y2="4.445" width="0.127" layer="21"/>
<wire x1="10.16" y1="4.445" x2="10.16" y2="3.175" width="0.127" layer="21"/>
<wire x1="10.16" y1="3.175" x2="9.525" y2="2.54" width="0.127" layer="21"/>
<wire x1="8.255" y1="5.08" x2="7.62" y2="5.715" width="0.127" layer="21"/>
<wire x1="7.62" y1="5.715" x2="7.62" y2="6.985" width="0.127" layer="21"/>
<wire x1="7.62" y1="6.985" x2="8.255" y2="7.62" width="0.127" layer="21"/>
<wire x1="9.525" y1="7.62" x2="10.16" y2="6.985" width="0.127" layer="21"/>
<wire x1="10.16" y1="6.985" x2="10.16" y2="5.715" width="0.127" layer="21"/>
<wire x1="10.16" y1="5.715" x2="9.525" y2="5.08" width="0.127" layer="21"/>
<wire x1="8.255" y1="7.62" x2="7.62" y2="8.255" width="0.127" layer="21"/>
<wire x1="7.62" y1="8.255" x2="7.62" y2="9.525" width="0.127" layer="21"/>
<wire x1="7.62" y1="9.525" x2="8.255" y2="10.16" width="0.127" layer="21"/>
<wire x1="9.525" y1="10.16" x2="10.16" y2="9.525" width="0.127" layer="21"/>
<wire x1="10.16" y1="9.525" x2="10.16" y2="8.255" width="0.127" layer="21"/>
<wire x1="10.16" y1="8.255" x2="9.525" y2="7.62" width="0.127" layer="21"/>
<wire x1="8.255" y1="10.16" x2="7.62" y2="10.795" width="0.127" layer="21"/>
<wire x1="7.62" y1="10.795" x2="7.62" y2="12.065" width="0.127" layer="21"/>
<wire x1="7.62" y1="12.065" x2="8.255" y2="12.7" width="0.127" layer="21"/>
<wire x1="9.525" y1="12.7" x2="10.16" y2="12.065" width="0.127" layer="21"/>
<wire x1="10.16" y1="12.065" x2="10.16" y2="10.795" width="0.127" layer="21"/>
<wire x1="10.16" y1="10.795" x2="9.525" y2="10.16" width="0.127" layer="21"/>
<wire x1="8.255" y1="12.7" x2="7.62" y2="13.335" width="0.127" layer="21"/>
<wire x1="7.62" y1="13.335" x2="7.62" y2="14.605" width="0.127" layer="21"/>
<wire x1="7.62" y1="14.605" x2="8.255" y2="15.24" width="0.127" layer="21"/>
<wire x1="9.525" y1="15.24" x2="10.16" y2="14.605" width="0.127" layer="21"/>
<wire x1="10.16" y1="14.605" x2="10.16" y2="13.335" width="0.127" layer="21"/>
<wire x1="10.16" y1="13.335" x2="9.525" y2="12.7" width="0.127" layer="21"/>
<wire x1="8.255" y1="15.24" x2="7.62" y2="15.875" width="0.127" layer="21"/>
<wire x1="7.62" y1="15.875" x2="7.62" y2="17.145" width="0.127" layer="21"/>
<wire x1="7.62" y1="17.145" x2="8.255" y2="17.78" width="0.127" layer="21"/>
<wire x1="9.525" y1="17.78" x2="10.16" y2="17.145" width="0.127" layer="21"/>
<wire x1="10.16" y1="17.145" x2="10.16" y2="15.875" width="0.127" layer="21"/>
<wire x1="10.16" y1="15.875" x2="9.525" y2="15.24" width="0.127" layer="21"/>
<wire x1="8.255" y1="17.78" x2="7.62" y2="18.415" width="0.127" layer="21"/>
<wire x1="7.62" y1="18.415" x2="7.62" y2="19.685" width="0.127" layer="21"/>
<wire x1="7.62" y1="19.685" x2="8.255" y2="20.32" width="0.127" layer="21"/>
<wire x1="9.525" y1="20.32" x2="10.16" y2="19.685" width="0.127" layer="21"/>
<wire x1="10.16" y1="19.685" x2="10.16" y2="18.415" width="0.127" layer="21"/>
<wire x1="10.16" y1="18.415" x2="9.525" y2="17.78" width="0.127" layer="21"/>
<wire x1="8.255" y1="20.32" x2="7.62" y2="20.955" width="0.127" layer="21"/>
<wire x1="7.62" y1="20.955" x2="7.62" y2="22.225" width="0.127" layer="21"/>
<wire x1="7.62" y1="22.225" x2="8.255" y2="22.86" width="0.127" layer="21"/>
<wire x1="9.525" y1="22.86" x2="10.16" y2="22.225" width="0.127" layer="21"/>
<wire x1="10.16" y1="22.225" x2="10.16" y2="20.955" width="0.127" layer="21"/>
<wire x1="10.16" y1="20.955" x2="9.525" y2="20.32" width="0.127" layer="21"/>
<wire x1="8.255" y1="22.86" x2="7.62" y2="23.495" width="0.127" layer="21"/>
<wire x1="7.62" y1="23.495" x2="7.62" y2="24.765" width="0.127" layer="21"/>
<wire x1="7.62" y1="24.765" x2="8.255" y2="25.4" width="0.127" layer="21"/>
<wire x1="9.525" y1="25.4" x2="10.16" y2="24.765" width="0.127" layer="21"/>
<wire x1="10.16" y1="24.765" x2="10.16" y2="23.495" width="0.127" layer="21"/>
<wire x1="10.16" y1="23.495" x2="9.525" y2="22.86" width="0.127" layer="21"/>
<wire x1="8.255" y1="25.4" x2="9.525" y2="25.4" width="0.127" layer="21"/>
<pad name="D_GND" x="0" y="-23.876" drill="1.016" diameter="1.778"/>
<pad name="SWDIO" x="2.54" y="-23.876" drill="1.016" diameter="1.778"/>
<pad name="SWCLK" x="-2.54" y="-23.876" drill="1.016" diameter="1.778"/>
<wire x1="3.81" y1="-23.241" x2="3.81" y2="-24.511" width="0.127" layer="21"/>
<wire x1="3.81" y1="-24.511" x2="3.175" y2="-25.146" width="0.127" layer="21"/>
<wire x1="3.175" y1="-25.146" x2="1.905" y2="-25.146" width="0.127" layer="21"/>
<wire x1="1.905" y1="-25.146" x2="1.27" y2="-24.511" width="0.127" layer="21"/>
<wire x1="1.27" y1="-23.241" x2="1.905" y2="-22.606" width="0.127" layer="21"/>
<wire x1="1.905" y1="-22.606" x2="3.175" y2="-22.606" width="0.127" layer="21"/>
<wire x1="3.175" y1="-22.606" x2="3.81" y2="-23.241" width="0.127" layer="21"/>
<wire x1="1.27" y1="-24.511" x2="0.635" y2="-25.146" width="0.127" layer="21"/>
<wire x1="0.635" y1="-25.146" x2="-0.635" y2="-25.146" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-25.146" x2="-1.27" y2="-24.511" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-23.241" x2="-0.635" y2="-22.606" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-22.606" x2="0.635" y2="-22.606" width="0.127" layer="21"/>
<wire x1="0.635" y1="-22.606" x2="1.27" y2="-23.241" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-24.511" x2="-1.905" y2="-25.146" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-25.146" x2="-3.175" y2="-25.146" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-25.146" x2="-3.81" y2="-24.511" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-24.511" x2="-3.81" y2="-23.241" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-23.241" x2="-3.175" y2="-22.606" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-22.606" x2="-1.905" y2="-22.606" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-22.606" x2="-1.27" y2="-23.241" width="0.127" layer="21"/>
</package>
<package name="HEADER_3-PIN">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="0" y="-1.905" radius="0.254" width="0.127" layer="21"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="1.27" width="0.127" layer="21"/>
<pad name="3" x="0" y="5.08" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="3.81" x2="-1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="-0.635" y1="6.35" x2="0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="0.635" y1="6.35" x2="1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="3.81" width="0.127" layer="21"/>
<text x="2.54" y="-1.27" size="1.016" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
</package>
<package name="SCREW-TERMINAL_3-WAY">
<pad name="1" x="-5.08" y="0" drill="1.27" diameter="2.032" shape="square"/>
<pad name="2" x="0" y="0" drill="1.27" diameter="2.032"/>
<wire x1="-7.62" y1="-3.81" x2="7.62" y2="-3.81" width="0.127" layer="21"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="3.81" width="0.127" layer="21"/>
<wire x1="7.62" y1="3.81" x2="-7.62" y2="3.81" width="0.127" layer="21"/>
<wire x1="-7.62" y1="3.81" x2="-7.62" y2="-3.81" width="0.127" layer="21"/>
<circle x="-8.89" y="0" radius="0.254" width="0.127" layer="21"/>
<text x="-7.62" y="-5.08" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<pad name="3" x="5.08" y="0" drill="1.27" diameter="2.032"/>
</package>
<package name="CH3.96_3-PIN">
<text x="-6.35" y="-6.858" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<pad name="1" x="-3.9624" y="0" drill="1.524" diameter="2.286" shape="square"/>
<pad name="2" x="0" y="0" drill="1.524"/>
<wire x1="-6.35" y1="4.1" x2="-6.35" y2="-5.6" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-5.6" x2="6.35" y2="-5.6" width="0.127" layer="21"/>
<wire x1="6.35" y1="-5.6" x2="6.35" y2="4.1" width="0.127" layer="21"/>
<wire x1="6.35" y1="4.1" x2="-6.35" y2="4.1" width="0.127" layer="21"/>
<circle x="-7.62" y="0" radius="0.254" width="0.127" layer="21"/>
<pad name="3" x="3.9624" y="0" drill="1.524"/>
</package>
<package name="XH2.54_3-PIN">
<pad name="1" x="-2.54" y="0" drill="1.016" diameter="1.778" shape="square"/>
<pad name="2" x="0" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-5.08" y1="3.4" x2="5.08" y2="3.4" width="0.127" layer="21"/>
<wire x1="5.08" y1="3.4" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="3.4" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="3" x="2.54" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.127" layer="21"/>
<text x="-5.08" y="-3.81" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<text x="5.08" y="-3.81" size="1.016" layer="25" align="center-right">&gt;NAME</text>
</package>
<package name="HEADER_2-PIN">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="0" y="-1.905" radius="0.254" width="0.127" layer="21"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="-0.635" y1="3.81" x2="0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="1.27" width="0.127" layer="21"/>
<text x="2.54" y="-1.27" size="1.016" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
</package>
<package name="SCREW-TERMINAL_2-WAY">
<pad name="1" x="-2.54" y="0" drill="1.27" diameter="2.032" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.27" diameter="2.032"/>
<wire x1="-5.08" y1="-3.81" x2="5.08" y2="-3.81" width="0.127" layer="21"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="3.81" width="0.127" layer="21"/>
<wire x1="5.08" y1="3.81" x2="-5.08" y2="3.81" width="0.127" layer="21"/>
<wire x1="-5.08" y1="3.81" x2="-5.08" y2="-3.81" width="0.127" layer="21"/>
<circle x="-6.35" y="0" radius="0.254" width="0.127" layer="21"/>
<text x="-5.08" y="-5.08" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
</package>
<package name="CH3.96_2-PIN">
<text x="-3.81" y="-6.858" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<pad name="1" x="-1.9812" y="0" drill="1.524" diameter="2.286" shape="square"/>
<pad name="2" x="1.9812" y="0" drill="1.524"/>
<wire x1="-4.318" y1="4.064" x2="-4.318" y2="-5.588" width="0.127" layer="21"/>
<wire x1="-4.318" y1="-5.588" x2="4.318" y2="-5.588" width="0.127" layer="21"/>
<wire x1="4.318" y1="-5.588" x2="4.318" y2="4.064" width="0.127" layer="21"/>
<wire x1="4.318" y1="4.064" x2="-4.318" y2="4.064" width="0.127" layer="21"/>
<circle x="-5.08" y="0" radius="0.254" width="0.127" layer="21"/>
</package>
<package name="XH2.54_2-PIN">
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="square"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-3.81" y1="3.4" x2="3.81" y2="3.4" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.4" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-2.54" x2="-3.81" y2="3.4" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="1.27" y2="-2.54" width="0.127" layer="21"/>
<text x="-3.81" y="-3.81" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<text x="3.81" y="-3.81" size="1.016" layer="25" align="center-right">&gt;NAME</text>
</package>
<package name="HEADER_4-PIN">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="0" y="-1.905" radius="0.254" width="0.127" layer="21"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="1.27" width="0.127" layer="21"/>
<pad name="3" x="0" y="5.08" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="3.81" x2="-1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="0.635" y1="6.35" x2="1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="3.81" width="0.127" layer="21"/>
<pad name="4" x="0" y="7.62" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="6.35" x2="-1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="-1.27" y1="8.255" x2="-0.635" y2="8.89" width="0.127" layer="21"/>
<wire x1="-0.635" y1="8.89" x2="0.635" y2="8.89" width="0.127" layer="21"/>
<wire x1="0.635" y1="8.89" x2="1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="1.27" y1="8.255" x2="1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="1.27" y1="6.985" x2="0.635" y2="6.35" width="0.127" layer="21"/>
<text x="2.54" y="-1.27" size="1.016" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
</package>
<package name="SCREW-TERMINAL_4-WAY">
<pad name="1" x="-7.62" y="0" drill="1.27" diameter="2.032" shape="square"/>
<pad name="2" x="-2.54" y="0" drill="1.27" diameter="2.032"/>
<wire x1="-10.16" y1="-3.81" x2="10.16" y2="-3.81" width="0.127" layer="21"/>
<wire x1="10.16" y1="-3.81" x2="10.16" y2="3.81" width="0.127" layer="21"/>
<wire x1="10.16" y1="3.81" x2="-10.16" y2="3.81" width="0.127" layer="21"/>
<wire x1="-10.16" y1="3.81" x2="-10.16" y2="-3.81" width="0.127" layer="21"/>
<circle x="-11.43" y="0" radius="0.254" width="0.127" layer="21"/>
<text x="-10.16" y="-5.08" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<pad name="3" x="2.54" y="0" drill="1.27" diameter="2.032"/>
<pad name="4" x="7.62" y="0" drill="1.27" diameter="2.032"/>
</package>
<package name="CH3.96_4-PIN">
<text x="-7.62" y="-6.858" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<pad name="1" x="-5.9436" y="0" drill="1.524" diameter="2.286" shape="square"/>
<pad name="2" x="-1.9812" y="0" drill="1.524"/>
<wire x1="-8.255" y1="4.1" x2="-8.255" y2="-5.6" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-5.6" x2="8.255" y2="-5.6" width="0.127" layer="21"/>
<wire x1="8.255" y1="-5.6" x2="8.255" y2="4.1" width="0.127" layer="21"/>
<wire x1="8.255" y1="4.1" x2="-8.255" y2="4.1" width="0.127" layer="21"/>
<circle x="-8.89" y="0" radius="0.254" width="0.127" layer="21"/>
<pad name="3" x="1.9812" y="0" drill="1.524"/>
<pad name="4" x="5.9436" y="0" drill="1.524"/>
</package>
<package name="XH2.54_4-PIN">
<pad name="1" x="-3.81" y="0" drill="1.016" diameter="1.778" shape="square"/>
<pad name="2" x="-1.27" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-6.35" y1="3.4" x2="6.35" y2="3.4" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.4" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-2.54" x2="-6.35" y2="3.4" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-2.54" x2="-3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<text x="-6.35" y="-3.81" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<text x="6.35" y="-3.81" size="1.016" layer="25" align="center-right">&gt;NAME</text>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="3" x="1.27" y="0" drill="1.016" diameter="1.778"/>
<pad name="4" x="3.81" y="0" drill="1.016" diameter="1.778"/>
</package>
<package name="SHEET">
<text x="0" y="1.27" size="1.016" layer="25" align="center-left">&gt;DRAWING_NAME</text>
<text x="0" y="-1.27" size="1.016" layer="25" align="center-left">&gt;VALUE</text>
</package>
<package name="PAD_T">
<smd name="1" x="0" y="0" dx="1.27" dy="1.27" layer="1" roundness="100"/>
<text x="1.27" y="0" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
</package>
<package name="PAD_B">
<smd name="1" x="0" y="0" dx="1.27" dy="1.27" layer="16" roundness="100"/>
<text x="-1.27" y="0" size="1.016" layer="27" rot="MR0" align="center-left">&gt;VALUE</text>
</package>
<package name="WIRE_2.54MM">
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.778"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.127" layer="21"/>
<text x="-2.54" y="0" size="1.016" layer="25" align="center-right">&gt;NAME</text>
<text x="2.54" y="0" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
</package>
<package name="DC-JACK_5.5X2.1MM">
<wire x1="-4.5" y1="-7.62" x2="4.5" y2="-7.62" width="0.127" layer="21"/>
<wire x1="4.5" y1="-7.62" x2="4.5" y2="6.38" width="0.127" layer="21"/>
<wire x1="4.5" y1="6.38" x2="-4.5" y2="6.38" width="0.127" layer="21"/>
<wire x1="-4.5" y1="6.38" x2="-4.5" y2="-7.62" width="0.127" layer="21"/>
<text x="0" y="-6.35" size="1.016" layer="25" align="center">&gt;NAME</text>
<text x="5.715" y="-7.62" size="1.016" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
<pad name="SLEEVE_A" x="0" y="-0.12" drill="1" diameter="2" shape="long" rot="R180"/>
<pad name="CENTER" x="0" y="6.08" drill="1" diameter="2.3" shape="long" rot="R180"/>
<pad name="SLEEVE_B" x="4.7" y="3.38" drill="1" diameter="2" shape="long" rot="R270"/>
<wire x1="1.016" y1="-0.127" x2="-0.984" y2="-0.127" width="1" layer="46"/>
<wire x1="4.714" y1="4.445" x2="4.714" y2="2.445" width="1" layer="46"/>
<wire x1="1.5" y1="6.08" x2="-1.5" y2="6.08" width="1" layer="46"/>
</package>
<package name="LED_5MM">
<pad name="+" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="-" x="1.27" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<wire x1="2.159" y1="1.27" x2="2.159" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="2.159" y2="1.27" width="0.127" layer="21" curve="-299.06891"/>
<text x="2.921" y="0" size="1.016" layer="25" rot="R90" align="center">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.016" layer="27" rot="R180" align="center-right">&gt;VALUE</text>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.127" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="1.778" width="0.127" layer="21"/>
</package>
<package name="LED_3MM">
<pad name="+" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon"/>
<pad name="-" x="1.27" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<text x="2.794" y="0" size="1.016" layer="25" rot="R90" align="center">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.016" layer="27" rot="R180" align="center-right">&gt;VALUE</text>
<wire x1="1.016" y1="1.143" x2="1.016" y2="-1.143" width="0.127" layer="21"/>
<wire x1="1.016" y1="-1.143" x2="1.016" y2="1.143" width="0.127" layer="21" curve="-263.267079"/>
<wire x1="1.016" y1="1.905" x2="1.524" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.524" y1="1.905" x2="-1.016" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.651" x2="-1.27" y2="2.159" width="0.127" layer="21"/>
</package>
<package name="RESISTOR_10.16MM">
<pad name="2" x="5.08" y="0" drill="1.016" diameter="1.778"/>
<pad name="1" x="-5.08" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0" width="0.127" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.127" layer="21"/>
<wire x1="-2.54" y1="0.889" x2="-2.54" y2="0" width="0.127" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-2.54" y1="0" x2="-5.08" y2="0" width="0.127" layer="21"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.127" layer="21"/>
<text x="0" y="1.651" size="1.016" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.016" layer="27" align="center">&gt;VALUE</text>
</package>
<package name="RESISTOR_2.54MM">
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.778" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.778" rot="R90"/>
<text x="-3.175" y="0" size="1.016" layer="25" rot="R270" align="center">&gt;NAME</text>
<text x="3.175" y="0" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.127" layer="21"/>
</package>
<package name="3.5MM-JACK">
<pad name="SLEEVE" x="0" y="0" drill="1.6" diameter="2.286" shape="long" rot="R90"/>
<pad name="RING_B" x="-2.5" y="5" drill="1.6" diameter="2.286" shape="long" rot="R90"/>
<pad name="RING_A" x="-5" y="5" drill="1.6" diameter="2.286" shape="long" rot="R90"/>
<pad name="TIP_A" x="2.5" y="5" drill="1.6" diameter="2.286" shape="long" rot="R90"/>
<pad name="TIP_B" x="5" y="5" drill="1.6" diameter="2.286" shape="long" rot="R90"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-6.5" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-6.5" x2="6.35" y2="-6.5" width="0.127" layer="21"/>
<wire x1="6.35" y1="-6.5" x2="6.35" y2="7.62" width="0.127" layer="21"/>
<wire x1="6.35" y1="7.62" x2="-6.35" y2="7.62" width="0.127" layer="21"/>
<text x="0" y="-5.08" size="1.016" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-7.62" size="1.016" layer="27" align="center">&gt;VALUE</text>
</package>
<package name="CAPACITOR_UNPOLARISED_2.54MM">
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.778" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.778" rot="R90"/>
<text x="-3.175" y="0" size="1.016" layer="25" rot="R90" align="center">&gt;NAME</text>
<text x="3.175" y="0" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.127" layer="21"/>
</package>
<package name="CAPACITOR_UNPOLARISED_5.08MM">
<pad name="1" x="-2.54" y="0" drill="1.016" diameter="1.778" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.778" rot="R90"/>
<text x="-4.445" y="0" size="1.016" layer="25" rot="R90" align="center">&gt;NAME</text>
<text x="4.445" y="0" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<wire x1="-3.81" y1="1.27" x2="3.81" y2="1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-3.81" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.127" layer="21"/>
</package>
<package name="HEADER_5-PIN">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="0" y="-1.905" radius="0.254" width="0.127" layer="21"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="1.27" width="0.127" layer="21"/>
<pad name="3" x="0" y="5.08" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="3.81" x2="-1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="0.635" y1="6.35" x2="1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="3.81" width="0.127" layer="21"/>
<pad name="4" x="0" y="7.62" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="6.35" x2="-1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="-1.27" y1="8.255" x2="-0.635" y2="8.89" width="0.127" layer="21"/>
<wire x1="0.635" y1="8.89" x2="1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="1.27" y1="8.255" x2="1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="1.27" y1="6.985" x2="0.635" y2="6.35" width="0.127" layer="21"/>
<pad name="5" x="0" y="10.16" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="8.89" x2="-1.27" y2="9.525" width="0.127" layer="21"/>
<wire x1="-1.27" y1="9.525" x2="-1.27" y2="10.795" width="0.127" layer="21"/>
<wire x1="-1.27" y1="10.795" x2="-0.635" y2="11.43" width="0.127" layer="21"/>
<wire x1="-0.635" y1="11.43" x2="0.635" y2="11.43" width="0.127" layer="21"/>
<wire x1="0.635" y1="11.43" x2="1.27" y2="10.795" width="0.127" layer="21"/>
<wire x1="1.27" y1="10.795" x2="1.27" y2="9.525" width="0.127" layer="21"/>
<wire x1="1.27" y1="9.525" x2="0.635" y2="8.89" width="0.127" layer="21"/>
<text x="2.54" y="-1.27" size="1.016" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
</package>
<package name="SCREW-TERMINAL_5-WAY">
<pad name="1" x="-10.16" y="0" drill="1.27" diameter="2.032" shape="square"/>
<pad name="2" x="-5.08" y="0" drill="1.27" diameter="2.032"/>
<wire x1="-12.7" y1="-3.81" x2="12.7" y2="-3.81" width="0.127" layer="21"/>
<wire x1="12.7" y1="-3.81" x2="12.7" y2="3.81" width="0.127" layer="21"/>
<wire x1="12.7" y1="3.81" x2="-12.7" y2="3.81" width="0.127" layer="21"/>
<wire x1="-12.7" y1="3.81" x2="-12.7" y2="-3.81" width="0.127" layer="21"/>
<circle x="-13.97" y="0" radius="0.254" width="0.127" layer="21"/>
<text x="-12.7" y="-5.08" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<pad name="3" x="0" y="0" drill="1.27" diameter="2.032"/>
<pad name="4" x="5.08" y="0" drill="1.27" diameter="2.032"/>
<pad name="5" x="10.16" y="0" drill="1.27" diameter="2.032"/>
</package>
<package name="XH2.54_5-PIN">
<pad name="1" x="-5.08" y="0" drill="1.016" diameter="1.778" shape="square"/>
<pad name="2" x="-2.54" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-7.62" y1="3.4" x2="7.62" y2="3.4" width="0.127" layer="21"/>
<wire x1="7.62" y1="3.4" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="3.4" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-2.54" x2="-5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<pad name="3" x="0" y="0" drill="1.016" diameter="1.778"/>
<text x="-7.62" y="-3.81" size="1.016" layer="27" align="center-left">&gt;VALUE</text>
<text x="7.62" y="-3.81" size="1.016" layer="25" align="center-right">&gt;NAME</text>
<pad name="4" x="2.54" y="0" drill="1.016" diameter="1.778"/>
<pad name="5" x="5.08" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-3.81" y1="-2.54" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
</package>
<package name="6MM_PUSHBUTTON">
<pad name="1_A" x="-3.2512" y="4.5" drill="1.016" diameter="1.778"/>
<pad name="2_A" x="-3.2512" y="0" drill="1.016" diameter="1.778"/>
<pad name="2_B" x="3.2488" y="0" drill="1.016" diameter="1.778"/>
<pad name="1_B" x="3.2488" y="4.5" drill="1.016" diameter="1.778"/>
<wire x1="-2.159" y1="5.08" x2="2.159" y2="5.08" width="0.127" layer="21"/>
<wire x1="2.159" y1="5.08" x2="2.159" y2="-0.508" width="0.127" layer="21"/>
<wire x1="2.159" y1="-0.508" x2="-2.159" y2="-0.508" width="0.127" layer="21"/>
<wire x1="-2.159" y1="-0.508" x2="-2.159" y2="5.08" width="0.127" layer="21"/>
<text x="0" y="1.27" size="1.016" layer="25" rot="R90" align="center-left">&gt;NAME</text>
<text x="0" y="-1.27" size="1.016" layer="27" align="center">&gt;VALUE</text>
</package>
<package name="INFO_B">
<text x="0" y="0" size="1.016" layer="27" rot="MR180" align="center">&gt;VALUE</text>
</package>
<package name="INFO_T">
<text x="0" y="0" size="1.016" layer="27" rot="R180" align="center">&gt;VALUE</text>
</package>
<package name="HEADER_3-PIN_JUMPER">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.778"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="-1.905" y="2.54" radius="0.254" width="0.127" layer="21"/>
<pad name="A" x="0" y="2.54" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="1.27" width="0.127" layer="21"/>
<text x="2.032" y="2.54" size="1.016" layer="27" rot="R90" align="center">&gt;VALUE</text>
<pad name="2" x="0" y="5.08" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="3.81" x2="-1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="-0.635" y1="6.35" x2="0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="0.635" y1="6.35" x2="1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="3.81" width="0.127" layer="21"/>
</package>
<package name="PCB-JUMPER_3-WAY_B">
<smd name="2" x="0" y="2.54" dx="2.032" dy="2.032" layer="16" cream="no"/>
<smd name="A" x="0" y="0" dx="2.032" dy="2.032" layer="16" cream="no"/>
<smd name="1" x="0" y="-2.54" dx="2.032" dy="2.032" layer="16" cream="no"/>
<rectangle x1="-3.556" y1="-1.016" x2="3.556" y2="1.016" layer="30" rot="R270"/>
<circle x="1.905" y="0" radius="0.254" width="0.127" layer="22"/>
<text x="-2.032" y="0" size="1.016" layer="27" rot="MR90" align="center">&gt;VALUE</text>
<wire x1="1.27" y1="3.81" x2="-1.27" y2="3.81" width="0.127" layer="22"/>
<wire x1="-1.27" y1="3.81" x2="-1.27" y2="-3.81" width="0.127" layer="22"/>
<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.127" layer="22"/>
<wire x1="1.27" y1="-3.81" x2="1.27" y2="3.81" width="0.127" layer="22"/>
</package>
<package name="PCB-JUMPER_3-WAY_T">
<smd name="2" x="0" y="2.54" dx="2.032" dy="2.032" layer="1" cream="no"/>
<smd name="A" x="0" y="0" dx="2.032" dy="2.032" layer="1" cream="no"/>
<smd name="1" x="0" y="-2.54" dx="2.032" dy="2.032" layer="1" cream="no"/>
<rectangle x1="-3.556" y1="-1.016" x2="3.556" y2="1.016" layer="29" rot="R270"/>
<circle x="-1.905" y="0" radius="0.254" width="0.127" layer="21"/>
<text x="2.032" y="0" size="1.016" layer="27" rot="R90" align="center">&gt;VALUE</text>
<wire x1="1.27" y1="3.81" x2="-1.27" y2="3.81" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.81" x2="-1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="1.27" y1="-3.81" x2="1.27" y2="3.81" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="-2.54" y1="2.54" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<pin name="+5V" x="0" y="0" visible="off" length="middle" direction="sup" rot="R90"/>
<text x="0" y="6.35" size="0.8128" layer="94" align="center">+5V</text>
</symbol>
<symbol name="RASPBERRY-PI-PICO">
<wire x1="-12.7" y1="30.48" x2="-12.7" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-25.4" x2="12.7" y2="-25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="-25.4" x2="12.7" y2="30.48" width="0.254" layer="94"/>
<wire x1="12.7" y1="30.48" x2="-12.7" y2="30.48" width="0.254" layer="94"/>
<text x="-12.7" y="31.75" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="-12.7" y="-26.67" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
<text x="12.7" y="31.75" size="0.8128" layer="95" align="center-right">Raspberry Pi Pico</text>
<pin name="GP1/RX" x="-17.78" y="25.4" visible="pin" length="middle"/>
<pin name="GP2" x="-17.78" y="22.86" visible="pin" length="middle"/>
<pin name="GP3" x="-17.78" y="20.32" visible="pin" length="middle"/>
<pin name="GP4/SDA" x="-17.78" y="17.78" visible="pin" length="middle"/>
<pin name="GP5/SCL" x="-17.78" y="15.24" visible="pin" length="middle"/>
<pin name="GP6" x="-17.78" y="12.7" visible="pin" length="middle"/>
<pin name="GP7" x="-17.78" y="10.16" visible="pin" length="middle"/>
<pin name="GP8" x="-17.78" y="7.62" visible="pin" length="middle"/>
<pin name="GP9" x="-17.78" y="5.08" visible="pin" length="middle"/>
<pin name="GP10" x="-17.78" y="2.54" visible="pin" length="middle"/>
<pin name="GP11" x="-17.78" y="0" visible="pin" length="middle"/>
<pin name="GP12" x="-17.78" y="-2.54" visible="pin" length="middle"/>
<pin name="GP13" x="-17.78" y="-5.08" visible="pin" length="middle"/>
<pin name="GP14" x="-17.78" y="-7.62" visible="pin" length="middle"/>
<pin name="GP15" x="-17.78" y="-10.16" visible="pin" length="middle"/>
<pin name="GP16" x="-17.78" y="-12.7" visible="pin" length="middle"/>
<pin name="GP17" x="-17.78" y="-15.24" visible="pin" length="middle"/>
<pin name="GP18" x="-17.78" y="-17.78" visible="pin" length="middle"/>
<pin name="GP19" x="-17.78" y="-20.32" visible="pin" length="middle"/>
<pin name="GP20" x="-17.78" y="-22.86" visible="pin" length="middle"/>
<pin name="GP21" x="17.78" y="-22.86" visible="pin" length="middle" rot="R180"/>
<pin name="GP22" x="17.78" y="-20.32" visible="pin" length="middle" rot="R180"/>
<pin name="GP26/ADC0" x="17.78" y="-15.24" visible="pin" length="middle" rot="R180"/>
<pin name="GP27/ADC1" x="17.78" y="-12.7" visible="pin" length="middle" rot="R180"/>
<pin name="GP28/ADC2" x="17.78" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="VBUS" x="17.78" y="27.94" visible="pin" length="middle" rot="R180"/>
<pin name="VSYS" x="17.78" y="25.4" visible="pin" length="middle" rot="R180"/>
<pin name="GND" x="17.78" y="22.86" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="3V3_EN" x="17.78" y="20.32" visible="pin" length="middle" rot="R180"/>
<pin name="3V3(OUT)" x="17.78" y="17.78" visible="pin" length="middle" direction="sup" rot="R180"/>
<pin name="VREF" x="17.78" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="SWDIO" x="17.78" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="SWCLK" x="17.78" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="GP0/TX" x="-17.78" y="27.94" visible="pin" length="middle"/>
<pin name="RUN/RST" x="17.78" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="AGND" x="17.78" y="-5.08" visible="pin" length="middle" direction="pwr" rot="R180"/>
</symbol>
<symbol name="+3V3">
<wire x1="-2.54" y1="2.54" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<pin name="+3V3" x="0" y="0" visible="off" length="middle" direction="sup" rot="R90"/>
<text x="0" y="6.35" size="0.8128" layer="94" align="center">+3V3</text>
</symbol>
<symbol name="GND">
<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
<wire x1="0" y1="-2.54" x2="0" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<text x="0" y="-6.35" size="0.8128" layer="95" align="center">GND</text>
</symbol>
<symbol name="PORT_3-PIN">
<wire x1="-2.54" y1="7.62" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="middle"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.8128" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="middle"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.8128" layer="94"/>
<pin name="3" x="-5.08" y="5.08" visible="pad" length="middle"/>
<wire x1="0" y1="5.08" x2="-2.54" y2="5.08" width="0.8128" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<text x="-2.54" y="8.89" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="PORT_2-PIN">
<wire x1="-2.54" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="0" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="middle"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.8128" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="middle"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.8128" layer="94"/>
<text x="-2.54" y="6.35" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="PORT_4-PIN">
<wire x1="-2.54" y1="10.16" x2="2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="10.16" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="middle"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.8128" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="middle"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.8128" layer="94"/>
<pin name="3" x="-5.08" y="5.08" visible="pad" length="middle"/>
<wire x1="0" y1="5.08" x2="-2.54" y2="5.08" width="0.8128" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="4" x="-5.08" y="7.62" visible="pad" length="middle"/>
<wire x1="0" y1="7.62" x2="-2.54" y2="7.62" width="0.8128" layer="94"/>
<text x="-2.54" y="11.43" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="SHEET">
<wire x1="0" y1="0" x2="0" y2="3.81" width="0.254" layer="94"/>
<text x="1.27" y="1.27" size="1.27" layer="94">Title:</text>
<wire x1="104.14" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="3.81" x2="104.14" y2="3.81" width="0.254" layer="94"/>
<wire x1="104.14" y1="3.81" x2="104.14" y2="0" width="0.254" layer="94"/>
<text x="1.27" y="5.08" size="1.27" layer="94">Date:</text>
<wire x1="0" y1="7.62" x2="104.14" y2="7.62" width="0.254" layer="94"/>
<wire x1="104.14" y1="7.62" x2="104.14" y2="3.81" width="0.254" layer="94"/>
<wire x1="20.32" y1="7.62" x2="20.32" y2="3.81" width="0.254" layer="94"/>
<text x="21.59" y="5.08" size="1.27" layer="94">Info:</text>
<text x="6.35" y="1.27" size="1.27" layer="95">&gt;DRAWING_NAME</text>
<text x="6.35" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
<wire x1="0" y1="7.62" x2="0" y2="3.81" width="0.254" layer="94"/>
</symbol>
<symbol name="TEST_POINT">
<pin name="1" x="0" y="-2.54" visible="off" length="short" rot="R90"/>
<circle x="0" y="2.54" radius="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.1524" layer="94"/>
<text x="0" y="2.54" size="0.8128" layer="95" align="center">&gt;NAME</text>
<text x="0" y="5.08" size="0.8128" layer="96" align="center">&gt;VALUE</text>
</symbol>
<symbol name="JACK_CENTER-POS">
<circle x="0" y="0" radius="1.29515" width="2.54" layer="94"/>
<wire x1="2.54" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94" curve="-270"/>
<pin name="GND" x="0" y="-7.62" visible="off" length="short" direction="pwr" rot="R90"/>
<pin name="+" x="0" y="7.62" visible="off" length="short" direction="out" rot="R270"/>
<wire x1="0" y1="5.08" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.032" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="5.588" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="4.572" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-5.08" x2="-3.048" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="-3.556" width="0.1524" layer="94"/>
<text x="2.54" y="-5.08" size="1.27" layer="95">&gt;NAME</text>
<text x="2.54" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="LED">
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.778" x2="2.032" y2="4.318" width="0.254" layer="94"/>
<wire x1="2.032" y1="4.318" x2="0.762" y2="3.302" width="0.254" layer="94"/>
<wire x1="2.032" y1="4.318" x2="2.032" y2="2.794" width="0.254" layer="94"/>
<wire x1="-0.762" y1="2.54" x2="0.508" y2="5.08" width="0.254" layer="94"/>
<wire x1="0.508" y1="5.08" x2="-0.762" y2="4.064" width="0.254" layer="94"/>
<wire x1="0.508" y1="5.08" x2="0.508" y2="3.556" width="0.254" layer="94"/>
<pin name="+" x="-7.62" y="0" visible="off" length="middle" direction="in"/>
<pin name="-" x="7.62" y="0" visible="off" length="middle" direction="out" rot="R180"/>
<text x="-2.032" y="0" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="3.302" y="-1.27" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<pin name="1" x="-7.62" y="0" visible="off" length="middle" swaplevel="1"/>
<pin name="2" x="7.62" y="0" visible="off" length="middle" swaplevel="1" rot="R180"/>
<text x="-2.032" y="0" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="0" y="-2.54" size="0.8128" layer="96" align="bottom-center">&gt;VALUE</text>
</symbol>
<symbol name="AUDIO-JACK_3-POLE">
<pin name="RING_R" x="10.16" y="2.54" visible="off" length="middle" direction="out" rot="R180"/>
<pin name="TIP_L" x="10.16" y="0" visible="off" length="middle" direction="out" rot="R180"/>
<pin name="SLEEVE" x="10.16" y="-2.54" visible="off" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="-3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-2.54" x2="-3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="-7.62" y="7.62" size="1.27" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="CAPACITOR_UNPOLARISED">
<wire x1="-0.762" y1="2.54" x2="-0.762" y2="0" width="0.254" layer="94"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="0" width="0.254" layer="94"/>
<pin name="1" x="-7.62" y="0" visible="off" length="middle" swaplevel="1"/>
<pin name="2" x="7.62" y="0" visible="off" length="middle" swaplevel="1" rot="R180"/>
<wire x1="0.762" y1="0" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0.762" y2="0" width="0.1524" layer="94"/>
<text x="2.54" y="1.27" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="2.54" y="-1.27" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="PORT_5-PIN">
<wire x1="-2.54" y1="12.7" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="12.7" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="middle"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.8128" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="middle"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.8128" layer="94"/>
<pin name="3" x="-5.08" y="5.08" visible="pad" length="middle"/>
<wire x1="0" y1="5.08" x2="-2.54" y2="5.08" width="0.8128" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="4" x="-5.08" y="7.62" visible="pad" length="middle"/>
<wire x1="0" y1="7.62" x2="-2.54" y2="7.62" width="0.8128" layer="94"/>
<pin name="5" x="-5.08" y="10.16" visible="pad" length="middle"/>
<wire x1="0" y1="10.16" x2="-2.54" y2="10.16" width="0.8128" layer="94"/>
<text x="-2.54" y="13.97" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="MOMENTARY-SWITCH_NO">
<circle x="-2.54" y="0" radius="0.508" width="0.1524" layer="94"/>
<circle x="2.54" y="0" radius="0.508" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="1.27" width="0.254" layer="94"/>
<pin name="1" x="-7.62" y="0" visible="off" length="middle" swaplevel="1"/>
<pin name="2" x="7.62" y="0" visible="off" length="middle" swaplevel="1" rot="R180"/>
<text x="-7.62" y="2.54" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="2.54" y="2.54" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="INFO">
<text x="0" y="-2.54" size="1.27" layer="97" align="top-left">&gt;VALUE</text>
<text x="0" y="0" size="1.27" layer="95" align="top-left">&gt;NAME</text>
</symbol>
<symbol name="JUMPER_3-WAY">
<circle x="-2.54" y="0" radius="0.508" width="0.1524" layer="94"/>
<circle x="2.54" y="0" radius="0.508" width="0.1524" layer="94"/>
<wire x1="-2.286" y1="0.762" x2="-0.254" y2="0.762" width="0.1524" layer="94" curve="-106.260205"/>
<text x="-2.54" y="2.54" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="2.54" y="2.54" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="-2.54" y="-2.54" visible="off" length="short" rot="R90"/>
<pin name="3" x="2.54" y="-2.54" visible="off" length="short" rot="R90"/>
<circle x="0" y="0" radius="0.508" width="0.1524" layer="94"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" rot="R90"/>
<wire x1="0.254" y1="0.762" x2="2.286" y2="0.762" width="0.1524" layer="94" curve="-106.260205"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V">
<gates>
<gate name="G$1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RASPBERRY-PI-PICO" prefix="MC" uservalue="yes">
<gates>
<gate name="MC" symbol="RASPBERRY-PI-PICO" x="0" y="0"/>
</gates>
<devices>
<device name="_THT" package="RASPBERRY-PI-PICO_THT">
<connects>
<connect gate="MC" pin="3V3(OUT)" pad="36"/>
<connect gate="MC" pin="3V3_EN" pad="37"/>
<connect gate="MC" pin="AGND" pad="33"/>
<connect gate="MC" pin="GND" pad="3 8 13 18 23 28 38 D_GND" route="any"/>
<connect gate="MC" pin="GP0/TX" pad="1"/>
<connect gate="MC" pin="GP1/RX" pad="2"/>
<connect gate="MC" pin="GP10" pad="14"/>
<connect gate="MC" pin="GP11" pad="15"/>
<connect gate="MC" pin="GP12" pad="16"/>
<connect gate="MC" pin="GP13" pad="17"/>
<connect gate="MC" pin="GP14" pad="19"/>
<connect gate="MC" pin="GP15" pad="20"/>
<connect gate="MC" pin="GP16" pad="21"/>
<connect gate="MC" pin="GP17" pad="22"/>
<connect gate="MC" pin="GP18" pad="24"/>
<connect gate="MC" pin="GP19" pad="25"/>
<connect gate="MC" pin="GP2" pad="4"/>
<connect gate="MC" pin="GP20" pad="26"/>
<connect gate="MC" pin="GP21" pad="27"/>
<connect gate="MC" pin="GP22" pad="29"/>
<connect gate="MC" pin="GP26/ADC0" pad="31"/>
<connect gate="MC" pin="GP27/ADC1" pad="32"/>
<connect gate="MC" pin="GP28/ADC2" pad="34"/>
<connect gate="MC" pin="GP3" pad="5"/>
<connect gate="MC" pin="GP4/SDA" pad="6"/>
<connect gate="MC" pin="GP5/SCL" pad="7"/>
<connect gate="MC" pin="GP6" pad="9"/>
<connect gate="MC" pin="GP7" pad="10"/>
<connect gate="MC" pin="GP8" pad="11"/>
<connect gate="MC" pin="GP9" pad="12"/>
<connect gate="MC" pin="RUN/RST" pad="30"/>
<connect gate="MC" pin="SWCLK" pad="SWCLK"/>
<connect gate="MC" pin="SWDIO" pad="SWDIO"/>
<connect gate="MC" pin="VBUS" pad="40"/>
<connect gate="MC" pin="VREF" pad="35"/>
<connect gate="MC" pin="VSYS" pad="39"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3">
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND">
<description>Gound</description>
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PORT_3-PIN" prefix="P" uservalue="yes">
<gates>
<gate name="3-PIN" symbol="PORT_3-PIN" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_3-PIN">
<connects>
<connect gate="3-PIN" pin="1" pad="1"/>
<connect gate="3-PIN" pin="2" pad="2"/>
<connect gate="3-PIN" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SCREW_TERMINAL" package="SCREW-TERMINAL_3-WAY">
<connects>
<connect gate="3-PIN" pin="1" pad="1"/>
<connect gate="3-PIN" pin="2" pad="2"/>
<connect gate="3-PIN" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_CH3.96" package="CH3.96_3-PIN">
<connects>
<connect gate="3-PIN" pin="1" pad="1"/>
<connect gate="3-PIN" pin="2" pad="2"/>
<connect gate="3-PIN" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_XH2.54" package="XH2.54_3-PIN">
<connects>
<connect gate="3-PIN" pin="1" pad="1"/>
<connect gate="3-PIN" pin="2" pad="2"/>
<connect gate="3-PIN" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PORT_2-PIN" prefix="P" uservalue="yes">
<gates>
<gate name="2-PIN" symbol="PORT_2-PIN" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_2-PIN">
<connects>
<connect gate="2-PIN" pin="1" pad="1"/>
<connect gate="2-PIN" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SCREW_TERMINAL" package="SCREW-TERMINAL_2-WAY">
<connects>
<connect gate="2-PIN" pin="1" pad="1"/>
<connect gate="2-PIN" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_CH3.96" package="CH3.96_2-PIN">
<connects>
<connect gate="2-PIN" pin="1" pad="1"/>
<connect gate="2-PIN" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_XH2.54" package="XH2.54_2-PIN">
<connects>
<connect gate="2-PIN" pin="1" pad="1"/>
<connect gate="2-PIN" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PORT_4-PIN" prefix="P" uservalue="yes">
<gates>
<gate name="4-PIN" symbol="PORT_4-PIN" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_4-PIN">
<connects>
<connect gate="4-PIN" pin="1" pad="1"/>
<connect gate="4-PIN" pin="2" pad="2"/>
<connect gate="4-PIN" pin="3" pad="3"/>
<connect gate="4-PIN" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SCREW_TERMINAL" package="SCREW-TERMINAL_4-WAY">
<connects>
<connect gate="4-PIN" pin="1" pad="1"/>
<connect gate="4-PIN" pin="2" pad="2"/>
<connect gate="4-PIN" pin="3" pad="3"/>
<connect gate="4-PIN" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_CH3.96" package="CH3.96_4-PIN">
<connects>
<connect gate="4-PIN" pin="1" pad="1"/>
<connect gate="4-PIN" pin="2" pad="2"/>
<connect gate="4-PIN" pin="3" pad="3"/>
<connect gate="4-PIN" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_XH2.54" package="XH2.54_4-PIN">
<connects>
<connect gate="4-PIN" pin="1" pad="1"/>
<connect gate="4-PIN" pin="2" pad="2"/>
<connect gate="4-PIN" pin="3" pad="3"/>
<connect gate="4-PIN" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SHEET" prefix="SCHEMATIC" uservalue="yes">
<gates>
<gate name="SCHEMATIC" symbol="SHEET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SHEET">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TEST-POINT" prefix="TP" uservalue="yes">
<gates>
<gate name="TP" symbol="TEST_POINT" x="0" y="-2.54" swaplevel="1"/>
</gates>
<devices>
<device name="_T" package="PAD_T">
<connects>
<connect gate="TP" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_B" package="PAD_B">
<connects>
<connect gate="TP" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_WIRE_LOOP" package="WIRE_2.54MM">
<connects>
<connect gate="TP" pin="1" pad="1 2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DC_POWER_CENTER-POS" prefix="J" uservalue="yes">
<gates>
<gate name="J" symbol="JACK_CENTER-POS" x="0" y="0"/>
</gates>
<devices>
<device name="_PCB-JACK" package="DC-JACK_5.5X2.1MM">
<connects>
<connect gate="J" pin="+" pad="CENTER"/>
<connect gate="J" pin="GND" pad="SLEEVE_A SLEEVE_B"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_HEADER" package="HEADER_2-PIN">
<connects>
<connect gate="J" pin="+" pad="2"/>
<connect gate="J" pin="GND" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_CH3.96" package="CH3.96_2-PIN">
<connects>
<connect gate="J" pin="+" pad="2"/>
<connect gate="J" pin="GND" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_XH2.54" package="XH2.54_2-PIN">
<connects>
<connect gate="J" pin="+" pad="2"/>
<connect gate="J" pin="GND" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED" prefix="LED" uservalue="yes">
<gates>
<gate name="LED" symbol="LED" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_5MM" package="LED_5MM">
<connects>
<connect gate="LED" pin="+" pad="+"/>
<connect gate="LED" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_3MM" package="LED_3MM">
<connects>
<connect gate="LED" pin="+" pad="+"/>
<connect gate="LED" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<gates>
<gate name="R" symbol="RESISTOR" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="RESISTOR_10.16MM">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_2.54MM" package="RESISTOR_2.54MM">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="3.5MM-JACK" prefix="J" uservalue="yes">
<gates>
<gate name="J" symbol="AUDIO-JACK_3-POLE" x="0" y="0"/>
</gates>
<devices>
<device name="_TYPE-A" package="3.5MM-JACK">
<connects>
<connect gate="J" pin="RING_R" pad="RING_A RING_B"/>
<connect gate="J" pin="SLEEVE" pad="SLEEVE"/>
<connect gate="J" pin="TIP_L" pad="TIP_A TIP_B"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAPACITOR_UNPOLARISED" prefix="C" uservalue="yes">
<gates>
<gate name="C" symbol="CAPACITOR_UNPOLARISED" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_2.54MM" package="CAPACITOR_UNPOLARISED_2.54MM">
<connects>
<connect gate="C" pin="1" pad="1"/>
<connect gate="C" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_5.08MM" package="CAPACITOR_UNPOLARISED_5.08MM">
<connects>
<connect gate="C" pin="1" pad="1"/>
<connect gate="C" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PORT_5-PIN" prefix="P" uservalue="yes">
<gates>
<gate name="5-PIN" symbol="PORT_5-PIN" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_5-PIN">
<connects>
<connect gate="5-PIN" pin="1" pad="1"/>
<connect gate="5-PIN" pin="2" pad="2"/>
<connect gate="5-PIN" pin="3" pad="3"/>
<connect gate="5-PIN" pin="4" pad="4"/>
<connect gate="5-PIN" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SCREW_TERMINAL" package="SCREW-TERMINAL_5-WAY">
<connects>
<connect gate="5-PIN" pin="1" pad="1"/>
<connect gate="5-PIN" pin="2" pad="2"/>
<connect gate="5-PIN" pin="3" pad="3"/>
<connect gate="5-PIN" pin="4" pad="4"/>
<connect gate="5-PIN" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_XH2.54" package="XH2.54_5-PIN">
<connects>
<connect gate="5-PIN" pin="1" pad="1"/>
<connect gate="5-PIN" pin="2" pad="2"/>
<connect gate="5-PIN" pin="3" pad="3"/>
<connect gate="5-PIN" pin="4" pad="4"/>
<connect gate="5-PIN" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MOMENTARY-SWITCH_NO" prefix="PB" uservalue="yes">
<gates>
<gate name="PB" symbol="MOMENTARY-SWITCH_NO" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_2-PIN">
<connects>
<connect gate="PB" pin="1" pad="1"/>
<connect gate="PB" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_PUSHBUTTON" package="6MM_PUSHBUTTON">
<connects>
<connect gate="PB" pin="1" pad="1_A 1_B" route="any"/>
<connect gate="PB" pin="2" pad="2_A 2_B" route="any"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_CH5.96" package="CH3.96_2-PIN">
<connects>
<connect gate="PB" pin="1" pad="1"/>
<connect gate="PB" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="INFO" prefix="INFO" uservalue="yes">
<gates>
<gate name="INFO" symbol="INFO" x="0" y="0"/>
</gates>
<devices>
<device name="_B" package="INFO_B">
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_T" package="INFO_T">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JUMPER_3-WAY" prefix="JP" uservalue="yes">
<gates>
<gate name="JP" symbol="JUMPER_3-WAY" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_3-PIN_JUMPER">
<connects>
<connect gate="JP" pin="1" pad="1"/>
<connect gate="JP" pin="2" pad="A"/>
<connect gate="JP" pin="3" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_PCB_B" package="PCB-JUMPER_3-WAY_B">
<connects>
<connect gate="JP" pin="1" pad="2"/>
<connect gate="JP" pin="2" pad="A"/>
<connect gate="JP" pin="3" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_PCB_T" package="PCB-JUMPER_3-WAY_T">
<connects>
<connect gate="JP" pin="1" pad="2"/>
<connect gate="JP" pin="2" pad="A"/>
<connect gate="JP" pin="3" pad="1"/>
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
<part name="U$1" library="myLibrary" deviceset="+5V" device=""/>
<part name="MC1" library="myLibrary" deviceset="RASPBERRY-PI-PICO" device="_THT"/>
<part name="U$5" library="myLibrary" deviceset="+3V3" device=""/>
<part name="U$6" library="myLibrary" deviceset="GND" device=""/>
<part name="U$7" library="myLibrary" deviceset="GND" device=""/>
<part name="U$8" library="myLibrary" deviceset="GND" device=""/>
<part name="U$9" library="myLibrary" deviceset="GND" device=""/>
<part name="LED_OUT" library="myLibrary" deviceset="PORT_3-PIN" device="_XH2.54"/>
<part name="MODE" library="myLibrary" deviceset="PORT_2-PIN" device="_XH2.54"/>
<part name="DISPLAY" library="myLibrary" deviceset="PORT_4-PIN" device="_HEADER"/>
<part name="SCHEMATIC1" library="myLibrary" deviceset="SHEET" device="" value="17-09-2023"/>
<part name="TP1" library="myLibrary" deviceset="TEST-POINT" device="_T" value="AUDIO_IN"/>
<part name="TP2" library="myLibrary" deviceset="TEST-POINT" device="_T" value="GND"/>
<part name="J1" library="myLibrary" deviceset="DC_POWER_CENTER-POS" device="_XH2.54" value="POW (5V)"/>
<part name="POW" library="myLibrary" deviceset="LED" device="_3MM"/>
<part name="ACT" library="myLibrary" deviceset="LED" device="_3MM"/>
<part name="R1" library="myLibrary" deviceset="RESISTOR" device="" value="100k"/>
<part name="R2" library="myLibrary" deviceset="RESISTOR" device="" value="100k"/>
<part name="R3" library="myLibrary" deviceset="RESISTOR" device="" value="10k"/>
<part name="R4" library="myLibrary" deviceset="RESISTOR" device="" value="10k"/>
<part name="J2" library="myLibrary" deviceset="3.5MM-JACK" device="_TYPE-A" value="AUDIO_IN"/>
<part name="P4" library="myLibrary" deviceset="PORT_3-PIN" device="_XH2.54" value="AUDIO_IN"/>
<part name="C1" library="myLibrary" deviceset="CAPACITOR_UNPOLARISED" device="_5.08MM" value="100nf"/>
<part name="U$10" library="myLibrary" deviceset="+3V3" device=""/>
<part name="U$11" library="myLibrary" deviceset="GND" device=""/>
<part name="P5" library="myLibrary" deviceset="PORT_5-PIN" device="_XH2.54" value="MIC_IN"/>
<part name="U$12" library="myLibrary" deviceset="GND" device=""/>
<part name="U$13" library="myLibrary" deviceset="GND" device=""/>
<part name="U$14" library="myLibrary" deviceset="GND" device=""/>
<part name="U$15" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$16" library="myLibrary" deviceset="+5V" device=""/>
<part name="TP3" library="myLibrary" deviceset="TEST-POINT" device="_T" value="LED_OUT"/>
<part name="U$17" library="myLibrary" deviceset="GND" device=""/>
<part name="R5" library="myLibrary" deviceset="RESISTOR" device="" value="10k"/>
<part name="R6" library="myLibrary" deviceset="RESISTOR" device="" value="10k"/>
<part name="U$18" library="myLibrary" deviceset="+3V3" device=""/>
<part name="U$19" library="myLibrary" deviceset="GND" device=""/>
<part name="U$2" library="myLibrary" deviceset="GND" device=""/>
<part name="PB1" library="myLibrary" deviceset="MOMENTARY-SWITCH_NO" device="_PUSHBUTTON" value="MODE"/>
<part name="PB2" library="myLibrary" deviceset="MOMENTARY-SWITCH_NO" device="_PUSHBUTTON" value="RESET"/>
<part name="U$3" library="myLibrary" deviceset="GND" device=""/>
<part name="U$4" library="myLibrary" deviceset="GND" device=""/>
<part name="CREATOR" library="myLibrary" deviceset="INFO" device="_T" value="Isaac"/>
<part name="JP1" library="myLibrary" deviceset="JUMPER_3-WAY" device="_HEADER" value="GAIN"/>
<part name="U$20" library="myLibrary" deviceset="+3V3" device=""/>
<part name="U$21" library="myLibrary" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="0" y1="7.62" x2="0" y2="93.98" width="0.254" layer="94"/>
<wire x1="0" y1="93.98" x2="215.9" y2="93.98" width="0.254" layer="94"/>
<wire x1="215.9" y1="93.98" x2="215.9" y2="0" width="0.254" layer="94"/>
<wire x1="215.9" y1="0" x2="104.14" y2="0" width="0.254" layer="94"/>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="33.02" y="71.12" smashed="yes"/>
<instance part="MC1" gate="MC" x="88.9" y="38.1" smashed="yes">
<attribute name="NAME" x="76.2" y="69.85" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="76.2" y="11.43" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="U$5" gate="G$1" x="119.38" y="66.04" smashed="yes"/>
<instance part="U$6" gate="G$1" x="114.3" y="53.34" smashed="yes"/>
<instance part="U$7" gate="G$1" x="7.62" y="17.78" smashed="yes"/>
<instance part="U$8" gate="G$1" x="33.02" y="30.48" smashed="yes"/>
<instance part="U$9" gate="G$1" x="33.02" y="66.04" smashed="yes"/>
<instance part="LED_OUT" gate="3-PIN" x="25.4" y="66.04" smashed="yes" rot="MR0">
<attribute name="NAME" x="27.94" y="74.93" size="0.8128" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="27.94" y="62.23" size="0.8128" layer="96" rot="MR0" align="center-left"/>
</instance>
<instance part="MODE" gate="2-PIN" x="25.4" y="30.48" smashed="yes" rot="MR0">
<attribute name="NAME" x="27.94" y="36.83" size="0.8128" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="27.94" y="26.67" size="0.8128" layer="96" rot="MR0" align="center-left"/>
</instance>
<instance part="DISPLAY" gate="4-PIN" x="25.4" y="45.72" smashed="yes" rot="MR0">
<attribute name="NAME" x="27.94" y="57.15" size="0.8128" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="27.94" y="41.91" size="0.8128" layer="96" rot="MR0" align="center-left"/>
</instance>
<instance part="SCHEMATIC1" gate="SCHEMATIC" x="0" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="6.35" y="1.27" size="1.27" layer="95"/>
<attribute name="VALUE" x="6.35" y="5.08" size="1.27" layer="96"/>
</instance>
<instance part="TP1" gate="TP" x="162.56" y="45.72" smashed="yes">
<attribute name="NAME" x="162.56" y="48.26" size="0.8128" layer="95" align="center"/>
<attribute name="VALUE" x="162.56" y="50.8" size="0.8128" layer="96" align="center"/>
</instance>
<instance part="TP2" gate="TP" x="114.3" y="63.5" smashed="yes">
<attribute name="NAME" x="114.3" y="66.04" size="0.8128" layer="95" align="center"/>
<attribute name="VALUE" x="114.3" y="68.58" size="0.8128" layer="96" align="center"/>
</instance>
<instance part="J1" gate="J" x="7.62" y="25.4" smashed="yes">
<attribute name="NAME" x="10.16" y="20.32" size="1.27" layer="95"/>
<attribute name="VALUE" x="10.16" y="30.48" size="1.27" layer="96"/>
</instance>
<instance part="POW" gate="LED" x="7.62" y="58.42" smashed="yes" rot="R270">
<attribute name="NAME" x="7.62" y="60.452" size="0.8128" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="6.35" y="55.118" size="0.8128" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="ACT" gate="LED" x="106.68" y="83.82" smashed="yes">
<attribute name="NAME" x="104.648" y="83.82" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="109.982" y="82.55" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="R1" gate="R" x="147.32" y="45.72" smashed="yes" rot="R90">
<attribute name="NAME" x="147.32" y="43.688" size="0.8128" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="149.86" y="45.72" size="0.8128" layer="96" rot="R90" align="bottom-center"/>
</instance>
<instance part="R2" gate="R" x="147.32" y="30.48" smashed="yes" rot="R90">
<attribute name="NAME" x="147.32" y="28.448" size="0.8128" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="149.86" y="30.48" size="0.8128" layer="96" rot="R90" align="bottom-center"/>
</instance>
<instance part="R3" gate="R" x="170.18" y="43.18" smashed="yes">
<attribute name="NAME" x="168.148" y="43.18" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="170.18" y="40.64" size="0.8128" layer="96" align="bottom-center"/>
</instance>
<instance part="R4" gate="R" x="170.18" y="33.02" smashed="yes">
<attribute name="NAME" x="168.148" y="33.02" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="170.18" y="30.48" size="0.8128" layer="96" align="bottom-center"/>
</instance>
<instance part="J2" gate="J" x="200.66" y="35.56" smashed="yes" rot="MR0">
<attribute name="NAME" x="208.28" y="43.18" size="1.27" layer="95" rot="MR0"/>
<attribute name="VALUE" x="208.28" y="27.94" size="1.27" layer="96" rot="MR0"/>
</instance>
<instance part="P4" gate="3-PIN" x="198.12" y="17.78" smashed="yes">
<attribute name="NAME" x="195.58" y="26.67" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="195.58" y="13.97" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="C1" gate="C" x="154.94" y="38.1" smashed="yes">
<attribute name="NAME" x="157.48" y="39.37" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="157.48" y="36.83" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="U$10" gate="G$1" x="147.32" y="53.34" smashed="yes"/>
<instance part="U$11" gate="G$1" x="147.32" y="22.86" smashed="yes"/>
<instance part="P5" gate="5-PIN" x="198.12" y="60.96" smashed="yes">
<attribute name="NAME" x="195.58" y="74.93" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="195.58" y="57.15" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="U$12" gate="G$1" x="187.96" y="33.02" smashed="yes"/>
<instance part="U$13" gate="G$1" x="190.5" y="17.78" smashed="yes"/>
<instance part="U$14" gate="G$1" x="190.5" y="60.96" smashed="yes"/>
<instance part="U$15" gate="G$1" x="109.22" y="66.04" smashed="yes"/>
<instance part="U$16" gate="G$1" x="7.62" y="33.02" smashed="yes"/>
<instance part="TP3" gate="TP" x="38.1" y="71.12" smashed="yes">
<attribute name="NAME" x="38.1" y="73.66" size="0.8128" layer="95" align="center"/>
<attribute name="VALUE" x="38.1" y="76.2" size="0.8128" layer="96" align="center"/>
</instance>
<instance part="U$17" gate="G$1" x="7.62" y="50.8" smashed="yes"/>
<instance part="R5" gate="R" x="7.62" y="73.66" smashed="yes" rot="R90">
<attribute name="NAME" x="7.62" y="71.628" size="0.8128" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="10.16" y="73.66" size="0.8128" layer="96" rot="R90" align="bottom-center"/>
</instance>
<instance part="R6" gate="R" x="91.44" y="83.82" smashed="yes">
<attribute name="NAME" x="89.408" y="83.82" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="91.44" y="81.28" size="0.8128" layer="96" align="bottom-center"/>
</instance>
<instance part="U$18" gate="G$1" x="7.62" y="81.28" smashed="yes"/>
<instance part="U$19" gate="G$1" x="114.3" y="83.82" smashed="yes"/>
<instance part="U$2" gate="G$1" x="33.02" y="45.72" smashed="yes"/>
<instance part="PB1" gate="PB" x="30.48" y="17.78" smashed="yes">
<attribute name="NAME" x="22.86" y="20.32" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="33.02" y="20.32" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="PB2" gate="PB" x="40.64" y="86.36" smashed="yes">
<attribute name="NAME" x="33.02" y="88.9" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="43.18" y="88.9" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="U$3" gate="G$1" x="22.86" y="17.78" smashed="yes"/>
<instance part="U$4" gate="G$1" x="48.26" y="86.36" smashed="yes"/>
<instance part="CREATOR" gate="INFO" x="106.68" y="7.62" smashed="yes">
<attribute name="VALUE" x="106.68" y="5.08" size="1.27" layer="97" align="top-left"/>
<attribute name="NAME" x="106.68" y="7.62" size="1.27" layer="95" align="top-left"/>
</instance>
<instance part="JP1" gate="JP" x="167.64" y="81.28" smashed="yes">
<attribute name="NAME" x="165.1" y="83.82" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="170.18" y="83.82" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="U$20" gate="G$1" x="160.02" y="78.74" smashed="yes"/>
<instance part="U$21" gate="G$1" x="175.26" y="78.74" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
<net name="AUDIO_IN" class="0">
<segment>
<pinref part="R1" gate="R" pin="1"/>
<pinref part="R2" gate="R" pin="2"/>
<pinref part="C1" gate="C" pin="1"/>
<junction x="147.32" y="38.1"/>
<pinref part="C1" gate="C" pin="1"/>
<wire x1="144.78" y1="38.1" x2="147.32" y2="38.1" width="0.1524" layer="91"/>
<label x="142.24" y="38.1" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="MC1" gate="MC" pin="GP28/ADC2"/>
<wire x1="109.22" y1="27.94" x2="106.68" y2="27.94" width="0.1524" layer="91"/>
<label x="111.76" y="27.94" size="1.778" layer="95" align="center-left"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="R1" gate="R" pin="2"/>
<pinref part="U$10" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="MC1" gate="MC" pin="3V3(OUT)"/>
<pinref part="U$5" gate="G$1" pin="+3V3"/>
<wire x1="106.68" y1="55.88" x2="119.38" y2="55.88" width="0.1524" layer="91"/>
<wire x1="119.38" y1="55.88" x2="119.38" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P5" gate="5-PIN" pin="2"/>
<wire x1="190.5" y1="63.5" x2="193.04" y2="63.5" width="0.1524" layer="91"/>
<label x="187.96" y="63.5" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="U$18" gate="G$1" pin="+3V3"/>
<pinref part="R5" gate="R" pin="2"/>
</segment>
<segment>
<pinref part="DISPLAY" gate="4-PIN" pin="2"/>
<wire x1="33.02" y1="48.26" x2="30.48" y2="48.26" width="0.1524" layer="91"/>
<label x="35.56" y="48.26" size="1.778" layer="95" align="center-left"/>
</segment>
<segment>
<pinref part="JP1" gate="JP" pin="1"/>
<wire x1="165.1" y1="78.74" x2="160.02" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$20" gate="G$1" pin="+3V3"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="GND"/>
<pinref part="R2" gate="R" pin="1"/>
</segment>
<segment>
<pinref part="J2" gate="J" pin="SLEEVE"/>
<wire x1="187.96" y1="33.02" x2="190.5" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="P4" gate="3-PIN" pin="1"/>
<wire x1="190.5" y1="17.78" x2="193.04" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$13" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="P5" gate="5-PIN" pin="1"/>
<wire x1="190.5" y1="60.96" x2="193.04" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="MC1" gate="MC" pin="GND"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="106.68" y1="60.96" x2="114.3" y2="60.96" width="0.1524" layer="91"/>
<wire x1="114.3" y1="60.96" x2="114.3" y2="53.34" width="0.1524" layer="91"/>
<pinref part="TP2" gate="TP" pin="1"/>
<junction x="114.3" y="60.96"/>
</segment>
<segment>
<pinref part="J1" gate="J" pin="GND"/>
<pinref part="U$7" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="MODE" gate="2-PIN" pin="1"/>
<pinref part="U$8" gate="G$1" pin="GND"/>
<wire x1="33.02" y1="30.48" x2="30.48" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LED_OUT" gate="3-PIN" pin="1"/>
<pinref part="U$9" gate="G$1" pin="GND"/>
<wire x1="33.02" y1="66.04" x2="30.48" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$17" gate="G$1" pin="GND"/>
<pinref part="POW" gate="LED" pin="-"/>
</segment>
<segment>
<pinref part="U$19" gate="G$1" pin="GND"/>
<pinref part="ACT" gate="LED" pin="-"/>
</segment>
<segment>
<pinref part="DISPLAY" gate="4-PIN" pin="1"/>
<wire x1="33.02" y1="45.72" x2="30.48" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<pinref part="PB1" gate="PB" pin="1"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="GND"/>
<pinref part="PB2" gate="PB" pin="2"/>
</segment>
<segment>
<pinref part="JP1" gate="JP" pin="3"/>
<wire x1="170.18" y1="78.74" x2="175.26" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="GND"/>
</segment>
</net>
<net name="GAIN" class="0">
<segment>
<pinref part="P5" gate="5-PIN" pin="3"/>
<pinref part="JP1" gate="JP" pin="2"/>
<wire x1="193.04" y1="66.04" x2="167.64" y2="66.04" width="0.1524" layer="91"/>
<wire x1="167.64" y1="66.04" x2="167.64" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="AR" class="0">
<segment>
<pinref part="P5" gate="5-PIN" pin="5"/>
<wire x1="190.5" y1="71.12" x2="193.04" y2="71.12" width="0.1524" layer="91"/>
<label x="187.96" y="71.12" size="1.778" layer="95" align="center-right"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="J2" gate="J" pin="TIP_L"/>
<pinref part="R4" gate="R" pin="2"/>
<wire x1="190.5" y1="35.56" x2="180.34" y2="35.56" width="0.1524" layer="91"/>
<wire x1="180.34" y1="35.56" x2="177.8" y2="35.56" width="0.1524" layer="91"/>
<wire x1="177.8" y1="35.56" x2="177.8" y2="33.02" width="0.1524" layer="91"/>
<pinref part="P4" gate="3-PIN" pin="2"/>
<wire x1="193.04" y1="20.32" x2="180.34" y2="20.32" width="0.1524" layer="91"/>
<wire x1="180.34" y1="20.32" x2="180.34" y2="35.56" width="0.1524" layer="91"/>
<junction x="180.34" y="35.56"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="J2" gate="J" pin="RING_R"/>
<pinref part="R3" gate="R" pin="2"/>
<wire x1="190.5" y1="38.1" x2="182.88" y2="38.1" width="0.1524" layer="91"/>
<wire x1="182.88" y1="38.1" x2="177.8" y2="38.1" width="0.1524" layer="91"/>
<wire x1="177.8" y1="38.1" x2="177.8" y2="43.18" width="0.1524" layer="91"/>
<pinref part="P4" gate="3-PIN" pin="3"/>
<wire x1="193.04" y1="22.86" x2="182.88" y2="22.86" width="0.1524" layer="91"/>
<wire x1="182.88" y1="22.86" x2="182.88" y2="38.1" width="0.1524" layer="91"/>
<junction x="182.88" y="38.1"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="R3" gate="R" pin="1"/>
<pinref part="C1" gate="C" pin="2"/>
<wire x1="162.56" y1="43.18" x2="162.56" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R4" gate="R" pin="1"/>
<wire x1="162.56" y1="33.02" x2="162.56" y2="38.1" width="0.1524" layer="91"/>
<junction x="162.56" y="38.1"/>
<pinref part="TP1" gate="TP" pin="1"/>
<junction x="162.56" y="43.18"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="MC1" gate="MC" pin="VSYS"/>
<pinref part="U$15" gate="G$1" pin="+5V"/>
<wire x1="106.68" y1="63.5" x2="109.22" y2="63.5" width="0.1524" layer="91"/>
<wire x1="109.22" y1="63.5" x2="109.22" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$16" gate="G$1" pin="+5V"/>
<pinref part="J1" gate="J" pin="+"/>
</segment>
<segment>
<pinref part="LED_OUT" gate="3-PIN" pin="3"/>
<pinref part="U$1" gate="G$1" pin="+5V"/>
<wire x1="33.02" y1="71.12" x2="30.48" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MIC_IN" class="0">
<segment>
<pinref part="MC1" gate="MC" pin="GP27/ADC1"/>
<wire x1="109.22" y1="25.4" x2="106.68" y2="25.4" width="0.1524" layer="91"/>
<label x="111.76" y="25.4" size="1.778" layer="95" align="center-left"/>
</segment>
<segment>
<pinref part="P5" gate="5-PIN" pin="4"/>
<wire x1="190.5" y1="68.58" x2="193.04" y2="68.58" width="0.1524" layer="91"/>
<label x="187.96" y="68.58" size="1.778" layer="95" align="center-right"/>
</segment>
</net>
<net name="LED_OUT" class="0">
<segment>
<pinref part="TP3" gate="TP" pin="1"/>
<wire x1="40.64" y1="68.58" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<pinref part="LED_OUT" gate="3-PIN" pin="2"/>
<wire x1="38.1" y1="68.58" x2="30.48" y2="68.58" width="0.1524" layer="91"/>
<junction x="38.1" y="68.58"/>
<label x="43.18" y="68.58" size="1.778" layer="95" align="center-left"/>
</segment>
<segment>
<pinref part="MC1" gate="MC" pin="GP7"/>
<wire x1="68.58" y1="48.26" x2="71.12" y2="48.26" width="0.1524" layer="91"/>
<label x="66.04" y="48.26" size="1.778" layer="95" align="center-right"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="MC1" gate="MC" pin="GP4/SDA"/>
<wire x1="68.58" y1="55.88" x2="71.12" y2="55.88" width="0.1524" layer="91"/>
<label x="66.04" y="55.88" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="DISPLAY" gate="4-PIN" pin="4"/>
<wire x1="33.02" y1="53.34" x2="30.48" y2="53.34" width="0.1524" layer="91"/>
<label x="35.56" y="53.34" size="1.778" layer="95" align="center-left"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="MC1" gate="MC" pin="GP5/SCL"/>
<wire x1="68.58" y1="53.34" x2="71.12" y2="53.34" width="0.1524" layer="91"/>
<label x="66.04" y="53.34" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="DISPLAY" gate="4-PIN" pin="3"/>
<wire x1="33.02" y1="50.8" x2="30.48" y2="50.8" width="0.1524" layer="91"/>
<label x="35.56" y="50.8" size="1.778" layer="95" align="center-left"/>
</segment>
</net>
<net name="MODE" class="0">
<segment>
<pinref part="MC1" gate="MC" pin="GP2"/>
<wire x1="68.58" y1="60.96" x2="71.12" y2="60.96" width="0.1524" layer="91"/>
<label x="66.04" y="60.96" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="MODE" gate="2-PIN" pin="2"/>
<wire x1="33.02" y1="33.02" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
<label x="35.56" y="33.02" size="1.778" layer="95" align="center-left"/>
</segment>
<segment>
<pinref part="PB1" gate="PB" pin="2"/>
<wire x1="40.64" y1="17.78" x2="38.1" y2="17.78" width="0.1524" layer="91"/>
<label x="43.18" y="17.78" size="1.778" layer="95" align="center-left"/>
</segment>
</net>
<net name="ACT_LED" class="0">
<segment>
<pinref part="MC1" gate="MC" pin="GP9"/>
<wire x1="68.58" y1="43.18" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
<label x="66.04" y="43.18" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="R6" gate="R" pin="1"/>
<wire x1="81.28" y1="83.82" x2="83.82" y2="83.82" width="0.1524" layer="91"/>
<label x="78.74" y="83.82" size="1.778" layer="95" align="center-right"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="POW" gate="LED" pin="+"/>
<pinref part="R5" gate="R" pin="1"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="ACT" gate="LED" pin="+"/>
<pinref part="R6" gate="R" pin="2"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<pinref part="MC1" gate="MC" pin="RUN/RST"/>
<wire x1="109.22" y1="45.72" x2="106.68" y2="45.72" width="0.1524" layer="91"/>
<label x="111.76" y="45.72" size="1.778" layer="95" align="center-left"/>
</segment>
<segment>
<pinref part="PB2" gate="PB" pin="1"/>
<wire x1="30.48" y1="86.36" x2="33.02" y2="86.36" width="0.1524" layer="91"/>
<label x="27.94" y="86.36" size="1.778" layer="95" align="center-right"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="9.0" severity="warning">
Since Version 9.0, EAGLE supports the align property for labels. 
Labels in schematic will not be understood with this version. Update EAGLE to the latest version 
for full support of labels. 
</note>
</compatibility>
</eagle>
