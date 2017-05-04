package com.jc.klxz.common.okhttp;

import com.alibaba.fastjson.JSON;
import com.jc.klxz.common.exception.ServiceException;
import okhttp3.*;
import okhttp3.RequestBody;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;


/**
 * Created by Administrator on 2017/3/13 0013.
 */
public class OkHttpUtils {

    private static final OkHttpClient client;

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.connectTimeout(Config.CONNECT_OUT_TIME, TimeUnit.SECONDS);  //设置连接超时时间
        builder.writeTimeout(Config.WRITE_OUT_TIME, TimeUnit.SECONDS);//设置写入超时时间
        builder.readTimeout(Config.READ_OUT_TIME, TimeUnit.SECONDS);//设置读取数据超时时间
        builder.retryOnConnectionFailure(true);//设置不进行连接失败重试
        File cacheFile = null;
        try {
            cacheFile = Files.createTempDirectory("cache").toFile();
            String path = cacheFile.getAbsolutePath();
            System.err.println("========:"+path);
        } catch (IOException e) {
            e.printStackTrace();
        }
        Cache cache = new Cache(cacheFile, Config.CACHE_SIZE);
        builder.cache(cache);
        builder.addNetworkInterceptor(new CacheInterceptor());
        client = builder.build();

    }

    /**
     * 设置请求头
     *
     * @param headersParams
     * @return
     */
    public static Headers setHeaders(Map<String, String> headersParams) {
        Headers headers = null;
        okhttp3.Headers.Builder headersbuilder = new okhttp3.Headers.Builder();

        if (headersParams != null) {
            Iterator<String> iterator = headersParams.keySet().iterator();
            String key = "";
            while (iterator.hasNext()) {
                key = iterator.next().toString();
                headersbuilder.add(key, headersParams.get(key));
            }
        }
        headers = headersbuilder.build();

        return headers;
    }

    /**
     * post请求参数
     *
     * @param BodyParams
     * @return
     */
    public static RequestBody setRequestBody(Map<String, String> BodyParams) {
        RequestBody body = null;
        okhttp3.FormBody.Builder formEncodingBuilder = new okhttp3.FormBody.Builder();
        if (BodyParams != null) {
            Iterator<String> iterator = BodyParams.keySet().iterator();
            String key = "";
            while (iterator.hasNext()) {
                key = iterator.next().toString();
                formEncodingBuilder.add(key, BodyParams.get(key));
            }
        }
        body = formEncodingBuilder.build();
        return body;

    }

    public static <T> T doGetFromCacheAndNet(String url,Map<String, String> headersParams,Class<T> clazz){
        return request(url,CacheType.CACHED_ELSE_NETWORK,Config.CACHE_TIME,headersParams,clazz);
    }

    public static <T> T doGetFromNet(String url,Map<String, String> headersParams,Class<T> clazz){
        return request(url,CacheType.ONLY_NETWORK,Config.CACHE_TIME,headersParams,clazz);
    }

    public static <T> T request(String url,CacheType cacheType,Integer cache_maxAge_inseconds,
                                Map<String, String> headersParams,Class<T> clazz){
        Headers headers = null;
        if(headersParams != null){
            headers = setHeaders(headersParams);
        }
        Request.Builder builder = new Request.Builder();
        if(headers != null){
            builder.headers(headers);
        }
        switch (cacheType){
            case CACHED_ELSE_NETWORK:
                builder.cacheControl(new CacheControl.Builder().maxAge(cache_maxAge_inseconds, TimeUnit.SECONDS).build());
                break;
            case ONLY_NETWORK:
                builder.cacheControl(new CacheControl.Builder().maxAge(0,TimeUnit.SECONDS).build());
                break;
            case ONLY_CACHED:
                builder.cacheControl(new CacheControl.Builder().onlyIfCached().build());
                break;
            default:
                builder.cacheControl(new CacheControl.Builder().maxAge(cache_maxAge_inseconds, TimeUnit.SECONDS).build());
                break;
        }
        Request request = builder.url(url).build();
        Call call = client.newCall(request);
        return startRequest(call,clazz);
    }

    private static <T> T startRequest(Call call, Class<T> clazz) {
        try {
            Response response = call.execute();
            if(response.isSuccessful()){
                ResponseBody responseBody = response.body();
                String body = responseBody.string();
                return JSON.parseObject(body,clazz);
            }else{
                throw new ServiceException("获取远程数据失败");
            }
        } catch (Exception e) {
            throw new ServiceException("获取远程数据失败,请检查网络");
        }
    }

    public static InputStream request(String url){
        Request.Builder builder = new Request.Builder();
        Request request = builder.url(url).build();
        Call call = client.newCall(request);
        return startRequest(call);
    }

    private static InputStream startRequest(Call call){
        try {
            Response response = call.execute();
            if(response.isSuccessful()){
                InputStream inputStream = response.body().byteStream();
                return inputStream;
            }else{
                throw new ServiceException("获取远程数据失败");
            }
        } catch (Exception e) {
            throw new ServiceException("获取远程数据失败，请检查网络");
        }
    }

    public static String getUrlWithQueryString(boolean shouldEncodeUrl, String url, Map<String, String> mapParams) {
        if (url == null)
            return null;

        if (shouldEncodeUrl) {
            try {
                String decodedURL = URLDecoder.decode(url, "UTF-8");
                URL _url = new URL(decodedURL);
                URI _uri = new URI(_url.getProtocol(), _url.getUserInfo(), _url.getHost(), _url.getPort(),
                        _url.getPath(), _url.getQuery(), _url.getRef());
                url = _uri.toASCIIString();
            } catch (Exception ex) {
            }
        }
        if (mapParams != null) {
            String strParams = "";
            if (mapParams != null) {
                Iterator<String> iterator = mapParams.keySet().iterator();
                String key = "";
                while (iterator.hasNext()) {
                    key = iterator.next().toString();
                    strParams += "&" + key + "=" + mapParams.get(key);
                }
            }
            if (!strParams.equals("") && !strParams.equals("?")) {
                url += url.contains("?") ? "&" : "?";
                url += strParams;
            }
        }
        return url;
    }
}
