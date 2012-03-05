-- menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168567', 'PPC-MAKE-CARD2', '制卡2', '#', '', '0', '', 'Y', 'M', '0', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168568', 'PPC-MC2-ORDER-SHOW', '制卡订单申请', '/order/show.htm', '', '1', 'http://localtest:7070/makecard-web2.0', 'Y', 'M', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168569', 'PPC-MC2-ORDER-SUBMIT', '制卡订单提交', '/order/submit.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168570', 'PPC-MC2-ORDER-QUERY', '制卡订单查询', '/apply/query.htm', '', '2', 'http://localtest:7070/makecard-web2.0', 'Y', 'M', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168571', 'PPC-MC2-ORDER-DETAIL', '制卡订单明细', '/apply/viewDetail.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168572', 'PPC-MC2-M2STYPE', '根据制卡类型取售卡类型', '/apply/getStypeByMtype.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168573', 'PPC-MC2-DOWNATTACH', '下载申请单附件', '/apply/downloadAttach.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168574', 'PPC-MC2-ASSIGNCARDNUM', '分配卡号段', '/apply/genSegment.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168575', 'PPC-MC2-NOTIFY-FAC', '通知制卡厂', '/factory/doNotify.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168576', 'PPC-MC2-FAC-RESP', '获取制卡厂结果', '/factory/receiveResult.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168577', 'PPC-MC2-DO-EXPORT', '导出', '/export/doExport.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168578', 'PPC-MC2-ORDER-ABANDON', '作废', '/order/abandon.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168579', 'PPC-MC2-EXPORT-MONITOR', '入库监控', '/export/monitorAll.htm', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168580', 'PPC-MC2-MONITOR-D', '监控单个订单入库情况', '/export/monitorDetail.htm ', '', '0', 'http://localtest:7070/makecard-web2.0', 'Y', 'B', '168567', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

