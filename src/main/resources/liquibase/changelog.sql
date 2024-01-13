--liquibase formatted sql

--changeset author:Popov Sergey
CREATE TABLE xml_file (
id VARCHAR NOT NULL,
mediatype VARCHAR,
structured_text TEXT,
PRIMARY KEY (id)
);

INSERT INTO xml_file (id, mediatype, structured_text) VALUES ('005PAaH11EN8Q828', 'chat', '<?xml version="1.0" encoding="UTF-8"?>
<chatTranscript startAt="2022-03-05T07:09:33Z" sessionId="005PAaH11EN8Q828">
<newParty userId="009662230CAD7F2B" timeShift="0" visibility="ALL" eventId="1">
<userInfo personId="" userNick=" " userType="CLIENT" protocolType="FLEX" timeZoneOffset="300"
clientVersion="106" />
<userData>
<item key="FirstName" type="string"></item>
<item key="IdentifyCreateContact" type="string">3</item>
<item key="LastName" type="string"></item>
<item key="MediaType" type="string">chat</item>
<item key="TimeZone" type="string">300</item>
<item key="agreementId" type="string">1011714</item>
<item key="agreementNumber" type="string">7778885499</item>
<item key="appVersion" type="string">version 3.40.1, build 304001</item>
<item key="billingId" type="string">556</item>
<item key="cityId" type="string">556</item>
<item key="citydomain" type="string">interzet</item>
<item key="clientId" type="string">3455333</item>
<item key="clientType" type="string">b2c</item>
<item key="inetConnType" type="string">wi-fi</item>
<item key="newLogic" type="string">true</item>
<item key="osVersion" type="string">Android SDK: 30 (11)</item>
<item key="phoneModel" type="string">SM-A515F</item>
<item key="push_notification_debug" type="string">false</item>
<item key="push_notification_deviceid" type="string">eyAfHWw5TNmmrbvw1gti3l:APAtjwjw4OLtp8mnYEIczRZACVEpAKhdEos3JQBhL-
c_M_Wpzyj0RnYX7AMD9wq3t2t24tWWOnKfUwvGf2hI7qpNm_7Ko</item>
<item key="push_notification_language" type="string">ru-RU</item>
<item key="push_notification_provider" type="string">domru</item>
<item key="push_notification_type" type="string">fcm</item>
<item key="timestamp" type="string">1646464148</item>
<item key="token" type="string">68676356n3567567</item>
</userData>
</newParty>
<message userId="009662230CAD7F2B" timeShift="0" visibility="ALL" eventId="3">
<msgText> , </msgText>
</message>
<newParty userId="0096621C4785888C" timeShift="1" visibility="ALL" eventId="4">
<userInfo personId="" userNick="system" userType="EXTERNAL" protocolType="ESP" timeZoneOffset="0" />
</newParty>
<notice userId="0096621C4785888C" timeShift="1" visibility="ALL" eventId="5">
<noticeText noticeType="USER_CUSTOM">InteractionId=005PAaH11EN8Q828</noticeText>
</notice>
<newParty userId="009662230CAF7F2D" timeShift="2" visibility="ALL" eventId="7">
<userInfo personId="" userNick=" ." userType="AGENT" protocolType="BASIC" timeZoneOffset="0"
clientVersion="105" />
<userData>
<item key="GCTI_Chat_PartyStyle" type="string">BOT</item>
<item key="GCTI_Chat_SetPartyStyle" type="string">BOT</item>
</userData>
<eventAttributes>
<item key="GCTI_SYSTEM" type="kvlist">
<item key="party-info" type="kvlist">
<item key="style" type="string">BOT</item>
</item>
</item>
</eventAttributes>
</newParty>
<message userId="009662230CAF7F2D" timeShift="13" visibility="ALL" eventId="10">
<msgText> , .</msgText>
</message>
<partyLeft userId="009662230CAF7F2D" timeShift="13" visibility="ALL" eventId="11" askerId="009662230CAF7F2D">
<reason code="3">left due to disconnect</reason>
</partyLeft>
<newParty userId="0096621C47BC888F" timeShift="25" visibility="ALL" eventId="12">
<userInfo personId="" userNick="botTransfer" userType="EXTERNAL" protocolType="ESP" timeZoneOffset="0" />
</newParty>
<notice userId="0096621C47BC888F" timeShift="25" visibility="ALL" eventId="13">
<noticeText noticeType="USER_CUSTOM">0</noticeText>
</notice>
<newParty userId="009662230CC77F2E" timeShift="26" visibility="ALL" eventId="14">
<userInfo personId="karaca.ar" userNick=" Karaca" userType="AGENT" protocolType="BASIC" timeZoneOffset="
0" clientVersion="105" />
<userData>
<item key="GWS_USERID" type="string">a2cf6002c9b84887b14e251bca146568</item>
</userData>
</newParty>
<message userId="009662230CC77F2E" timeShift="43" visibility="ALL" eventId="17">
<msgText> !</msgText>
</message>
<message userId="009662230CC77F2E" timeShift="46" visibility="ALL" eventId="18">
<msgText>, , ?</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="78" visibility="ALL" eventId="92">
<msgText> , , .</msgText>
</message>
<message userId="009662230CC77F2E" timeShift="170" visibility="ALL" eventId="96">
<msgText> . . , .</msgText>
</message>
<partyLeft userId="009662230CC77F2E" timeShift="178" visibility="ALL" eventId="97" askerId="009662230CC77F2E"
>
<reason>left</reason>
</partyLeft>
<newParty userId="009662230D617F4A" timeShift="180" visibility="ALL" eventId="98">
<userInfo personId="tribuna.di" userNick=" Maybe" userType="AGENT" protocolType="BASIC" timeZoneOffset="
0" clientVersion="105" />
<userData>
<item key="GWS_USERID" type="string">abfcfa39f99745a3aa132eaf78dd91be</item>
</userData>
</newParty>
<message userId="009662230D617F4A" timeShift="186" visibility="ALL" eventId="101">
<msgText> ! </msgText>
</message>
<message userId="009662230D617F4A" timeShift="225" visibility="ALL" eventId="108">
<msgText> .-, . -?</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="238" visibility="ALL" eventId="122">
<msgText> .8</msgText>
</message>
<message userId="009662230D617F4A" timeShift="250" visibility="ALL" eventId="126">
<msgText> ?</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="255" visibility="ALL" eventId="131">
<msgText></msgText>
</message>
<message userId="009662230D617F4A" timeShift="311" visibility="ALL" eventId="143">
<msgText>, . ,. ? .</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="334" visibility="ALL" eventId="167">
<msgText> </msgText>
</message>
<message userId="009662230D617F4A" timeShift="529" visibility="ALL" eventId="173">
<msgText> . . -, - ? . . . </msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="625" visibility="ALL" eventId="301">
<msgText> , - - ?</msgText>
</message>
<message userId="009662230D617F4A" timeShift="780" visibility="ALL" eventId="313">
<msgText> . , 15 , , 40 .</msgText>
</message>
<message userId="009662230D617F4A" timeShift="829" visibility="ALL" eventId="323">
<msgText> , . ?</msgText>
1.
1.
2.
3.
4.
5.
6.
</message>
<message userId="009662230CAD7F2B" timeShift="843" visibility="ALL" eventId="342">
<msgText> </msgText>
</message>
<message userId="009662230D617F4A" timeShift="908" visibility="ALL" eventId="348">
<msgText> . ?</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="1088" visibility="ALL" eventId="372">
<msgText>, </msgText>
</message>
<message userId="009662230D617F4A" timeShift="1104" visibility="ALL" eventId="375">
<msgText> . . . , . 5. !</msgText>
</message>
<partyLeft userId="009662230D617F4A" timeShift="1107" visibility="ALL" eventId="376" askerId="
009662230D617F4A">
<reason code="2">left with request to close forcedly</reason>
</partyLeft>
<partyLeft userId="009662230CAD7F2B" timeShift="1107" visibility="ALL" eventId="377" askerId="
009662230D617F4A">
<reason code="4">removed by other party</reason>
</partyLeft>
</chatTranscript>')

--changeset author:id2

INSERT INTO xml_file (id, mediatype, structured_text) VALUES ('005PAaH11EN8Q', 'test', '<?xml version="1.0" encoding="UTF-8"?>
<chatTranscript startAt="2022-03-05T07:09:33Z" sessionId="005PAaH11EN8Q">
<newParty userId="009662230CAD7F2B" timeShift="0" visibility="ALL" eventId="1">
<userInfo personId="" userNick=" " userType="CLIENT" protocolType="FLEX" timeZoneOffset="300"
clientVersion="106" />
<userData>
<item key="FirstName" type="string"></item>
<item key="IdentifyCreateContact" type="string">3</item>
<item key="LastName" type="string"></item>
<item key="MediaType" type="string">test</item>
<item key="TimeZone" type="string">300</item>
<item key="agreementId" type="string">1011714</item>
<item key="agreementNumber" type="string">7778885499</item>
<item key="appVersion" type="string">version 3.40.1, build 304001</item>
<item key="billingId" type="string">556</item>
<item key="cityId" type="string">556</item>
<item key="citydomain" type="string">interzet</item>
<item key="clientId" type="string">3455333</item>
<item key="clientType" type="string">b2c</item>
<item key="inetConnType" type="string">wi-fi</item>
<item key="newLogic" type="string">true</item>
<item key="osVersion" type="string">Android SDK: 30 (11)</item>
<item key="phoneModel" type="string">SM-A515F</item>
<item key="push_notification_debug" type="string">false</item>
<item key="push_notification_deviceid" type="string">eyAfHWw5TNmmrbvw1gti3l:APAtjwjw4OLtp8mnYEIczRZACVEpAKhdEos3JQBhL-
c_M_Wpzyj0RnYX7AMD9wq3t2t24tWWOnKfUwvGf2hI7qpNm_7Ko</item>
<item key="push_notification_language" type="string">ru-RU</item>
<item key="push_notification_provider" type="string">domru</item>
<item key="push_notification_type" type="string">fcm</item>
<item key="timestamp" type="string">1646464148</item>
<item key="token" type="string">68676356n3567567</item>
</userData>
</newParty>
<message userId="009662230CAD7F2B" timeShift="0" visibility="ALL" eventId="3">
<msgText> привет </msgText>
</message>
<newParty userId="0096621C4785888C" timeShift="1" visibility="ALL" eventId="4">
<userInfo personId="" userNick="system" userType="EXTERNAL" protocolType="ESP" timeZoneOffset="0" />
</newParty>
<notice userId="0096621C4785888C" timeShift="1" visibility="ALL" eventId="5">
<noticeText noticeType="USER_CUSTOM">InteractionId=005PAaH11EN8Q828</noticeText>
</notice>
<newParty userId="009662230CAF7F2D" timeShift="2" visibility="ALL" eventId="7">
<userInfo personId="" userNick=" ." userType="AGENT" protocolType="BASIC" timeZoneOffset="0"
clientVersion="105" />
<userData>
<item key="GCTI_Chat_PartyStyle" type="string">BOT</item>
<item key="GCTI_Chat_SetPartyStyle" type="string">BOT</item>
</userData>
<eventAttributes>
<item key="GCTI_SYSTEM" type="kvlist">
<item key="party-info" type="kvlist">
<item key="style" type="string">BOT</item>
</item>
</item>
</eventAttributes>
</newParty>
<message userId="009662230CAF7F2D" timeShift="13" visibility="ALL" eventId="10">
<msgText> , .</msgText>
</message>
<partyLeft userId="009662230CAF7F2D" timeShift="13" visibility="ALL" eventId="11" askerId="009662230CAF7F2D">
<reason code="3">left due to disconnect</reason>
</partyLeft>
<newParty userId="0096621C47BC888F" timeShift="25" visibility="ALL" eventId="12">
<userInfo personId="" userNick="botTransfer" userType="EXTERNAL" protocolType="ESP" timeZoneOffset="0" />
</newParty>
<notice userId="0096621C47BC888F" timeShift="25" visibility="ALL" eventId="13">
<noticeText noticeType="USER_CUSTOM">0</noticeText>
</notice>
<newParty userId="009662230CC77F2E" timeShift="26" visibility="ALL" eventId="14">
<userInfo personId="karaca.ar" userNick=" Karaca" userType="AGENT" protocolType="BASIC" timeZoneOffset="
0" clientVersion="105" />
<userData>
<item key="GWS_USERID" type="string">a2cf6002c9b84887b14e251bca146568</item>
</userData>
</newParty>
<message userId="009662230CC77F2E" timeShift="43" visibility="ALL" eventId="17">
<msgText> !</msgText>
</message>
<message userId="009662230CC77F2E" timeShift="46" visibility="ALL" eventId="18">
<msgText>, , ?</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="78" visibility="ALL" eventId="92">
<msgText> , , .</msgText>
</message>
<message userId="009662230CC77F2E" timeShift="170" visibility="ALL" eventId="96">
<msgText> . . , .</msgText>
</message>
<partyLeft userId="009662230CC77F2E" timeShift="178" visibility="ALL" eventId="97" askerId="009662230CC77F2E"
>
<reason>left</reason>
</partyLeft>
<newParty userId="009662230D617F4A" timeShift="180" visibility="ALL" eventId="98">
<userInfo personId="tribuna.di" userNick=" Maybe" userType="AGENT" protocolType="BASIC" timeZoneOffset="
0" clientVersion="105" />
<userData>
<item key="GWS_USERID" type="string">abfcfa39f99745a3aa132eaf78dd91be</item>
</userData>
</newParty>
<message userId="009662230D617F4A" timeShift="186" visibility="ALL" eventId="101">
<msgText> ! </msgText>
</message>
<message userId="009662230D617F4A" timeShift="225" visibility="ALL" eventId="108">
<msgText> .-, . -?</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="238" visibility="ALL" eventId="122">
<msgText> .8</msgText>
</message>
<message userId="009662230D617F4A" timeShift="250" visibility="ALL" eventId="126">
<msgText> ?</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="255" visibility="ALL" eventId="131">
<msgText></msgText>
</message>
<message userId="009662230D617F4A" timeShift="311" visibility="ALL" eventId="143">
<msgText>, . ,. ? .</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="334" visibility="ALL" eventId="167">
<msgText> </msgText>
</message>
<message userId="009662230D617F4A" timeShift="529" visibility="ALL" eventId="173">
<msgText> . . -, - ? . . . </msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="625" visibility="ALL" eventId="301">
<msgText> , - - ?</msgText>
</message>
<message userId="009662230D617F4A" timeShift="780" visibility="ALL" eventId="313">
<msgText> . , 15 , , 40 .</msgText>
</message>
<message userId="009662230D617F4A" timeShift="829" visibility="ALL" eventId="323">
<msgText> , . ?</msgText>
1.
1.
2.
3.
4.
5.
6.
</message>
<message userId="009662230CAD7F2B" timeShift="843" visibility="ALL" eventId="342">
<msgText> </msgText>
</message>
<message userId="009662230D617F4A" timeShift="908" visibility="ALL" eventId="348">
<msgText> . ?</msgText>
</message>
<message userId="009662230CAD7F2B" timeShift="1088" visibility="ALL" eventId="372">
<msgText>, </msgText>
</message>
<message userId="009662230D617F4A" timeShift="1104" visibility="ALL" eventId="375">
<msgText> . . . , . 5. !</msgText>
</message>
<partyLeft userId="009662230D617F4A" timeShift="1107" visibility="ALL" eventId="376" askerId="
009662230D617F4A">
<reason code="2">left with request to close forcedly</reason>
</partyLeft>
<partyLeft userId="009662230CAD7F2B" timeShift="1107" visibility="ALL" eventId="377" askerId="
009662230D617F4A">
<reason code="4">removed by other party</reason>
</partyLeft>
</chatTranscript>');

