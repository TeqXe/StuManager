$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'master/grade/list',
        datatype: "json",
        colModel: [			
			{ label: '年级ID', name: 'gid', index: 'gid', width: 50, key: true },
			{ label: '年级', name: 'gname', index: 'gname', width: 80 },
			{ label: '描述', name: 'gdesc', index: 'gdesc', width: 80 }
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
});

var vm = new Vue({
	el:'#rrapp',
	data:{
		showList: true,
		title: null,
		grade: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.grade = {};
		},
		update: function (event) {
			var gid = getSelectedRow();
			if(gid == null){
				return ;
			}
			vm.showList = false;
            vm.title = "更新";
            
            vm.getInfo(gid)
		},
		saveOrUpdate: function (event) {
			var url = vm.grade.gid == null ? "master/grade/save" : "master/grade/update";
			$.ajax({
				type: "POST",
			    url: baseURL + url,
                contentType: "application/json",
			    data: JSON.stringify(vm.grade),
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
			var gids = getSelectedRows();
			if(gids == null){
				return ;
			}
			
			confirm('你确定吗 ？', function(){
				$.ajax({
					type: "POST",
				    url: baseURL + "master/grade/delete",
                    contentType: "application/json",
				    data: JSON.stringify(gids),
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
		getInfo: function(gid){
			$.get(baseURL + "master/grade/info/"+gid, function(r){
                vm.grade = r.grade;
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