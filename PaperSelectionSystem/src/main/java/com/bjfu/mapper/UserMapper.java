package com.bjfu.mapper;





import com.bjfu.po.User;


/*使用spring自动扫描mybatis的接口并装配*/
public interface UserMapper {
	public User selectUser(User u);//查找一个用户
	public void insertUser(User u);//插入一个新用户记录
}
