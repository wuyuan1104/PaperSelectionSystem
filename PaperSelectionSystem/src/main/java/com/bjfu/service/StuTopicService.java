package com.bjfu.service;

import java.util.List;

import com.bjfu.pojo.StuTopicInfo;

public interface StuTopicService {
	public List<StuTopicInfo> getStuTopicInfo(String student_id);
}
