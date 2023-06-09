package com.bjfu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjfu.mapper.StuTopicMapper;
import com.bjfu.pojo.StuTopicInfo;
import com.bjfu.service.StuTopicService;

@Service
public class StuTopicServiceImpl implements StuTopicService{
	@Autowired
	private StuTopicMapper stuTopicDao;
	public List<StuTopicInfo> getStuTopicInfo(String student_id) {
		return stuTopicDao.selectStuTopicInfo(student_id);
	}
}
