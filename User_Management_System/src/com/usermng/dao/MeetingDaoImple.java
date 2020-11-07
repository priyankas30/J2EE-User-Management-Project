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

@Repository
public class MeetingDaoImple implements MeetingDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;

	
	@Override
	public boolean sendRequest(MeetingRequest m) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.save(m);
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
		});
		return false;
	}

	@Override
	public List<MeetingRequest> selectAll(int id) {
		
		List<MeetingRequest> lim=hibernateTemplate.execute(new HibernateCallback<List<MeetingRequest>>() {

			@Override
			public List<MeetingRequest> doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q = session.createQuery("from MeetingRequest where userId=?");
				q.setInteger(0, id);
				List<MeetingRequest> li = q.list();
				
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		
		
		
		return lim;
	}

	@Override
	public List<MeetingRequest> Allmeeting() {
		List<MeetingRequest> lim=hibernateTemplate.execute(new HibernateCallback<List<MeetingRequest>>() {

			@Override
			public List<MeetingRequest> doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q = session.createQuery("from MeetingRequest");
				List<MeetingRequest> li = q.list();
				
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		
		
		
		return lim;
	
	}

	@Override
	public void cancleMeeting(MeetingRequest m) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
					session.update(m);
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
		});
	
		
	}

}
