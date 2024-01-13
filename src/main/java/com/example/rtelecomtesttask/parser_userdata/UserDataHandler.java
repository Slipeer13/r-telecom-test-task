package com.example.rtelecomtesttask.parser_userdata;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

import java.util.ArrayList;
import java.util.List;

class UserDataHandler extends DefaultHandler {

    private final List<Item> items = new ArrayList<>();
    private Item item;
    private StringBuilder value;
    private boolean insideUserData = false;

    public List<Item> getItems() {
        return items;
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) {
        if ("userData".equalsIgnoreCase(qName)) {
            insideUserData = true;
        } else if ("item".equalsIgnoreCase(qName) && insideUserData) {
            item = new Item();
            item.setKey(attributes.getValue("key"));
            item.setType(attributes.getValue("type"));
            value = new StringBuilder();
        }
    }

    @Override
    public void characters(char[] ch, int start, int length) {
        if (item != null) {
            value.append(ch, start, length);
        }
    }

    @Override
    public void endElement(String uri, String localName, String qName) {
        if ("userData".equalsIgnoreCase(qName)) {
            insideUserData = false;
        } else if ("item".equalsIgnoreCase(qName) && insideUserData) {
            item.setValue(value.toString().trim());
            items.add(item);
            item = null;
        }
    }
}
