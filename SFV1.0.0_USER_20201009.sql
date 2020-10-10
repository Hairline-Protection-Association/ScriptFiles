drop table if exists User;

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   userId               int not null auto_increment COMMENT '用户标识',
   username             varchar(30) not null COMMENT '用户名',
   authId               int  COMMENT '授权标识',
   avatar               text not null COMMENT '用户头像',
   lrrq                 datetime not null COMMENT '录入日期',
   yxbz                 varchar(1) not null COMMENT '有效标志',
   primary key (userId)
);

alter table User comment '思否-用户表';



drop table if exists userIdentifierInfo;

/*==============================================================*/
/* Table: userIdentifierInfo                                    */
/*==============================================================*/
create table userIdentifierInfo
(
   authId               int not null auto_increment COMMENT '授权标识',
   userId               int not null COMMENT '用户标识',
   identifier           varchar(50) not null COMMENT '标识（手机号 邮箱 用户名或第三方应用的唯一标识',
   identifier_type      int not null COMMENT '用户登录类型（手机 邮箱 用户名）',
   credentials          longtext not null COMMENT '保存凭证',
   lrrq                 datetime not null COMMENT '录入日期',
   yxbz                 varchar(2) not null COMMENT '有效标志',
   primary key (authId)
);

alter table userIdentifierInfo comment '思否-用户登录鉴定信息表';

