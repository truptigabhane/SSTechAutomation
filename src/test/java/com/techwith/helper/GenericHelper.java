package com.techwith.helper;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class GenericHelper {

    public Map<String, String> readJsonFile(String folderName, String jsonFileName,String methodName ) throws FileNotFoundException {

        String filePath = System.getProperty("user.dir") + File.separator + "src" + File.separator + "main" + File.separator + "resources" + File.separator + folderName + File.separator + jsonFileName;
        JsonObject jsonElement = (JsonParser.parseReader(new FileReader(filePath)).getAsJsonObject());
//        JsonElement jsonElement = (new JsonParser().parse(new FileReader(filePath)));
        JsonObject object = jsonElement.getAsJsonObject();
        JsonElement elem = object.get(methodName);
        JsonObject jsonObject = elem.getAsJsonObject();
        Map<String, String> mapObject = new HashMap<String, String>();
        for (Map.Entry<String, JsonElement> stringJsonElementEntry : jsonObject.entrySet()) {

            mapObject.put(((Map.Entry<?, ?>) stringJsonElementEntry).getKey().toString(), ((Map.Entry<?, ?>) stringJsonElementEntry).getValue().toString().replace("\"", ""));

        }

        return mapObject;
    }

    public Properties loadProperty(String fileName) throws IOException {
        String path = System.getProperty("user.dir") + File.separator + "src" + File.separator + "main" + File.separator + "resources" + File.separator + fileName + ".properties";
        File file = new File(path);
        FileInputStream fileInputStream = new FileInputStream(file);
        Properties prop = new Properties();

        prop.load(fileInputStream);
        return prop;
    }


    public String readJsonFile2(String folderName, String jsonFileName, String methodName ) throws FileNotFoundException {

        String filePath = System.getProperty("user.dir") + File.separator + "src" + File.separator + "main" + File.separator + "resources" + File.separator + folderName + File.separator + jsonFileName;
        JsonObject jsonObject = (JsonObject)JsonParser.parseReader(new FileReader(filePath));
       String obj= String.valueOf(jsonObject.get(methodName)).toString().replace("\"", "");
       return obj;
    }

    public String readHtmlFile()throws FileNotFoundException {

        StringBuilder html = new StringBuilder();
        FileReader fr = new FileReader(System.getProperty("user.dir") + File.separator + "src"+ File.separator + "main"+ File.separator+ "resources"+File.separator + "EmailTem.html");
        try {
            BufferedReader br = new BufferedReader(fr);
            String val;
            while ((val = br.readLine()) != null) {
                html.append(val);
            }
            String result = html.toString();
            return  result;

        } catch (Exception ex) {
            return (ex.getMessage());
        }
    }

}
