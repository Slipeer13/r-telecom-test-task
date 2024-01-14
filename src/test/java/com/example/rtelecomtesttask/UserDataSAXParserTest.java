package com.example.rtelecomtesttask;

import com.example.rtelecomtesttask.parser_userdata.Item;
import com.example.rtelecomtesttask.parser_userdata.UserDataSAXParser;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

@SpringBootTest
public class UserDataSAXParserTest {

    @Autowired
    private UserDataSAXParser userDataSAXParser;

    @Test
    public void userDataTest() {
        String testString = """
                <userData>
                <item key="IdentifyCreateContact" type="string">3</item>
                <item key="MediaType" type="string">chat</item></userData>""";
        List<Item> itemList = userDataSAXParser.parse(testString);
        List<Item> testList = List.of(new Item("IdentifyCreateContact", "string", "3"), new Item("MediaType", "string", "chat"));
        assertEquals(itemList, testList);
    }
}
