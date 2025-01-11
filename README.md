# tomcat_9_catalina_base_configuration_7

Se expone un java MBean en tomcat.

Código del MBean :
proyecto de MBean con su código fuente y build de Ant : ./source_code/mymbean/

Compilar y desplegar el jar del MBean se hace con : ./compileanddeploy.bat
(ant clean compile jar + copiar el jar en la carpeta lib/ de CATALINA_BASE)

Se puede ver que se desplegó en el tomcat un MBean por esa url :
http://localhost:8080/manager/text/resources?type=com.mycompany.packageofmybean.MyBean


devuelve : OK - Listados recursos globales de tipo [com.mycompany.packageofmybean.MyBean]
bean/MyBeanFactory:com.mycompany.packageofmybean.MyBean


En el server.xml, en la etiqueta <GlobalNamingResources>, se declara :
<Resource name="bean/MyBeanFactory" auth="Container"
	type="com.mycompany.packageofmybean.MyBean"
	factory="org.apache.naming.factory.BeanFactory"
	bar="24"/>



(Y para una lista de todos los recursos :
(http://localhost:8080/manager/text/resources
que en mi caso devuelve :
OK - Listados recursos globales de todos los tipos
UserDatabase:org.apache.catalina.users.MemoryUserDatabase
bean/MyBeanFactory:com.mycompany.packageofmybean.MyBean)
