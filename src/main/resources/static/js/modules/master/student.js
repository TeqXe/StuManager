$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'master/student/list',
        datatype: "json",
        colModel: [			
			{ label: '学号', name: 'sid', index: 'sid', width: 50, key: true },
			{ label: '姓名', name: 'sname', index: 'sname', width: 80 },
			{ label: '性别', name: 'sex', index: 'sex', width: 80, formatter: function(value, options, row){
                    return value === 'M' ?
                        '<span>男</span>' :  '<span>女</span>';
                }},
			{ label: '出生日期', name: 'birth', index: 'birth', width: 80 },
			{ label: '年级', name: 'gid', index: 'gid', width: 80, formatter: function(value, options, row){
                    return value === 10007 ?
                        '<span>七年级</span>' : (value === 10008 ?
                            '<span>八年级</span>' : '<span>九年级</span>');
                } }
        ],
		viewrecords: true,
        height: 385,
        rowNum: 10,
		rowList : [10,30,50],
        rownumbers: true, 
        rownumWidth: 25, 
        autowidth:true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader : {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames : {
            page:"page", 
            rows:"limit", 
            order: "order"
        },
        gridComplete:function(){
        	$("#jqGrid").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" }); 
        }
    });

    $("#selectDate:first").datetimepicker({
        language: "zh-CN",
        format: 'yyyy-mm-dd',
        minView: "month",
        autoclose: true,
		clearBtn:true,
		todayBtn:true
    });
});

var vm = new Vue({
	el:'#rrapp',
	data:{
		showList: true,
		title: null,
		student: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.student = {};
		},
		update: function (event) {
			var sid = getSelectedRow();
			if(sid == null){
				return ;
			}
			vm.showList = false;
            vm.title = "更新";
            
            vm.getInfo(sid)
		},
		saveOrUpdate: function (event) {
		    //console.log( vm.student.birth); 提交前需要拼接日期 否则后台parse xxxx-xx-xx 格式的日期会发生错误
            vm.student.birth=vm.student.birth+" 00:00:00";
            //console.log( vm.student.birth);
			var url = vm.student.sid == null ? "master/student/save" : "master/student/update";
			$.ajax({
				type: "POST",
			    url: baseURL + url,
                contentType: "application/json",
			    data: JSON.stringify(vm.student),
			    success: function(r){
			    	if(r.code === 0){
						alert('OK', function(index){
							vm.reload();
						});
					}else{
						alert(r.msg);
					}
				}
			});
		},
		del: function (event) {
			var sids = getSelectedRows();
			if(sids == null){
				return ;
			}
			
			confirm('你确定吗 ？', function(){
				$.ajax({
					type: "POST",
				    url: baseURL + "master/student/delete",
                    contentType: "application/json",
				    data: JSON.stringify(sids),
				    success: function(r){
						if(r.code == 0){
							alert('OK', function(index){
								$("#jqGrid").trigger("reloadGrid");
							});
						}else{
							alert(r.msg);
						}
					}
				});
			});
		},
		getInfo: function(sid){
			$.get(baseURL + "master/student/info/"+sid, function(r){
				//格式化  xxxx-xx-xx 00:00:00 为 xxxx-xx-xx
				r.student.birth = r.student.birth.substring(0,r.student.birth.lastIndexOf(" ")+1);
                vm.student = r.student;
            });
		},
		reload: function (event) {
			vm.showList = true;
			var page = $("#jqGrid").jqGrid('getGridParam','page');
			$("#jqGrid").jqGrid('setGridParam',{ 
                page:page
            }).trigger("reloadGrid");
		}
	}
});