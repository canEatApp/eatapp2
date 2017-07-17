-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2017-07-17 03:12:17
-- 服务器版本： 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eatapp2`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `aid` int(200) NOT NULL,
  `aname` varchar(200) NOT NULL,
  `apass` varchar(32) NOT NULL,
  `arole` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `apass`, `arole`) VALUES
(1, 'lisi', 'dc3a8f1670d65bea69b7b65048a0ac40', 0);

-- --------------------------------------------------------

--
-- 表的结构 `car`
--

CREATE TABLE `car` (
  `carid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `coinfo`
--

CREATE TABLE `coinfo` (
  `ciid` int(11) NOT NULL,
  `coid` int(11) NOT NULL COMMENT '商品id',
  `conum` int(11) NOT NULL COMMENT '卖的数量',
  `colike` int(11) NOT NULL COMMENT '被关注数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `commodity`
--

CREATE TABLE `commodity` (
  `coid` int(11) NOT NULL,
  `coname` varchar(255) NOT NULL COMMENT '商品名',
  `coprice` varchar(255) NOT NULL COMMENT '商品价格',
  `coimg` varchar(255) NOT NULL COMMENT '商品图片',
  `conote` varchar(255) NOT NULL COMMENT '商品简介',
  `slid` int(11) NOT NULL COMMENT '商品分类',
  `sid` int(11) NOT NULL COMMENT '所属商铺',
  `srec` int(11) NOT NULL COMMENT '当前状态',
  `status` int(11) NOT NULL COMMENT '下一刻状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `commodity`
--

INSERT INTO `commodity` (`coid`, `coname`, `coprice`, `coimg`, `conote`, `slid`, `sid`, `srec`, `status`) VALUES
(9, '111', '333', 'upload/17-07-14/894ee66e3bafdb474e837ca3e6600191q-3_03.png', '3333', 3, 1, 3, 3),
(10, '333333', '1231234', 'upload/17-07-14/12b3951c54f05771beceeaa59b6d9f15q-5.png', '123123', 3, 1, 0, 1),
(11, '23123123', '121', 'upload/17-07-14/17a1753244578d6e7130bb3d66e1627dxx-login01.png', '123123', 8, 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `lists`
--

CREATE TABLE `lists` (
  `lid` int(11) NOT NULL,
  `lname` varchar(255) NOT NULL COMMENT '分类名',
  `sid` int(11) NOT NULL COMMENT '商铺id',
  `limg` varchar(500) NOT NULL,
  `lename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lists`
--

INSERT INTO `lists` (`lid`, `lname`, `sid`, `limg`, `lename`) VALUES
(1, '生态·餐厅', 1, 'upload/17-07-12/f61151244c2a7caf0bb984403c6de06f9318f4eca088d84ad007fff31924341a0d02087817d13d42ce2bdd65229736574.png', 'ecological'),
(2, '采摘园', 2, 'upload/17-07-01/9318f4eca088d84ad007fff31924341a0d02087817d13d42ce2bdd65229736575.png\r\n', 'PICKING'),
(3, '果蔬生鲜', 3, 'upload/17-07-01/9318f4eca088d84ad007fff31924341a0d02087817d13d42ce2bdd65229736576.png\r\n', 'FRESH'),
(4, '营养餐', 4, 'upload/17-07-01/9318f4eca088d84ad007fff31924341a0d02087817d13d42ce2bdd65229736577.png', 'FEEDING'),
(5, '儿童餐', 5, 'upload/17-07-01/9318f4eca088d84ad007fff31924341a0d02087817d13d42ce2bdd65229736578.png', 'MEALS'),
(6, '甜品饮品', 6, 'upload/17-07-01/9318f4eca088d84ad007fff31924341a0d02087817d13d42ce2bdd65229736579.png', 'SWEET DRINKS');

-- --------------------------------------------------------

--
-- 表的结构 `position`
--

CREATE TABLE `position` (
  `poid` int(11) NOT NULL,
  `poname` varchar(255) NOT NULL COMMENT '推荐名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `position`
--

INSERT INTO `position` (`poid`, `poname`) VALUES
(1, '轮播'),
(2, '猜你喜欢'),
(3, '新品推荐'),
(4, '当下热门'),
(5, '二级页面新品推荐');

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE `role` (
  `rid` int(20) NOT NULL,
  `rname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`rid`, `rname`) VALUES
(0, '超级管理员'),
(1, '网页编辑'),
(3, '内容编辑'),
(4, '普通会员'),
(5, '白金会员'),
(6, '黄金会员');

-- --------------------------------------------------------

--
-- 表的结构 `rules`
--

CREATE TABLE `rules` (
  `rid` int(11) NOT NULL,
  `rname` varchar(255) NOT NULL COMMENT '满xx减xx',
  `reprice` int(11) NOT NULL COMMENT '满xx',
  `rreduce` int(11) NOT NULL COMMENT '减xx'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rules`
--

INSERT INTO `rules` (`rid`, `rname`, `reprice`, `rreduce`) VALUES
(1, '满30减5', 30, 5),
(2, '满44减10', 44, 10);

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE `shop` (
  `sid` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL COMMENT '商铺名称',
  `sename` varchar(200) NOT NULL,
  `saddress` varchar(255) NOT NULL COMMENT '地址',
  `snotes` varchar(255) NOT NULL COMMENT '中文简介',
  `senotes` varchar(255) NOT NULL COMMENT '英文简介',
  `srules` int(11) NOT NULL COMMENT '满多少起送',
  `lid` int(11) NOT NULL COMMENT '类id',
  `rid` int(11) NOT NULL COMMENT '满减id',
  `srec` int(11) NOT NULL COMMENT '当前状态0，1，2,3轮播，4喜欢，5新品，',
  `status` int(11) NOT NULL COMMENT '想要变成的状态',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `simg` varchar(500) NOT NULL,
  `stime` date NOT NULL,
  `state` int(2) NOT NULL DEFAULT '1' COMMENT '当前商铺状态 0禁开1开启'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`sid`, `sname`, `sename`, `saddress`, `snotes`, `senotes`, `srules`, `lid`, `rid`, `srec`, `status`, `uid`, `simg`, `stime`, `state`) VALUES
(1, '中华小当家', 'one', '品阳路学府街开通大厦', '来来来看一看愁一愁', 'come and have a look and worry', 15, 4, 1, 0, 5, 1, 'upload/17-07-14/1a46df80ec4690fe5ac872b925fe4687q-back.png', '2017-07-09', 0),
(2, '12312313', '', 'qwqw', '1123123', '123123', 15, 1, 0, 0, 1, 0, 'upload/17-07-16/b8bd4e39161a2e5fabcd9423093554aeq-1.png', '0000-00-00', 0),
(3, '1123', '', '123123', '123123', '123123', 15, 1, 0, 0, 1, 0, 'upload/17-07-16/45c2171242c6aa377484ee9c2fa854ddq-shi.png', '0000-00-00', 0),
(9, 'FAVORITE', '123123', '123123', '123123', '123123', 15, 1, 1, 0, 1, 6, 'upload/17-07-16/66d1c9624cda4a59fd3dce3c339106aaq-1.png', '0000-00-00', 0),
(10, 'FAVORITE', 'RESTAURANT', '123123', '123123', '213123', 15, 1, 1, 0, 1, 6, 'upload/17-07-16/99b16b99ad70aeece07e26f92b8ab5baq-shi.png', '0000-00-00', 0),
(11, 'FAVORITE', 'RESTAURANT', '北京市朝阳区', '123123', '213123', 15, 1, 1, 0, 1, 6, 'upload/17-07-16/f56b8113685ada7492b204481083f65dq-1.png', '0000-00-00', 0),
(12, 'FAVORITE', 'RESTAURANT', '北京市朝阳区', '这是一个神奇的餐厅', '123123', 15, 1, 1, 0, 1, 6, 'upload/17-07-16/556b2a3ebe925e83ecea5521c6805877q-1.png', '0000-00-00', 0),
(13, '1231231', '23123', '123123', '123123', 'Its a delicious place to be', 15, 1, 1, 0, 1, 6, 'upload/17-07-16/aab4b60baba5d0d8ee19f2eb11e8b422q-shi.png', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- 表的结构 `slist`
--

CREATE TABLE `slist` (
  `slid` int(11) NOT NULL,
  `slname` varchar(255) NOT NULL COMMENT '分类名',
  `sid` int(11) NOT NULL COMMENT '商铺id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `slist`
--

INSERT INTO `slist` (`slid`, `slname`, `sid`) VALUES
(3, '西餐', 1),
(4, '中餐', 9),
(5, '11', 9),
(6, '1133', 9),
(7, '66666', 9),
(8, '11111', 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL COMMENT '用户名',
  `upass` varchar(255) NOT NULL COMMENT '密码',
  `uroles` int(11) NOT NULL COMMENT '角色（1用户 2卖家）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `uname`, `upass`, `uroles`) VALUES
(1, 'zhangsan', '123123', 2),
(2, 'test', '123123', 2),
(3, 'qianyonghui', 'zhuzhuzhu', 1),
(4, 'wuxiaoxiong', '123123', 1),
(5, 'hahaha', '123123', 1),
(6, '123123', '123123', 2);

-- --------------------------------------------------------

--
-- 表的结构 `userinfo`
--

CREATE TABLE `userinfo` (
  `uiid` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `uiname` varchar(255) NOT NULL COMMENT '昵称',
  `uimg` varchar(255) NOT NULL COMMENT '头像',
  `uaddress` varchar(255) NOT NULL COMMENT '地址',
  `utel` varchar(255) NOT NULL COMMENT '电话',
  `unotes` varchar(255) NOT NULL COMMENT '简介',
  `ustate` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `userinfo`
--

INSERT INTO `userinfo` (`uiid`, `uid`, `uiname`, `uimg`, `uaddress`, `utel`, `unotes`, `ustate`) VALUES
(4, 1, '张三a', 'upload/17-07-14/4023d614b9b42661c9df16b87e922d8fmyxj_20170713162105_save.jpg', '啊啊啊啊啊啊啊啊啊啊', '222222222222', '22222222222222222摸摸', 1),
(5, 2, '闷骚钱', 'upload/17-07-14/4dbedba0153e60fa74fa6cb48dec8e25q-5.png', '123123', '18035182254', 'hanxiao', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`carid`);

--
-- Indexes for table `coinfo`
--
ALTER TABLE `coinfo`
  ADD PRIMARY KEY (`ciid`);

--
-- Indexes for table `commodity`
--
ALTER TABLE `commodity`
  ADD PRIMARY KEY (`coid`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`poid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `slist`
--
ALTER TABLE `slist`
  ADD PRIMARY KEY (`slid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`uiid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `car`
--
ALTER TABLE `car`
  MODIFY `carid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `commodity`
--
ALTER TABLE `commodity`
  MODIFY `coid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `lists`
--
ALTER TABLE `lists`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `position`
--
ALTER TABLE `position`
  MODIFY `poid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `role`
--
ALTER TABLE `role`
  MODIFY `rid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `rules`
--
ALTER TABLE `rules`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `shop`
--
ALTER TABLE `shop`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `slist`
--
ALTER TABLE `slist`
  MODIFY `slid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `uiid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
