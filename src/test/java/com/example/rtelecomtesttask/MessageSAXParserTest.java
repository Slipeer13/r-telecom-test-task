package com.example.rtelecomtesttask;

import com.example.rtelecomtesttask.parser_message.MessageInfo;
import com.example.rtelecomtesttask.parser_message.MessageSAXParser;
import com.example.rtelecomtesttask.parser_userdata.Item;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
public class MessageSAXParserTest {

    @Autowired
    private MessageSAXParser messageSAXParser;

    @Test
    public void messageTest() {
        String testString = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                "<chatTranscript startAt=\"2022-03-05T07:09:33Z\" sessionId=\"005PAaH11EN8Q828\">" +
                "<message userId=\"009662230CC77F2E\" timeShift=\"0\" visibility=\"ALL\" eventId=\"17\">" +
                "<msgText> !</msgText>" +
                "</message></chatTranscript>";
        List<MessageInfo> itemList = messageSAXParser.parse(testString);
        List<MessageInfo> testList = List.of(new MessageInfo("009662230CC77F2E", "2022-03-05T07:09:33Z", " !"));
        assertEquals(itemList, testList);
    }
}
