package com.example.rtelecomtesttask.service;

import com.example.rtelecomtesttask.entity.XMLFile;
import com.example.rtelecomtesttask.parser_userdata.Item;
import com.example.rtelecomtesttask.parser_userdata.UserDataSAXParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserDataServiceImpl implements UserDataService{

    @Autowired
    private XMLFileService xmlFileService;
    @Autowired
    private UserDataSAXParser userDataSAXParser;

    @Override
    public List<List<Item>> getUserDataList(String mediatype) {
        List<XMLFile> xmlFiles = xmlFileService.getXMLFiles(mediatype);
        return xmlFiles.stream().map(XMLFile::getStructuredText)
                .map(e -> userDataSAXParser.parse(e)).toList();
    }


}
