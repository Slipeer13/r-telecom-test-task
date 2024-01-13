package com.example.rtelecomtesttask.controller;

import com.example.rtelecomtesttask.parser_message.MessageInfo;
import com.example.rtelecomtesttask.parser_userdata.Item;
import com.example.rtelecomtesttask.service.MessageService;
import com.example.rtelecomtesttask.service.UserDataService;
import lombok.extern.log4j.Log4j2;
import org.hibernate.procedure.NoSuchParameterException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/api")
@Log4j2
public class InteractionController {

    @Autowired
    private UserDataService userDataService;

    @Autowired
    private MessageService messageService;

    @GetMapping("/interactionsList")
    public ResponseEntity<List<List<Item>>> getInteractionsList(@RequestParam String mediatype) {
        if(!mediatype.isEmpty()) {
            List<List<Item>> userDataList = userDataService.getUserDataList(mediatype);
            log.info(String.format("ответ на get-запрос к /interactionsList, RequestParam = %s, статус 200", mediatype));
            return ResponseEntity.ok(userDataList);
        } else {
            log.info("ответ на get-запрос к /interactionsList, параметр mediatype пустой, статус 404");
            throw new NoSuchParameterException("параметр mediatype не должен быть пустым");
        }
    }

    @GetMapping("/interaction/{interactionId}")
    public ResponseEntity<List<MessageInfo>> getInteraction(@PathVariable(name="interactionId")String interactionId) {
        List<MessageInfo> messages = messageService.getMessageInfoList(interactionId);
        if (messages != null && !messages.isEmpty()) {
            log.info(String.format("ответ на get-запрос к /interaction/%s, статус 200", interactionId));
            return ResponseEntity.ok(messages);
        } else {
            log.info("ответ на get-запрос к /interaction/{interactionId} , статус 404");
            throw new NoSuchElementException(String.format("сообщений по id = %s нет",interactionId));
        }
    }
}
