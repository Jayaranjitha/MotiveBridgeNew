package com.nokia.atf.tef.deviceSimulator;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;

 

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

 

public class sample2 {
    
    
    public static void ReplaceActionValue(String Action_id) throws IOException, ParseException
    {
        
    	String fPath = System.getProperty("user.dir") + "\\TestData\\RESTAPI\\Operations.json";
        FileReader reader = new FileReader(fPath);

 

        JSONParser jsonParser = new JSONParser();
        JSONObject jsonObject = (JSONObject) jsonParser.parse(reader);
 
        System.out.println("Before Update:"+jsonObject);

        jsonObject.put("actionId",Action_id);

 

        System.out.println("After Update:"+jsonObject);
        
        try {
            FileWriter file = new FileWriter(fPath);
            file.write(jsonObject.toJSONString());
            file.close();
         } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         System.out.println("JSON file created: "+jsonObject);

 

        
        
    }
    
    

 

    public static void main(String[] args) throws Exception {
        
        sample2.ReplaceActionValue("10002");
        

 

        
    } 

 

 

        
       
       
       
    

 


}