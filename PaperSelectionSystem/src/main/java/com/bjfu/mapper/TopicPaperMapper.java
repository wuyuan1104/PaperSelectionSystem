package com.bjfu.mapper;

import java.util.List;

import com.bjfu.po.Paper;

public interface TopicPaperMapper {
	public List<Paper> selectTopicPaper(String stutopic_id);
}
