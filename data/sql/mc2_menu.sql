-- menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168530', 'PPC-MAKE-CARD2', '制卡2', '#', '', '0', '', 'Y', 'M', '0', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168531', 'PPC-MC2-ORDER-SHOW', '制卡订单申请', '/order/show.htm', '', '1', 'http://localtest:5050/makecard-management-web', 'Y', 'M', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168532', 'PPC-MC2-ORDER-SUBMIT', '制卡订单提交', '/order/submit.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168533', 'PPC-MC2-ORDER-QUERY', '制卡订单查询', '/apply/query.htm', '', '2', 'http://localtest:5050/makecard-management-web', 'Y', 'M', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168534', 'PPC-MC2-ORDER-DETAIL', '制卡订单明细', '/apply/viewDetail.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168535', 'PPC-MC2-M2STYPE', '根据制卡类型取售卡类型', '/apply/getStypeByMtype.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168536', 'PPC-MC2-DOWNATTACH', '下载申请单附件', '/apply/downloadAttach.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168537', 'PPC-MC2-ASSIGNCARDNUM', '分配卡号段', '/apply/genSegment.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168538', 'PPC-MC2-NOTIFY-FAC', '通知制卡厂', '/factory/doNotify.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168539', 'PPC-MC2-FAC-RESP', '获取制卡厂结果', '/factory/receiveResult.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168540', 'PPC-MC2-DO-EXPORT', '导出', '/export/doExport.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168541', 'PPC-MC2-ORDER-ABANDON', '作废', '/order/abandon.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168542', 'PPC-MC2-EXPORT-MONITOR', '入库监控', '/export/monitorAll.htm', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168543', 'PPC-MC2-MONITOR-D', '监控单个订单入库情况', '/export/monitorDetail.htm ', '', '0', 'http://localtest:5050/makecard-management-web', 'Y', 'B', '168530', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

