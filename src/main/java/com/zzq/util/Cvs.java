package com.zzq.util;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.json.CDL;
import org.json.JSONException;

import net.sf.json.JSONArray;

/**
 * @author Fly_Bear
 * DESC: 通过org.json包来实现jsonarray转换成CSV字符串
 */
public class Cvs {
    private JSONArray jsonArray;
    /**
     * @param jsonArray 传入一个net.sf.json.JSONArry数组
     */
    public Cvs(JSONArray jsonArray) {
        // TODO Auto-generated constructor stub
        this.jsonArray = jsonArray;
    }

    /**
     * @param jsonArray the jsonArray to set
     */
    public void setJsonArray(JSONArray jsonArray) {
        this.jsonArray = jsonArray;
    }

    /**
     * @return the jsonArray
     */
    public JSONArray getJsonArray() {
        return jsonArray;
    }

    /**
     * @author Fly_Bear
     * @return 返回一个满足CSV格式的字符串
     * @throws JSONException
     *
     */

    /**
     *
     * @return 返回csv格式的字符串
     * @throws JSONException
     */
    public String getCSVString() throws JSONException{
        //将jsonArray转换成纯字符串（涵盖所有符号）
        String jsonString = jsonArray.toString();
        //利用字符串生成org.json.JSONArray,实现net.sf.json.jsonArray与org.json.JSONArray转换
        org.json.JSONArray orgjsonarray = new org.json.JSONArray(jsonString);
        //利用org.json工具类生成CSV格式要求的String。
        String csv =CDL.toString(orgjsonarray);
        return csv;
    }
}