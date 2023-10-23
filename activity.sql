with recursive activity_ierarchy(activitytypeid, code, name, parent_id, path) as (
select a1.activitytypeid, a1.code, a1.name, a1.parent_id, a1.name as path 
from activity a1 where a1.activitytypeid = 1
union
select a2.activitytypeid, a2.code, a2.name, a2.parent_id, 
case
    when a2.name = 'Project' then activity_ierarchy.path || '->' || 'Area' || '->' || 'Project'
    when a2.name = 'Contract' then activity_ierarchy.path || '->' || 'KT(Project)' || '->' || 'Contract' || '->' || 'KT(Contract)'
    else activity_ierarchy.path || '->' || a2.name 
end
from activity a2 join activity_ierarchy on (activity_ierarchy.activitytypeid = a2.parent_id)
)
select * from activity_ierarchy;
