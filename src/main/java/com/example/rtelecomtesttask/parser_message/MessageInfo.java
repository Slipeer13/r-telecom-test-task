package com.example.rtelecomtesttask.parser_message;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MessageInfo {
    private String userId;
    private String date;
    private String message;
}
