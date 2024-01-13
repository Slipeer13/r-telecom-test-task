package com.example.rtelecomtesttask.service;


import com.example.rtelecomtesttask.entity.XMLFile;

import java.util.List;
import java.util.Optional;

public interface XMLFileService {

    List<XMLFile> getXMLFiles(String mediatype);

    Optional<XMLFile> getXMLFile(String id);

}
