package com.usermng.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.usermng.dto.MeetingRequest;
import com.usermng.dto.User;


@Repository
public class UserDaoImple implements UserDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void insertUser(User user) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.save(user);
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
		});
		
	}
	
	
	@Override
	public boolean loginUser(User user) {
		Boolean u = hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from User where  userEmail=? and userPass=?" );
				//q.setString(0, user.getUserEmail());
				q.setString(0, user.getUserEmail());
				q.setString(1, user.getUserPass());
				List<User> u=q.list();
				boolean flag = false;
				if(u.isEmpty()) {
					flag=false;
				}
				
				else {
					
					user.setUserId(u.get(0).getUserId());
					user.setUserFname(u.get(0).getUserFname());
					flag=true;
				}
				tr.commit();
				session.flush();
				session.close();
				return flag;
			}
		});
		return u;
	}

	@Override
	public void updateUser(User user) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
			//	System.out.println(user);
				session.update(user);
				
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}


	@Override
	public User selectUser(int id) {
		User u = hibernateTemplate.execute(new HibernateCallback<User>() {

			@Override
			public User doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from User where  userId=?" );
				q.setInteger(0,id);
				List<User> u=q.list();
				tr.commit();
				session.flush();
				session.close();
				return u.get(0);
			}
		});
		return u;
		
	}


	@Override
	public List<User> selectAll() {
		List<User> lim=hibernateTemplate.execute(new HibernateCallback<List<User>>() {

			@Override
			public List<User> doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q = session.createQuery("from User");
				
				List<User> li = q.list();
				
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		
		
		
		return lim;
		
	}


	@Override
	public String forgotPassword(String userEmail) {
		String password = hibernateTemplate.execute(new HibernateCallback<String>() {

			@Override
			public String doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from User where userEmail = ?");
				q.setString(0, userEmail);
				List<User> li = q.list();
				String pass = null;
				if(!li.isEmpty())
					pass = li.get(0).getUserPass();
				tr.commit();
				session.flush();
				session.close();
				return pass;
			}
			
		});
		return password;
		
	}



	
	
}
