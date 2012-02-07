-- menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168260', 'PPC-NEW-SALE-CARD', '新售卡', '#', '', '0', '', 'Y', 'M', '0', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

-- 订单管理 menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168261', 'PPC-NSC-OM', '订单管理', '#', '', '1', '', 'Y', 'M', '168260', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168262', 'PPC-NSC-OM-QUERY', '订单管理-订单查询', '/order/bgorderlist.do', '', '12', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168263', 'PPC-NSC-OM-DETAIL', '订单管理-订单详情', '/order/bgorderdetail.do', '', '13', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168264', 'PPC-NSC-OM-HIS', '订单管理-审批记录', '/order/bgorderhistory.do', '', '14', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168265', 'PPC-NSC-OM-ACT-REC', '订单管理-激活记录', '/order/bgcardsegactivation.do', '', '15', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168266', 'PPC-NSC-OM-ASS-REC', '订单管理-分配记录', '/order/bgcardsegdistribution.do', '', '16', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168267', 'PPC-NSC-OM-AC-LIST', '销售分配卡号', '/sale/cardallocatedorderlist.do', '', '17', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168268', 'PPC-NSC-OM-AC-DETAIL', '销售分配卡号详情', '/sale/cardallocatedorderdetail.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168269', 'PPC-NSC-OM-AC-HIS', '销售分配卡号段订单记录', '/sale/cardallocatedorderhistory.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168270', 'PPC-NSC-OM-AC-CANCEL', '销售分配卡号段取消订单', '/sale/cardallocatedordercancel.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168271', 'PPC-NSC-OM-AC-AUTO', '销售自动分配卡号', '/sale/allocatedcardsegment.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168272', 'PPC-NSC-OM-AC-MANUAL', '销售手动分配卡号', '/sale/manualalloccardseg.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168273', 'PPC-NSC-OM-AC-AFILL', '自动填充卡号段', '/sale/autocardsegalloc.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168274', 'PPC-NSC-OM-AC-ASAVE', '保存自动分配卡号', '/sale/saveautocardsegalloc.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168275', 'PPC-NSC-OM-AC-MSAVE', '保存手动分配卡号', '/sale/savemanualcardsegalloc.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168261', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

-- 订单审核 menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168276', 'PPC-NSC-OM-VER', '订单审核', '#', '', '2', '', 'Y', 'M', '168260', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168277', 'PPC-NSC-OM-VER-LIST', '订单审核-列表', '/audit/orderlist.do', '', '22', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168278', 'PPC-NSC-OM-VER-SDETAIL', '订单审核-销售订单详情', '/sale/orderdetail.do', '', '23', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168279', 'PPC-NSC-OM-VER-SHIS', '订单审核-销售审批记录', '/sale/orderhistory.do', '', '24', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168280', 'PPC-NSC-OM-VER-SAUDIT', '订单审核-销售审核订单', '/sale/auditorder.do', '', '25', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168281', 'PPC-NSC-OM-VER-SAVEAUDIT', '订单审核-销售确认审核', '/sale/cardsegdistribute.do', '', '26', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168282', 'PPC-NSC-OM-VER-CDETAI', '订单审核-出纳订单详情', '/cashier/orderdetail.do', '', '27', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168283', 'PPC-NSC-OM-VER-CHIS', '订单审核-出纳审批记录', '/cashier/orderhistory.do', '', '28', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168284', 'PPC-NSC-OM-VER-CAUDIT', '订单审核-出纳审核订单', '/cashier/auditorder.do', '', '29', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168285', 'PPC-NSC-OM-VER-CSAVEAUDIT', '订单审核-出纳确认审核', '/cashier/saveAuditOrder.do', '', '30', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168286', 'PPC-NSC-OM-VER-FDETAIL', '订单审核-财务订单详情', '/finance/orderdetail.do', '', '31', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168287', 'PPC-NSC-OM-VER-FHIS', '订单审核-财务审批记录', '/finance/orderhistory.do', '', '32', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168288', 'PPC-NSC-OM-VER-F-ASS-REC', '订单审核-财务卡号段分配记录', '/finance/cardsegdistribution.do', '', '33', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168289', 'PPC-NSC-OM-VER-F-AUDIT', '订单审核-财务审核订单', '/finance/auditorder.do', '', '34', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168290', 'PPC-NSC-OM-VER-F-SAVEAUDIT', '订单审核-财务确认审核', '/finance/saveAuditOrder.do', '', '35', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168276', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

