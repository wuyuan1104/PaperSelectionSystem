package com.bjfu.mapper;





import com.bjfu.po.User;


/*ʹ��spring�Զ�ɨ��mybatis�Ľӿڲ�װ��*/
public interface UserMapper {
	public User selectUser(User u);//����һ���û�
	public void insertUser(User u);//����һ�����û���¼
}
