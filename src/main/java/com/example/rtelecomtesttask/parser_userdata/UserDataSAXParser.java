package com.example.rtelecomtesttask.parser_userdata;

import org.springframework.stereotype.Component;
import org.xml.sax.InputSource;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.StringReader;
import java.util.List;

@Component
public class UserDataSAXParser {

    public List<Item> parse(String xmlString) {
        List<Item> items = null;
        try {
            InputSource inputSource = new InputSource(new StringReader(xmlString));
            SAXParserFactory factory = SAXParserFactory.newInstance();
            SAXParser saxParser = factory.newSAXParser();
            UserDataHandler handler = new UserDataHandler();
            saxParser.parse(inputSource, handler);
            items = handler.getItems();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return items;
    }
}





