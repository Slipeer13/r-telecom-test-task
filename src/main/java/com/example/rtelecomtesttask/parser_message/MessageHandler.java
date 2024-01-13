package com.example.rtelecomtesttask.parser_message;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

class MessageHandler extends DefaultHandler {

    private final List<MessageInfo> messageInfos = new ArrayList<>();
    private MessageInfo messageInfo;
    private StringBuilder message;
    private Instant instant;

    public List<MessageInfo> getItems() {
        return messageInfos;
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) {
        if("chatTranscript".equalsIgnoreCase(qName)) {
            instant = Instant.parse(attributes.getValue("startAt"));

        } else if ("message".equalsIgnoreCase(qName)) {
            messageInfo = new MessageInfo();
            messageInfo.setUserId(attributes.getValue("userId"));
            instant = instant.plusSeconds(Long.parseLong(attributes.getValue("timeShift")));
            messageInfo.setDate(instant.toString());
            message = new StringBuilder();
        }
    }

    @Override
    public void characters(char[] ch, int start, int length) {
        if (messageInfo != null) {
            message.append(ch, start, length);
        }
    }

    @Override
    public void endElement(String uri, String localName, String qName) {
        if("message".equalsIgnoreCase(qName)) {
            messageInfo.setMessage(message.toString().trim());
            messageInfos.add(messageInfo);
            messageInfo = null;
        }
    }
}
