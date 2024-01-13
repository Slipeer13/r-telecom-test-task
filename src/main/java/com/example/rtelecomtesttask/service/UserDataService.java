package com.example.rtelecomtesttask.service;

import com.example.rtelecomtesttask.parser_userdata.Item;

import java.util.List;

public interface UserDataService {

    List<List<Item>> getUserDataList(String mediatype);
}
