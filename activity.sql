with recursive activity_ierarchy(activitytypeid, name, sysname, parent_id, path) as (
select a1.activitytypeid, a1.name, a1.sysname, a1.parent_id, a1.sysname as path 
from activity a1 where a1.name = 'Программа'
union
select a2.activitytypeid, a2.name, a2.sysname, a2.parent_id, activity_ierarchy.path || '->' || a2.sysname 
from activity a2 join activity_ierarchy on (activity_ierarchy.activitytypeid = a2.parent_id)
)
select * from activity_ierarchy;
