call ant -buildfile source_code\mymbean\build.xml clean compile jar
call copy .\source_code\mymbean\build\jar\MyBean.jar .\lib\
