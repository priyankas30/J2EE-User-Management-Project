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

import com.usermng.dto.Admin;
import com.usermng.dto.AdminRequest;
import com.usermng.dto.MeetingRequest;
import com.usermng.dto.ProductLog;
import com.usermng.dto.User;

@Repository
public class AdminDaoImple implements AdminDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Override
	public void insertUser(Admin admin) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.save(admin);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public boolean loginUser(Admin admin) {
		Boolean u = hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from Admin where  userName=? and userPass=?" );
				//q.setString(0, user.getUserEmail());
				q.setString(0, admin.getUserName());
				q.setString(1, admin.getUserPass());
				List<Admin> u=q.list();
				admin.setUserName(u.get(0).getUserName());
			
				boolean flag=!u.isEmpty();
				
				tr.commit();
				session.flush();
				session.close();
				return flag;
			}
		});
		return u;
		
	}

	@Override
	public boolean deleteAdmin(User user) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.delete(user);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		return false;
	}

	@Override
	public void insertMeeting(AdminRequest adminRequest) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				System.out.println(adminRequest.toString());
				session.save(adminRequest);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public void insertProductLog(ProductLog plog) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.save(plog);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public List<ProductLog> selectLog(int id) {
		List<ProductLog> lim = hibernateTemplate.execute(new HibernateCallback<List<ProductLog>>() {

			@Override
			public List<ProductLog> doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q = session.createQuery("from ProductLog where userId=?");
				q.setInteger(0,id);
				List<ProductLog> li = q.list();
				
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		return lim;
	
		
	}

	@Override
	public List<AdminRequest> selectAll(int id) {
		List<AdminRequest> lim=hibernateTemplate.execute(new HibernateCallback<List<AdminRequest>>() {

			@Override
			public List<AdminRequest> doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q = session.createQuery("from AdminRequest where userId=?");
				q.setInteger(0, id);
				List<AdminRequest> li = q.list();
				
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		
		
		
		return lim;
	}

	@Override
	public List<AdminRequest> AllMeetings() {
		List<AdminRequest> lim=hibernateTemplate.execute(new HibernateCallback<List<AdminRequest>>() {

			@Override
			public List<AdminRequest> doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q = session.createQuery("from AdminRequest ");
				
				List<AdminRequest> li = q.list();
				
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		return lim;
	}

}
