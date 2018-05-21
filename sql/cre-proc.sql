drop table `proc`;

create table `proc` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`level` int(11) NOT NULL,
	`parent` varchar(10) NOT NULL,
	`code` varchar(10) NOT NULL,
	`code1` varchar(20) NOT NULL,
	`name` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into `proc` (`level`, `parent`, `code`, `code1`, `name`) values
('1','0','a','a','立项环节'),
('1','0','b','b','征地报批环节'),
('1','0','c','c','划拨出让阶段'),
('1','0','d','d','报建环节'),
('1','0','e','e','施工许可环节'),
('1','0','f','f','竣工验收环节'),
('1','0','g','g','办证环节'),
('2','a','1','a-1', '企业投资项目备案'),
('2','a','2','a-2', '建设项目选址意见书 [商贸（安置区）]'),
('2','a','3','a-3', '建设项目用地预审'),
('2','b','1','b-1', '农用地征收转用'),
('2','c','1','c-1', '核发建设项目选址意见书'),
('2','c','2','c-2', '建设项目用地预审'),
('2','c','3','c-3', '建设项目环境影响评价文件审批'),
('2','c','4','c-4', '岩土工程勘察设计'),
('2','c','5','c-5', '土地公开出让'),
('2','d','1','d-1', '建设项目环境影响评价审批'),
('2','d','2','d-2', '土地公开出让'),
('2','d','3','d-3', '建设用地规划许可证'),
('2','d','4','d-4', '建筑设计方案审查'),
('2','d','5','d-5', '人防工程建设方案审批'),
('2','d','6','d-6', '抗震设防要求的确定'),
('2','d','7','d-7', '影响地震观测环境的建设工程的审批 [商贸（安置区）]'),
('2','d','8','d-8', '建设工程规划许可证'),
('2','d','9','d-9', '建设工程质量监督安全登记'),
('2','e','1','e-1', '建设工程消防设计审核'),
('2','e','2','e-2', '施工图纸审查'),
('2','e','3','e-3', '房屋白蚁防治工程合格证'),
('2','e','4','e-4', '建筑工程施工许可证'),
('2','f','1','f-1', '建设工程消防验收'),
('2','f','2','f-2', '建设工程人防验收'),
('2','f','3','f-3', '建设工程安全验收'),
('2','f','4','f-4', '建设项目环保验收'),
('2','f','5','f-5', '建设工程规划类条件核实'),
('2','f','6','f-6', '建筑工程竣工验收'),
('2','f','7','f-7', '建设工程档案合格证核发'),
('2','f','8','f-8', '建筑工程竣工验收'),
('2','g','1','g-1', '不动产权登记');
