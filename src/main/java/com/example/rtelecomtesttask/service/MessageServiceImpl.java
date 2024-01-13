package com.example.rtelecomtesttask.service;

import com.example.rtelecomtesttask.entity.XMLFile;
import com.example.rtelecomtesttask.parser_message.MessageInfo;
import com.example.rtelecomtesttask.parser_message.MessageSAXParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class MessageServiceImpl implements MessageService{

    @Autowired
    private XMLFileService xmlFileService;
    @Autowired
    private MessageSAXParser messageSAXParser;

    @Override
    public List<MessageInfo> getMessageInfoList(String id) {
        List<MessageInfo> messageInfos = null;
        Optional<XMLFile> optionalXMLFile = xmlFileService.getXMLFile(id);
        if(optionalXMLFile.isPresent()){
            XMLFile xmlFile = optionalXMLFile.get();
            String text = xmlFile.getStructuredText();
            messageInfos = messageSAXParser.parse(text);
        }
        return messageInfos;
    }
}
