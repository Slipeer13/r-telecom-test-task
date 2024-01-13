package com.example.rtelecomtesttask.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "xml_file")
@Setter
@Getter
@NoArgsConstructor
public class XMLFile {

    @Id
    private String id;

    private String mediatype;

    private String structuredText;

}
