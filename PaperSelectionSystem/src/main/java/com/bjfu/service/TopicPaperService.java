package com.bjfu.service;

import java.util.List;

import com.bjfu.po.Paper;


public interface TopicPaperService {
	public List<Paper> getTopicPaper(String stutopic_id);
}
