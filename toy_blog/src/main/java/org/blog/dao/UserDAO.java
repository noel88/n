package org.blog.dao;

import org.blog.domain.BlogAndUserVO;
import org.blog.domain.UserVO;

public interface UserDAO {


	public int join(UserVO vo);
	public int user_update(UserVO vo);
	public void createAuthKey(String user_email, String user_authCode) throws Exception;
	public void userAuth(String user_email) throws Exception;
	public boolean login(UserVO vo);
	public int name_check(UserVO vo);
	public int email_check(UserVO vo);
	public void user_delete(String name);
	public void user_all_post_delete(String name);
	public void user_all_comment_delete(String name);
	public void user_blog_delete(String name);
	public String user_auth_yn(String name);
	public BlogAndUserVO userAndBlog_info(String name);


}
