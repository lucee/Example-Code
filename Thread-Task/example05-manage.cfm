
<cfscript>

/**/thread name="test" type="task" 
	retryinterval=[
	{tries:3, interval:createTimeSpan(0,0,0,1)},
	{tries:5, interval:createTimeSpan(0,0,0,5)},
	{tries:10, interval:createTimeSpan(0,0,0,10)},
	{tries:10, interval:createTimeSpan(0,0,1,0)},
	{tries:20, interval:createTimeSpan(0,0,10,0)}
	] {

	throw "hopala!";
}

// wait for it( title="", body=any, labels=any, skip=any, data={} )
sleep(1000);

// get admin component
admin=new Administrator(type:"web",password:"server");


// list all tasks
tasks=admin.getTasks();
dump(tasks);


// reexecute
admin.executeTask(tasks.id);

// delete a single task
admin.removeTask(tasks.id[tasks.recordcount]);
admin.removeAllTask();


</cfscript>