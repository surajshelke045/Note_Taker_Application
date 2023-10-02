<<<<<<< HEAD
package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	
	public static SessionFactory factory;
	
	public static SessionFactory getFactory() {
		
		if(factory==null) {
			factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		
		return factory;
	}
	
	public void closeFactory() {
		
		if(factory.isOpen()) {
			factory.isClosed();
		}
	}

}
=======
package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	
	public static SessionFactory factory;
	
	public static SessionFactory getFactory() {
		
		if(factory==null) {
			factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		
		return factory;
	}
	
	public void closeFactory() {
		
		if(factory.isOpen()) {
			factory.isClosed();
		}
	}

}
>>>>>>> aca24da5f04a07b6a1c76a77515b80ec03940d43
