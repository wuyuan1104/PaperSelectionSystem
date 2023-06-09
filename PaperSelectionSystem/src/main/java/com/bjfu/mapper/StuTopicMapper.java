package com.bjfu.mapper;

import java.util.List;

import com.bjfu.pojo.StuTopicInfo;

public interface StuTopicMapper {
	public List<StuTopicInfo> selectStuTopicInfo(String student_id);//查找一个学生的所有选题信息
	
}
