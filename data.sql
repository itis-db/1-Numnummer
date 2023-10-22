    insert into activity(
        activity_id,
    	activitytypeid,
        name,
        sysname,
        parent_id
    )
    values(1,1,'Программа','Program',null),
        (2,2,'Подпрограмма','SubProgram',1),
        (3,3,'Проект','Project',2),
        (4,4,'Контракт','Contract',3),
        (5,5,'КТ','Point',4);
