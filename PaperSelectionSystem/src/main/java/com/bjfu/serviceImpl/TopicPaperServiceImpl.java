package com.bjfu.serviceImpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjfu.mapper.TopicPaperMapper;
import com.bjfu.po.Paper;
import com.bjfu.service.TopicPaperService;

@Service
public class TopicPaperServiceImpl implements TopicPaperService{
	@Autowired
	private TopicPaperMapper topicPaperDao;
	@Override
	public List<Paper> getTopicPaper(String stutopic_id){
		return topicPaperDao.selectTopicPaper(stutopic_id);
	}
}
