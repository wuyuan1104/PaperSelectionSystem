package com.bjfu.mapper;

import java.util.List;

import com.bjfu.pojo.StuTopicInfo;

public interface StuTopicMapper {
	public List<StuTopicInfo> selectStuTopicInfo(String student_id);//����һ��ѧ��������ѡ����Ϣ
	
}
