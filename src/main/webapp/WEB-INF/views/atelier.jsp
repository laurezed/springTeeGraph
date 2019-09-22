<?xml version="1.0" encoding="UTF-8"?>
<beans:beans
	xmlns="http://www.springframework.org/schema/mvc"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:beans="http://www.springframework.org/schema/beans"
	xmlns:context="http://www.springframework.org/schema/context"
	xmlns:tx="http://www.springframework.org/schema/tx"
	xsi:schemaLocation="http://www.springframework.org/schema/mvc https://www.springframework.org/schema/mvc/spring-mvc.xsd 
	http://www.springframework.org/schema/beans https://www.springframework.org/schema/beans/spring-beans.xsd
    http://www.springframework.org/schema/context https://www.springframework.org/schema/context/spring-context.xsd
    http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx.xsd">

	<!-- DispatcherServlet Context: defines this servlet's request-processing 
		infrastructure -->

	<!-- Enables the Spring MVC @Controller programming model -->
	<context:annotation-config />
	<annotation-driven validator="validator" />

	<!-- Handles HTTP GET requests for /resources/** by efficiently serving 
		up static resources in the ${webappRoot}/resources directory -->
	<resources mapping="/resources/**" location="/resources/" />

	<!-- Resolves views selected for rendering by @Controllers to .jsp resources 
		in the /WEB-INF/views directory -->
	<beans:bean
		class="org.springframework.web.servlet.view.InternalResourceViewResolver">
		<beans:property name="prefix" value="/WEB-INF/views/" />
		<beans:property name="suffix" value=".jsp" />
	</beans:bean>

	<context:component-scan
		base-package="fr.dawan.springTeeGraph" />

	<!-- This produces a container-managed EntityManagerFactory; rather than 
		application-managed EntityManagerFactory as in case of LocalEntityManagerFactoryBean -->
	<beans:bean id="entityManagerFactoryBean"
		class="org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean">
		<beans:property name="dataSource" ref="dataSource" />
		<!-- This makes /META-INF/persistence.xml is no longer necessary -->
		<beans:property name="packagesToScan"
			value="fr.dawan.springTeeGraph.entites" />
		<!-- JpaVendorAdapter implementation for Hibernate EntityManager. Exposes 
			Hibernate's persistence provider and EntityManager extension interface -->
		<beans:property name="jpaVendorAdapter">
			<beans:bean
				class="org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter" />
		</beans:property>
		<beans:property name="jpaProperties">
			<beans:props>
				<beans:prop key="hibernate.hbm2ddl.auto">update</beans:prop>
				<beans:prop key="hibernate.dialect">org.hibernate.dialect.MySQL5Dialect
				</beans:prop>
			</beans:props>
		</beans:property>
	</beans:bean>



	<!-- Simple implementation of the standard JDBC DataSource interface, configuring 
		the plain old JDBC DriverManager via bean properties -->
	<beans:bean id="dataSource"
		class="org.springframework.jdbc.datasource.DriverManagerDataSource">
		<beans:property name="driverClassName"
			value="com.mysql.cj.jdbc.Driver" />
		<beans:property name="url"
			value="jdbc:mysql://localhost:3306/teegraph?useSSL=false&amp;useUnicode=true&amp;useJDBCCompliantTimezoneShift=true&amp;useLegacyDatetimeCode=false&amp;serverTimezone=UTC" />
		<beans:property name="username" value="root" />
		<beans:property name="password" value="" />
	</beans:bean>
	<!-- This transaction manager is appropriate for applications that use a 
		single JPA EntityManagerFactory for transactional data access. JTA (usually 
		through JtaTransactionManager) is necessary for accessing multiple transactional 
		resources within the same transaction. -->
	<beans:bean id="transactionManager"
		class="org.springframework.orm.jpa.JpaTransactionManager">
		<beans:property name="entityManagerFactory"
			ref="entityManagerFactoryBean" />
		<beans:property name="dataSource" ref="dataSource" />
	</beans:bean>

	<tx:annotation-driven
		transaction-manager="transactionManager" />

	<beans:bean
		id="persistenceExceptionTranslationPostProcessor"
		class="org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor" />

	<!-- définition de l'emplacements des fichiers de messages -->
	<beans:bean id="messageSource"
		class="org.springframework.context.support.ReloadableResourceBundleMessageSource">
		<beans:property name="basename"
			value="classpath:messages" />
		<beans:property name="defaultEncoding" value="utf-8" />
	</beans:bean>

	<!-- définition de la locale par défaut -->
	<beans:bean id="localeResolver"
		class="org.springframework.web.servlet.i18n.CookieLocaleResolver">
		<beans:property name="defaultLocale" value="fr" />
	</beans:bean>

	<beans:bean id="validator"
		class="org.springframework.validation.beanvalidation.LocalValidatorFactoryBean">
		<beans:property name="validationMessageSource"
			ref="messageSource" />
	</beans:bean>

		<interceptors>
			<beans:bean id="localeChangeInterceptor"
				class="org.springframework.web.servlet.i18n.LocaleChangeInterceptor">
				<beans:property name="paramName" value="lang" />
			</beans:bean>
		</interceptors>



</beans:beans>
