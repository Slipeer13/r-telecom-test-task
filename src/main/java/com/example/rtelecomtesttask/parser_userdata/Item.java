package com.example.rtelecomtesttask.parser_userdata;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item {
    private String key;
    private String type;
    private String value;
}