-- 干预订单 menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168291', 'PPC-NSC-OM-I', '干预订单', '#', '', '3', '', 'Y', 'M', '168260', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168292', 'PPC-NSC-OM-I-LIST', '干预订单-列表', '/sale/intervorderlist.do', '', '41', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168291', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168293', 'PPC-NSC-OM-I-DETAIL', '干预订单-订单详情', '/sale/intervorderdetail.do', '', '42', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168291', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168294', 'PPC-NSC-OM-I-HIS', '干预订单-审批记录', '/sale/intervorderhistory.do', '', '43', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168291', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168295', 'PPC-NSC-OM-I-MC', '干预订单-手动查款', '/sale/manualcheck.do', '', '44', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168291', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168296', 'PPC-NSC-OM-I-CANCEL', '干预订单-取消订单', '/sale/ordercancel.do', '', '45', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168291', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

-- 财务报表 menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168297', 'PPC-NSC-OM-R', '财务报表', '#', '', '4', '', 'Y', 'M', '168260', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168298', 'PPC-NSC-OM-R-REP', '财务报表-报表', '/finance/financeReport.do', '', '51', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168297', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168299', 'PPC-NSC-OM-R-TYPE', '财务报表-卡类型', '/card/queryCardTypeByKind.do', '', '52', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168297', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

-- 经销商管理 menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168300', 'PPC-NSC-DM', '经销商管理', '#', '', '5', '', 'Y', 'M', '168260', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168301', 'PPC-NSC-DM-LIST', '经销商管理-列表', '/dealer/dealer_list.do', '', '61', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168302', 'PPC-NSC-DM-ADD-SHOW', '经销商管理-新建显示', '/dealer/show_add.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168303', 'PPC-NSC-DM-ADD', '经销商管理-新建', '/dealer/add.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168304', 'PPC-NSC-DM-UPDATE-SHOW', '经销商管理-更新显示', '/dealer/show_update.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168305', 'PPC-NSC-DM-UPDATE', '经销商管理-更新', '/dealer/update.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168306', 'PPC-NSC-DM-FIND-CITIES', '经销商管理-城市列表', '/factory/get_cities.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168307', 'PPC-NSC-DM-AUTH', '经销商管理-业务授权', '/dealer/dealer_auth_list.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168308', 'PPC-NSC-DM-AUTH-ADD', '经销商管理-增加业务授权', '/dealer/dealer_auth_add.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168309', 'PPC-NSC-DM-AUTH-DEL', '经销商管理-删除业务授权', '/dealer/dealer_auth_delete.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168310', 'PPC-NSC-DM-DLL', '经销商管理-限额设置', '/dealer/dealer_limit_list.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168311', 'PPC-NSC-DM-DLL-UP', '经销商管理-修改限额设置', '/dealer/do_limit_update.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168312', 'PPC-NSC-DM-DLL-CR', '经销商管理-新增限额设置', '/dealer/do_limit_create.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168313', 'PPC-NSC-DM-SPL', '经销商管理-售价管理', '/dealer/dealer_saleprice_list.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168314', 'PPC-NSC-DM-SPU', '经销商管理-售价修改', '/dealer/do_saleprice_update.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168315', 'PPC-NSC-DM-DLR', '经销商限额报表', '/summary/queryDealerCardMgmt.do', '', '62', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168316', 'PPC-NSC-DM-DAR', '经销商售价报表', '/summary/queryDealerAuthMgmt.do', '', '63', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168300', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

