create table 'order_master' (
	'order_id' varchar(32) not null,
	'buyer_name' varchar(32) not null comment '买家名字',
	'buyer_phone' varchar(32) not null comment '买家电话',
	'buyer_address' varchar(128) not null comment '买家地址',
	'buyer_openid' varchar(64) not null comment '买家微信 openid',
	'order_amount' decimal(8,2) not null comment '订单总金额',
	'order_status' tinyint(3) not null default '0' comment '订单状态,默认0未支付',
	'create_time' timestamp not null defalut current_timestamp comment '创建时间‘,
	’update_time' timestamp not null default current_timestamp on update current_timestamp comment '修改时间',
	primary key('order_id'),
	key 'idx_buyer_openid' ('buyer_openid')
)comment '订单表'