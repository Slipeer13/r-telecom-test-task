package com.example.rtelecomtesttask.parser_message;

import org.springframework.stereotype.Component;
import org.xml.sax.InputSource;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.StringReader;
import java.util.List;

@Component
public class MessageSAXParser {

    public List<MessageInfo> parse(String xmlString) {
        List<MessageInfo> messageInfos = null;
        try {
            InputSource inputSource = new InputSource(new StringReader(xmlString));
            SAXParserFactory factory = SAXParserFactory.newInstance();
            SAXParser saxParser = factory.newSAXParser();
            MessageHandler handler = new MessageHandler();
            saxParser.parse(inputSource, handler);
            messageInfos = handler.getItems();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return messageInfos;
    }
}





