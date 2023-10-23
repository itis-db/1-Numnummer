    insert into activity(
        activity_id,
    	activitytypeid,
        code,
        name,
        parent_id
    )
    values(1,1,'Some code','Program',null),
        (2,2,'Some code','SubProgram',1),        
        (3,3,'Some code','Project',2),
        (4,4,'Some code','Contract',3);       
        
