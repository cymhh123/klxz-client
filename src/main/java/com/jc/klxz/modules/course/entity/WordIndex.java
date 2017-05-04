package com.jc.klxz.modules.course.entity;


import com.jc.klxz.common.entity.DataEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/5/3 0003.
 */
public class WordIndex extends DataEntity {
    private String index;
    private String indexNum;
    private List<Word> wordList;

    public String getIndex() {
        return index;
    }

    public void setIndex(String index) {
        this.index = index;
    }

    public List<Word> getWordList() {
        return wordList;
    }

    public void setWordList(List<Word> wordList) {
        this.wordList = wordList;
    }

    public String getIndexNum() {
        return indexNum;
    }

    public void setIndexNum(String indexNum) {
        this.indexNum = indexNum;
    }
}
