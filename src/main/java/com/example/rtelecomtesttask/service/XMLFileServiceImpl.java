package com.example.rtelecomtesttask.service;

import com.example.rtelecomtesttask.entity.XMLFile;
import com.example.rtelecomtesttask.repository.XMLFileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class XMLFileServiceImpl implements XMLFileService{

    @Autowired
    private XMLFileRepository xmlFileRepository;

    @Override
    public List<XMLFile> getXMLFiles(String mediatype) {
        return xmlFileRepository.findAllByMediaType(mediatype);
    }

    @Override
    public Optional<XMLFile> getXMLFile(String id) {
        return xmlFileRepository.findById(id);
    }
}
