alter table `procedure` drop column level;
truncate table `procedure`;
insert into `procedure` (parent, num, code, name) values 
('e', 0, 'e', '立项阶段'),
('k', 0, 'k', '报建阶段'),
('q', 0, 'q', '建设阶段'),
('w', 0, 'w', '竣工验收阶段'),
('e', 1, 'e-1', '企业开办（企业投资项目）'),
('e', 2, 'e-2', '项目备案（企业投资项目）'),
('e', 3, 'e-3', '选址意见书或规划条件通知书'),
('e', 4, 'e-4', '用地预审意见'),
('e', 5, 'e-5', '项目可研批复（政府投资项目）'),
('k', 1, 'k-1', '环评文件审批'),
('k', 2, 'k-2', '划拨土地决定书或土地出让合同'),
('k', 3, 'k-3', '建设用地规划许可证'),
('k', 4, 'k-4', '施工图设计文件审查'),
('k', 5, 'k-5', '工程规划许可证'),
('k', 6, 'k-6', '施工许可证'),
('k', 7, 'k-7', '施工、监理招标'),
('q', 1, 'q-1', '统计入库'),
('w', 1, 'w-1', '规划条件核实'),
('w', 2, 'w-2', '人防工程竣工验收备案'),
('w', 3, 'w-3', '消防验收或竣工备案'),
('w', 4, 'w-4', '建设工程竣工验收');

DROP TABLE IF EXISTS `pproc`;
CREATE TABLE `pproc` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `e-1` int(11) NOT NULL DEFAULT 0,
  `e-2` int(11) NOT NULL DEFAULT 0,
  `e-3` int(11) NOT NULL DEFAULT 0,
  `e-4` int(11) NOT NULL DEFAULT 0,
  `e-5` int(11) NOT NULL DEFAULT 0,
  `k-1` int(11) NOT NULL DEFAULT 0,
  `k-2` int(11) NOT NULL DEFAULT 0,
  `k-3` int(11) NOT NULL DEFAULT 0,
  `k-4` int(11) NOT NULL DEFAULT 0,
  `k-5` int(11) NOT NULL DEFAULT 0,
  `k-6` int(11) NOT NULL DEFAULT 0,
  `k-7` int(11) NOT NULL DEFAULT 0,
  `q-1` int(11) NOT NULL DEFAULT 0,
  `w-1` int(11) NOT NULL DEFAULT 0,
  `w-2` int(11) NOT NULL DEFAULT 0,
  `w-3` int(11) NOT NULL DEFAULT 0,
  `w-4` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into pproc (`e-1`) values
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0);

alter table progress add proxy_status varchar(1000);
