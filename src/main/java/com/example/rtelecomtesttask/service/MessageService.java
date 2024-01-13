package com.example.rtelecomtesttask.service;

import com.example.rtelecomtesttask.parser_message.MessageInfo;

import java.util.List;

public interface MessageService {

    List<MessageInfo> getMessageInfoList(String id);
}
