package com.example.rtelecomtesttask.repository;

import com.example.rtelecomtesttask.entity.XMLFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface XMLFileRepository extends JpaRepository<XMLFile, String> {
    @Query("SELECT x FROM XMLFile x WHERE x.mediatype = :mediatype")
    List<XMLFile> findAllByMediaType(String mediatype);
}