-- 工厂管理 menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168317', 'PPC-NSC-FM', '工厂管理', '#', '', '6', '', 'Y', 'M', '168260', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168318', 'PPC-NSC-FM-LIST', '工厂管理-列表', '/factory/factory_list.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168317', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168319', 'PPC-NSC-FM-AD', '工厂管理-工厂新建', '/factory/add.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168317', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168320', 'PPC-NSC-FM-UP', '工厂管理-工厂更新', '/factory/update.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168317', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168321', 'PPC-NSC-FM-ADD-SHOW', '工厂管理-新建显示', '/factory/show_add.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168317', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168322', 'PPC-NSC-FM-UP-SHOW', '工厂管理-更新显示', '/factory/show_update.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168317', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

-- 事件处理 menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168323', 'PPC-NSC-E', '事件处理', '#', '', '7', '', 'Y', 'M', '168260', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168324', 'PPC-NSC-E-PQ-LIST', '卡密查询事件-列表', '/password/list_event.do', '', '71', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168325', 'PPC-NSC-E-PQ-AUTH-SHOW', '卡密查询事件-显示审核', '/password/show_audit.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168326', 'PPC-NSC-E-PQ-AUTH', '卡密查询事件-审核', '/password/audit.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168327', 'PPC-NSC-E-CS-TODO', '客服待处理事件', '/event/pendingEvenList.do', '', '72', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168328', 'PPC-NSC-E-CK-LIST', '窜卡事件列表', '/event/ck/cklist.htm', '', '73', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168329', 'PPC-NSC-E-CK-DETAIL', '窜卡事件详细', '/event/ck/cadetail.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168330', 'PPC-NSC-E-CK-CARD-DETAIL', '窜卡卡信息', '/event/ck/ccdetail.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168331', 'PPC-NSC-E-CK-CARD-CONSUM', '卡消费查询', '/event/ck/cardconsum.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168332', 'PPC-NSC-E-CK-FREEZE-Q', '窜卡封卡查询', '/event/ck/ckfreezeq.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168333', 'PPC-NSC-E-CK-FREEZE', '窜卡封卡', '/event/ck/ckfreeze.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168334', 'PPC-NSC-E-CK-DENIED', '窜卡审核不通过', '/event/ck/caDenied.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168335', 'PPC-NSC-E-CKU-LIST', '窜卡解封列表', '/event/ck/ckulist.htm', '', '74', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168336', 'PPC-NSC-E-CKU-DETAIL', '窜卡解封申请详细', '/event/ck/ckud.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168337', 'PPC-NSC-E-CKU-UNFREEZE', '窜卡解封', '/event/ck/uaUnfreeze.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168338', 'PPC-NSC-E-CKU-DENIED', '窜卡解封不通过', '/event/ck/uaDenied.htm', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168339', 'PPC-NSC-E-PL-LIST', '永久封卡事件列表', '/event/permantlocklist.do', '', '75', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168340', 'PPC-NSC-E-PL-ADD', '新增永久封卡事件', '/event/addpermantlockevent.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168341', 'PPC-NSC-E-PL-INSERT', '新增永久封卡事件', '/event/insertpermantlockevent.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168342', 'PPC-NSC-E-PL-CARD-DETAIL', '事件详情', '/event/eventdetail.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168343', 'PPC-NSC-E-PL-CARD-LOCK', '永久封卡', '/event/dopermantlock.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168344', 'PPC-NSC-E-PL-CARD-CHECK', '永久封卡检查', '/event/checkCardNo.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168323', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

-- 库存查询 menu sql 
insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168345', 'PPC-NSC-SQ', '库存查询', '#', '', '8', '', 'Y', 'M', '168260', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168346', 'PPC-NSC-SQ-Q', '库存查询-查询', '/storage/query.do', '', '81', 'http://localtest:5050/yxcard-management-web', 'Y', 'M', '168345', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

insert into tb_adm_menu (ID, MENU_CODE, MENU_NAME, ACTION_URL, IMG_URL, SORT, DESCRIPTION, STATUS, ACTION_TYPE, PARENT_ID, CREATOR, GMT_CREATE, GMT_MODIFIED, MEMO)
values ('168347', 'PPC-NSC-SQ-PAR', '库存查询-卡面额', '/card/queryCardParByType.do', '', '0', 'http://localtest:5050/yxcard-management-web', 'Y', 'B', '168345', 'SNDA-wangjinhua', '2011-12-28 14:42:29.000000', '2011-12-28 14:42:29.000000', '');

