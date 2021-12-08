CREATE TABLE hearing_channel (
CategoryKey varchar(64) NOT NULL,
ServiceID	varchar(16),
Key	varchar(64)	NOT NULL,
Value_EN varchar(128) NOT NULL,
Value_CY varchar(128),
HintText_EN	varchar(512),
HintText_CY	varchar(512),
Lov_Order BIGINT,
ParentCategory varchar(64),
ParentKey	varchar(64),
Active varchar(1)
);

INSERT INTO hearing_channel (CategoryKey,ServiceID,Key,Value_EN,Value_CY,HintText_EN,HintText_CY,Lov_Order,ParentCategory,ParentKey,Active)
VALUES ('HearingChannel','BBA3','telephone','Telephone',null,null,null,2,null,null,'Y'),
('HearingChannel','BBA3','video','Video',null,null,null,3,null,null,'Y'),
('HearingChannel','BBA3','faceToFace','Face To Face',null,null,null,1,null,null,'Y'),
('HearingChannel','BBA3','notAttending','Not Attending',null,null,null,4,null,null,'Y'),
('HearingSubChannel','BBA3','telephone-btMeetMe','Telephone - BTMeetme',null,null,null,null,'HearingChannel','telephone','Y'),
('HearingSubChannel','BBA3','telephone-CVP','Telephone - CVP',null,null,null,null,'HearingChannel','telephone','Y'),
('HearingSubChannel','BBA3','telephone-other','Telephone - Other',null,null,null,null,'HearingChannel','telephone','Y'),
('HearingSubChannel','BBA3','telephone-skype','Telephone - Skype',null,null,null,null,'HearingChannel','telephone','Y'),
('HearingSubChannel','BBA3','video-cvp','Video - CVP',null,null,null,null,'HearingChannel','video','Y'),
('HearingSubChannel','BBA3','video-conference','Video Conference',null,null,null,null,'HearingChannel','video','Y'),
('HearingSubChannel','BBA3','video-other','Video - Other',null,null,null,null,'HearingChannel','video','Y'),
('HearingSubChannel','BBA3','video-skype','Video - Skype',null,null,null,null,'HearingChannel','video','Y'),
('HearingSubChannel','BBA3','video-teams','Video - Teams',null,null,null,null,'HearingChannel','video','Y');

CREATE TABLE non_standard_duration_codes (
CategoryKey varchar(64) not null,
ServiceID varchar(16),
Key varchar(64) not null,
Value_EN varchar(128) not null,
Value_CY varchar(128),
HintText_EN varchar(512),
HintText_CY varchar(512),
Lov_Order BIGINT,
ParentCategory varchar(64),
ParentKey varchar(64),
Active varchar(1)
);

INSERT INTO non_standard_duration_codes (CategoryKey,ServiceID,Key,Value_EN,Value_CY,HintText_EN,HintText_CY,Lov_Order,ParentCategory,ParentKey,Active)
VALUES ('NonStdDurationReason', null, 'timeForInterpretation', 'Time for interpretation', null, null, null, null, null, null, 'Y'),
('NonStdDurationReason', null, 'complexCase', 'Complex case', null, null, null, null, null, null, 'Y'),
('NonStdDurationReason', null, 'litigantInPerson', 'Litigant in person', null, null, null, null, null, null, 'Y');

CREATE TABLE case_type (
	categorykey varchar(64) NOT NULL,
	serviceid varchar(16),
	key varchar(64) NOT NULL,
	value_en varchar(128) NOT NULL,
	value_cy varchar(128),
	hinttext_en varchar(512),
	hinttext_cy varchar(512),
	lov_order bigint,
	parentcategory varchar(64),
	parentkey varchar(64),
	active varchar(1)
);

INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseType','BBA3','BBA3-001','UNIVERSAL CREDIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-001AD','ADVANCE PAYMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001BC','BENEFIT CAP CALCULATION',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001BR','BEDROOM REDUCTION',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001CH','CHILDCARE COSTS',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001CI','CARER ISSUE',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001CX','COMPLEX/MULTIPLE ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-001DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001HC','HOUSING COSTS',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001HS','SUPPORTED HOUSING - WHAT IS ELIGIBLE FOR HB',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001IJ','PERSONAL INJURY',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001LM','LABOUR MARKET ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-001LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001PT','HARDSHIP PAYMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001QC','CHILD ISSUE',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001SA','STANDARD ALLOWANCE',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001SG','SUPPORT GROUP PLACEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-001SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001TB','TERMINATION OF BENEFIT - FAILURE TO PROVIDE FURTHE',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001TD','THIRD PARTY DEDUCTION',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001TP','TRANSITIONAL PROTECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001UC','PATHFINDER APPEAL',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001UE','UNEARNED INCOME',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001UM','MULTIPLE ELEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001US','SINGLE ELEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y'),
	 ('caseSubType','BBA3','BBA3-001WC','WORK CAPABILITY ASSESSMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-001','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseType','BBA3','BBA3-002','PERSONAL INDEPENDENT PAYMENT (NEW CLAIM)',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-002AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002AR','ALTERNATIVE DISPUTE RESOLUTION',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002CD','CARE (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002CF','CARE/MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-002EI','EXPORTABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002LC','DAILY LIVING COMPONENT',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002MD','MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002ML','DAILY LIVING/MOBILITY',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002MO','MOBILITY COMPONENT',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-002OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseSubType','BBA3','BBA3-002VW','VERBALLY WITHDRAWN',NULL,NULL,NULL,NULL,'caseType','BBA3-002','Y'),
	 ('caseType','BBA3','BBA3-003','PERSONAL INDEPENDENT PAYMENT (REASSESSMENT CASE)',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-003AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003AR','ALTERNATIVE DISPUTE RESOLUTION',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003CD','CARE (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-003CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003CF','CARE/MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003EI','EXPORTABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003LC','DAILY LIVING COMPONENT',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-003MD','MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003ML','DAILY LIVING/MOBILITY',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003MO','MOBILITY COMPONENT',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y'),
	 ('caseSubType','BBA3','BBA3-003VW','VERBALLY WITHDRAWN',NULL,NULL,NULL,NULL,'caseType','BBA3-003','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseType','BBA3','BBA3-011','CHILD TRUST FUND',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-011AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-011','Y'),
	 ('caseSubType','BBA3','BBA3-011CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-011','Y'),
	 ('caseSubType','BBA3','BBA3-011DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-011','Y'),
	 ('caseSubType','BBA3','BBA3-011FA','FRAUDULENT ACCOUNT',NULL,NULL,NULL,NULL,'caseType','BBA3-011','Y'),
	 ('caseSubType','BBA3','BBA3-011FI','FINANCIAL PROVIDER',NULL,NULL,NULL,NULL,'caseType','BBA3-011','Y'),
	 ('caseSubType','BBA3','BBA3-011NP','AMOUNT PAID',NULL,NULL,NULL,NULL,'caseType','BBA3-011','Y'),
	 ('caseSubType','BBA3','BBA3-011NV','NO VOUCHER',NULL,NULL,NULL,NULL,'caseType','BBA3-011','Y'),
	 ('caseType','BBA3','BBA3-012','HEALTH IN PREGNANCY GRANT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-012AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-012','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-012CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-012','Y'),
	 ('caseSubType','BBA3','BBA3-012CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-012','Y'),
	 ('caseSubType','BBA3','BBA3-012HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-012','Y'),
	 ('caseType','BBA3','BBA3-013','ATTENDANCE ALLOWANCE',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-013AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013AR','ALTERNATIVE DISPUTE RESOLUTION',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013CD','CARE (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013CF','CARE/MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-013CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013EI','EXPORTABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013MD','MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-013ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseSubType','BBA3','BBA3-013RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-013','Y'),
	 ('caseType','BBA3','BBA3-014','DIFFUSE MESOTHELIOMA',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-014DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-014','Y'),
	 ('caseSubType','BBA3','BBA3-014MN','NEW SCHEME (MESO)',NULL,NULL,NULL,NULL,'caseType','BBA3-014','Y'),
	 ('caseType','BBA3','BBA3-016','CHILD BENEFIT / CHILD BENEFIT (LONE PARENT)',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-016AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-016CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-016OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseSubType','BBA3','BBA3-016SU','SUSPENSIONS',NULL,NULL,NULL,NULL,'caseType','BBA3-016','Y'),
	 ('caseType','BBA3','BBA3-022','CHILD SUPPORT ASSESSMENTS',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-022AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022CA','CHILD SUPPORT REFORM CONVERSION APPEALS',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-022CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-022OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseSubType','BBA3','BBA3-022SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-022','Y'),
	 ('caseType','BBA3','BBA3-023','CHILD SUPPORT REFORMS',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-023AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-023CA','CHILD SUPPORT REFORM CONVERSION APPEALS',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-023ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseSubType','BBA3','BBA3-023SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-023','Y'),
	 ('caseType','BBA3','BBA3-024','CHILD SUPPORT REFORM VARIATION REFERRALS',NULL,NULL,NULL,NULL,NULL,NULL,'Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-024AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024CA','CHILD SUPPORT REFORM CONVERSION APPEALS',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-024OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y'),
	 ('caseSubType','BBA3','BBA3-024SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-024','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseType','BBA3','BBA3-025','CHILD SUPPORT DEPARTURES',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-025AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025CA','CHILD SUPPORT REFORM CONVERSION APPEALS',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-025LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseSubType','BBA3','BBA3-025SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-025SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-025','Y'),
	 ('caseType','BBA3','BBA3-026','CHILD SUPPORT VARIATION REFERRAL',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-026AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-026LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseSubType','BBA3','BBA3-026SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-026SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-026','Y'),
	 ('caseType','BBA3','BBA3-028','CHILD SUPPORT DEPARTURES REFERRAL',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-028AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-028LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseSubType','BBA3','BBA3-028SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-028SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-028','Y'),
	 ('caseType','BBA3','BBA3-030','CREDITS - APPROVED TRAINING',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-030AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030CO','COMMUNITY ORDER',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-030EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseSubType','BBA3','BBA3-030RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-030','Y'),
	 ('caseType','BBA3','BBA3-031','COMPENSATION RECOVERY UNIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-031AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-031NW','NHS Waiver Decision',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031RY','NHS Certificate',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseSubType','BBA3','BBA3-031SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-031XA','SEXUAL ABUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-031','Y'),
	 ('caseType','BBA3','BBA3-032','CREDITS - JURY SERVICE',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-032AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-032OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseSubType','BBA3','BBA3-032RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-032','Y'),
	 ('caseType','BBA3','BBA3-033','CREDITS - STATUTORY SICK PAY',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-033AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-033CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseSubType','BBA3','BBA3-033RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-033','Y'),
	 ('caseType','BBA3','BBA3-034','COEG',NULL,NULL,NULL,NULL,NULL,NULL,'Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-034AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-034ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseSubType','BBA3','BBA3-034SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-034','Y'),
	 ('caseType','BBA3','BBA3-035','CREDITS - STATUTORY MATERNITY PAY',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-035AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-035CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseSubType','BBA3','BBA3-035RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-035RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-035','Y'),
	 ('caseType','BBA3','BBA3-036','ROAD TRAFFIC (NHS CHARGE)',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-036AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-036','Y'),
	 ('caseSubType','BBA3','BBA3-036CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-036','Y'),
	 ('caseSubType','BBA3','BBA3-036DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-036','Y'),
	 ('caseSubType','BBA3','BBA3-036DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-036','Y'),
	 ('caseSubType','BBA3','BBA3-036ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-036','Y'),
	 ('caseType','BBA3','BBA3-037','DISABILITY LIVING ALLOWANCE',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-037AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037AR','ALTERNATIVE DISPUTE RESOLUTION',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-037CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037CD','CARE (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037CF','CARE/MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037EI','EXPORTABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-037LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037MD','MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseSubType','BBA3','BBA3-037RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-037','Y'),
	 ('caseType','BBA3','BBA3-040','DISABILITY WORKING ALLOWANCE',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-040AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-040CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-040LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040MD','MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-040SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseSubType','BBA3','BBA3-040SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-040','Y'),
	 ('caseType','BBA3','BBA3-043','DISABLED PERSONS TAX CREDIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-043AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-043EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y'),
	 ('caseSubType','BBA3','BBA3-043RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-043','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseType','BBA3','BBA3-045','PENSION CREDITS',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-045AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045AP','ASSESSED INCOME PERIODS',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045AS','ASYLUM',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045BW','BACK TO WORK BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045CL','CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045CM','CHILD MAINTENANCE BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045CO','COMMUNITY ORDER',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-045CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045DA','DISABILITY AND CARERS',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045DP','DISABILITY PREMIUM/SEVERE DISABILITY PREMIUM',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045HC','HOUSING COSTS',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-045LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045PR','PREMIUMS',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045SF','FUNERAL',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-045SM','MATERNITY',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseSubType','BBA3','BBA3-045SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-045','Y'),
	 ('caseType','BBA3','BBA3-049','FAMILY CREDIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-049AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049CL','CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-049EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseSubType','BBA3','BBA3-049RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-049RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-049','Y'),
	 ('caseType','BBA3','BBA3-050','HRP',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-050AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-050OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseSubType','BBA3','BBA3-050RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-050','Y'),
	 ('caseType','BBA3','BBA3-051','EMPLOYMENT SUPPORT ALLOWANCE',NULL,NULL,NULL,NULL,'caseType','N/A','Y'),
	 ('caseSubType','BBA3','BBA3-051AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051CB','CONTRIBUTION RECORDS',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-051CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051FR','FAILURE TO RETURN THE ESA50',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051WI','FAILURE TO ATTEND A WFI',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051IM','REG. 35 STAY 2014',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-051NC','NON COMPLIANCE',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051SG','SUPPORT GROUP PLACEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051TL','TIME LIMITED ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051TP','TRANSITIONAL PROTECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseSubType','BBA3','BBA3-051WC','WORK CAPABILITY ASSESSMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-051','Y'),
	 ('caseType','BBA3','BBA3-052','INCAPACITY BENEFIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-052AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-052AT','ALL WORK TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052CB','CONTRIBUTION RECORDS',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-052LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052NC','NON COMPLIANCE',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseSubType','BBA3','BBA3-052RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-052','Y'),
	 ('caseType','BBA3','BBA3-053','CHILD TAX CREDIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-053AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-053CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053FX','FINANCIALLY COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053OI','OVERPAYMENT INTEREST',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-053RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseSubType','BBA3','BBA3-053RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-053','Y'),
	 ('caseType','BBA3','BBA3-054','WORKING TAX CREDIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-054AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-054EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054FX','FINANCIALLY COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054OI','OVERPAYMENT INTEREST',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseSubType','BBA3','BBA3-054RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-054','Y'),
	 ('caseType','BBA3','BBA3-055','PENALTY PROCEEDINGS',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-055AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-055','Y'),
	 ('caseSubType','BBA3','BBA3-055CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-055','Y'),
	 ('caseSubType','BBA3','BBA3-055DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-055','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-055EQ','ENQUIRY CLOSURE',NULL,NULL,NULL,NULL,'caseType','BBA3-055','Y'),
	 ('caseSubType','BBA3','BBA3-055FC','FAILURE TO COMPLY',NULL,NULL,NULL,NULL,'caseType','BBA3-055','Y'),
	 ('caseSubType','BBA3','BBA3-055IS','INCORRECT STATEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-055','Y'),
	 ('caseType','BBA3','BBA3-056','CARERS CREDIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-056CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-056','Y'),
	 ('caseSubType','BBA3','BBA3-056CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-056','Y'),
	 ('caseSubType','BBA3','BBA3-056DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-056','Y'),
	 ('caseSubType','BBA3','BBA3-056AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-056','Y'),
	 ('caseSubType','BBA3','BBA3-056VW','VERBALLY WITHDRAWN',NULL,NULL,NULL,NULL,'caseType','BBA3-056','Y'),
	 ('caseType','BBA3','BBA3-057','TAX-FREE CHILDCARE SCHEME',NULL,NULL,NULL,NULL,NULL,NULL,'Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-057CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-057','Y'),
	 ('caseSubType','BBA3','BBA3-057CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-057','Y'),
	 ('caseSubType','BBA3','BBA3-057DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-057','Y'),
	 ('caseSubType','BBA3','BBA3-057DK','RECOVERY OF DEBT',NULL,NULL,NULL,NULL,'caseType','BBA3-057','Y'),
	 ('caseSubType','BBA3','BBA3-057DS','DISQUALIFICATION FROM THE SCHEME',NULL,NULL,NULL,NULL,'caseType','BBA3-057','Y'),
	 ('caseSubType','BBA3','BBA3-057RO','ACCOUNT USAGE',NULL,NULL,NULL,NULL,'caseType','BBA3-057','Y'),
	 ('caseSubType','BBA3','BBA3-057TU','TOP-UP ASSESSMENTS',NULL,NULL,NULL,NULL,'caseType','BBA3-057','Y'),
	 ('caseType','BBA3','BBA3-058','30 HOURS'' FREE CHILDCARE SCHEME',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-058CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-058','Y'),
	 ('caseSubType','BBA3','BBA3-058CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-058','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-058DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-058','Y'),
	 ('caseType','BBA3','BBA3-061','INCOME SUPPORT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-061AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061AS','ASYLUM',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061AT','ALL WORK TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061BW','BACK TO WORK BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061CL','CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061CM','CHILD MAINTENANCE BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-061CO','COMMUNITY ORDER',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061DP','DISABILITY PREMIUM/SEVERE DISABILITY PREMIUM',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061WI','FAILURE TO ATTEND A WFI',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-061HC','HOUSING COSTS',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061IA','INDUSTRIAL ACCIDENT',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061ID','INDUSTRIAL DISEASE',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061LM','LABOUR MARKET ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-061OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061PR','PREMIUMS',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061SF','FUNERAL',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-061SM','MATERNITY',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061SU','SUSPENSIONS',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061TT','TERM-TIME',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseSubType','BBA3','BBA3-061WF','SOCIAL FUND WINTER FUEL PAYMENTS',NULL,NULL,NULL,NULL,'caseType','BBA3-061','Y'),
	 ('caseType','BBA3','BBA3-062','EMPLOYMENT SUPPORT ALLOWANCE REASSESSMENT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-062AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062CB','CONTRIBUTION RECORDS',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-062CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062IM','REG. 35 STAY 2014',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062NC','NON COMPLIANCE',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-062PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062SG','SUPPORT GROUP PLACEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062TP','TRANSITIONAL PROTECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseSubType','BBA3','BBA3-062WC','WORK CAPABILITY ASSESSMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-062','Y'),
	 ('caseType','BBA3','BBA3-064','INDUSTRIAL DEATH BENEFIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-064AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-064CS','CHEST-PNEUMO'', ASBESTOS ETC',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064IA','INDUSTRIAL ACCIDENT',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064ID','INDUSTRIAL DISEASE',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-064OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseSubType','BBA3','BBA3-064RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-064','Y'),
	 ('caseType','BBA3','BBA3-067','INDUSTRIAL INJURIES DISABLEMENT BENEFIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-067AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067CB','CONTRIBUTION RECORDS',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-067CS','CHEST-PNEUMO'', ASBESTOS ETC',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067DM','DIFFUSE MESOTHELIOMA',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067FW','FORESTRY WORKER',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067IA','INDUSTRIAL ACCIDENT',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067ID','INDUSTRIAL DISEASE',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-067LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067OK','OSTEOARTHRITIS OF THE KNEE',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseSubType','BBA3','BBA3-067RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-067','Y'),
	 ('caseType','BBA3','BBA3-069','(HOUSING / COUNCIL TAX) BENEFIT COMBINED',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-069AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069AS','ASYLUM',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-069BD','BACKDATING',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069CL','CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069DE','DATE OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069DP','DISABILITY PREMIUM/SEVERE DISABILITY PREMIUM',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-069GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069OL','OVERPAYMENT - SEEK RECOVERY FROM LANDLORD/LETTING',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-073SM','MATERNITY',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-069OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-069PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069PR','PREMIUMS',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069RS','RESIDENCY',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069SC','SANCTION APPLIED IN ONE PILOT',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069SU','SUSPENSIONS',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-069SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069TB','TERMINATION OF BENEFIT - FAILURE TO PROVIDE FURTHE',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069TE','EXCEPTIONAL CIRCUMSTANCES PAYMENTS',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseSubType','BBA3','BBA3-069TO','EXCEPTIONAL HARDSHIP PAYMENTS',NULL,NULL,NULL,NULL,'caseType','BBA3-069','Y'),
	 ('caseType','BBA3','BBA3-070','CARER''S ALLOWANCE',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-070AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-070EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070EI','EXPORTABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y'),
	 ('caseSubType','BBA3','BBA3-070RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-070','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseType','BBA3','BBA3-073','JOB SEEKER''S ALLOWANCE',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-073AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073AS','ASYLUM',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073AT','ALL WORK TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073AV','AVAILABILITY FOR WORK',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073AW','ACTIVELY SEEKING WORK',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073BW','BACK TO WORK BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073CB','CONTRIBUTION RECORDS',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-073CL','CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073CM','CHILD MAINTENANCE BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073CO','COMMUNITY ORDER',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073DR','JOBSEEKER''S DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073FT','FAILURE TO ATTEND',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-073GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073HC','HOUSING COSTS',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073LM','LABOUR MARKET ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-073OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073RE','REFUSAL OF EMPLOYMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073RR','Reilly Wilson Stay 2 (LM) 2015',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073RT','Reilly Wilson Stay 3 (LM) 2016',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-073SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073SU','SUSPENSIONS',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseSubType','BBA3','BBA3-073SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-073','Y'),
	 ('caseType','BBA3','BBA3-075','HOUSING BENEFIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-075AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075AB','SANCTION FOR ANTI-SOCIAL BEHAVIOUR',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075AS','ASYLUM',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075AX','ASSESSED AS UNABLE TO PAY - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075BD','BACKDATING',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075BR','BEDROOM REDUCTION',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-075CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075CL','CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075DC','DIRECT PAYMENT OF HB - CLAIMANT',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075DE','DATE OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075DL','DIRECT PAYMENT OF HB - LANDLORD',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075DP','DISABILITY PREMIUM/SEVERE DISABILITY PREMIUM',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-075EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075HS','SUPPORTED HOUSING - WHAT IS ELIGIBLE FOR HB',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075LH','LOCAL HOUSING ALLOWANCE',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075LX','ASSESSED AS UNLIKELY TO PAY - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-075OL','OVERPAYMENT - SEEK RECOVERY FROM LANDLORD/LETTING',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075PR','PREMIUMS',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075RD','RENT OFFICERS DECISIONS',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-075RI','RENT ISSUES - INCLUDING OLD REG 11',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075RL','LIABILITY TO PAY RENT',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075RS','RESIDENCY',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075SC','SANCTION APPLIED IN ONE PILOT',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075SU','SUSPENSIONS',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075TB','TERMINATION OF BENEFIT - FAILURE TO PROVIDE FURTHE',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075TE','EXCEPTIONAL CIRCUMSTANCES PAYMENTS',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075TO','EXCEPTIONAL HARDSHIP PAYMENTS',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-075UA','ASSESSED AS UNABLE TO PAY - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseSubType','BBA3','BBA3-075UL','ASSESSED AS UNLIKELY TO PAY - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-075','Y'),
	 ('caseType','BBA3','BBA3-076','LOOKALIKES',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-076AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076AS','ASYLUM',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076AT','ALL WORK TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076BW','BACK TO WORK BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076CD','CARE (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-076CF','CARE/MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076CL','CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076CM','CHILD MAINTENANCE BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076CS','CHEST-PNEUMO'', ASBESTOS ETC',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076DP','DISABILITY PREMIUM/SEVERE DISABILITY PREMIUM',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-076EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076HC','HOUSING COSTS',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076IA','INDUSTRIAL ACCIDENT',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076ID','INDUSTRIAL DISEASE',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076LM','LABOUR MARKET ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-076MD','MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076PR','PREMIUMS',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-076RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076SF','FUNERAL',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076SM','MATERNITY',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076SU','SUSPENSIONS',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseSubType','BBA3','BBA3-076SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-076','Y'),
	 ('caseType','BBA3','BBA3-077','COUNCIL TAX BENEFIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-077AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077AS','ASYLUM',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-077BD','BACKDATING',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077CL','CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077DE','DATE OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077DP','DISABILITY PREMIUM/SEVERE DISABILITY PREMIUM',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-077GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077OL','OVERPAYMENT - SEEK RECOVERY FROM LANDLORD/LETTING',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-077PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077PR','PREMIUMS',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077SC','SANCTION APPLIED IN ONE PILOT',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077SR','SECOND ADULT REBATE',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077SU','SUSPENSIONS',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-077TB','TERMINATION OF BENEFIT - FAILURE TO PROVIDE FURTHE',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077TE','EXCEPTIONAL CIRCUMSTANCES PAYMENTS',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseSubType','BBA3','BBA3-077TO','EXCEPTIONAL HARDSHIP PAYMENTS',NULL,NULL,NULL,NULL,'caseType','BBA3-077','Y'),
	 ('caseType','BBA3','BBA3-079','MATERNITY BENEFIT/ALLOWANCES',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-079AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-079EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseSubType','BBA3','BBA3-079RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-079','Y'),
	 ('caseType','BBA3','BBA3082','RETIREMENT PENSION',NULL,NULL,NULL,NULL,NULL,NULL,'Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3082AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082CB','CONTRIBUTION RECORDS',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3082LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseSubType','BBA3','BBA3082RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3082','Y'),
	 ('caseType','BBA3','BBA3-085','SEVERE DISABLEMENT BENEFIT/ALLOWANCE',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-085AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085AT','ALL WORK TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-085CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-085OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseSubType','BBA3','BBA3-085RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-085','Y'),
	 ('caseType','BBA3','BBA3-088','SOCIAL FUND - MATERNITY',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-088AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-088EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-088RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088SF','FUNERAL',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseSubType','BBA3','BBA3-088SM','MATERNITY',NULL,NULL,NULL,NULL,'caseType','BBA3-088','Y'),
	 ('caseType','BBA3','BBA3-089','SOCIAL FUND - FUNERAL',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-089AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-089EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-089SF','FUNERAL',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseSubType','BBA3','BBA3-089SM','MATERNITY',NULL,NULL,NULL,NULL,'caseType','BBA3-089','Y'),
	 ('caseType','BBA3','BBA3-090','CHILDREN''S FUNERAL FUND FOR ENGLAND',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-090DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-090','Y'),
	 ('caseSubType','BBA3','BBA3-090FF','FUNERAL FUND',NULL,NULL,NULL,NULL,'caseType','BBA3-090','Y'),
	 ('caseType','BBA3','BBA3-091','VACCINE DAMAGE APPEALS',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-091AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-091DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseSubType','BBA3','BBA3-091RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-091','Y'),
	 ('caseType','BBA3','BBA3-094','BEREAVEMENT BENEFIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-094AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-094CB','CONTRIBUTION RECORDS',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-094OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseSubType','BBA3','BBA3-094RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-094','Y'),
	 ('caseType','BBA3','BBA3-095','BEREAVEMENT SUPPORT PAYMENT SCHEME',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-095CB','CONTRIBUTION RECORDS',NULL,NULL,NULL,NULL,'caseType','BBA3-095','Y'),
	 ('caseSubType','BBA3','BBA3-095CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-095','Y'),
	 ('caseSubType','BBA3','BBA3-095CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-095','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-095CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-095','Y'),
	 ('caseSubType','BBA3','BBA3-095DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-095','Y'),
	 ('caseSubType','BBA3','BBA3-095LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-095','Y'),
	 ('caseSubType','BBA3','BBA3-095OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-095','Y'),
	 ('caseSubType','BBA3','BBA3-095RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-095','Y'),
	 ('caseType','BBA3','BBA3-096','WORKING FAMILIES TAX CREDIT',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-096AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096CP','CIVIL PENALTIES',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-096CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-096RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseSubType','BBA3','BBA3-096RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-096','Y'),
	 ('caseType','BBA3','BBA3-099','OTHERS (EXTINCT/RARE BENEFITS)',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
	 ('caseSubType','BBA3','BBA3-099AA','INVALID',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099AS','ASYLUM',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099AT','ALL WORK TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099BW','BACK TO WORK BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099CC','CONDITIONS OF ENTITLEMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099CD','CARE (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099CE','CONDITIONS OF ENTITLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-099CF','CARE/MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099CL','CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099CM','CHILD MAINTENANCE BONUS',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099CR','CREDITS',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099CS','CHEST-PNEUMO'', ASBESTOS ETC',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099CT','COURT ACTION',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099CX','COMPLEX/MULTIPLE ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099DD','APPEAL DIRECTLY LODGED',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099DP','DISABILITY PREMIUM/SEVERE DISABILITY PREMIUM',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099DQ','DISABLEMENT QUESTION',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-099DX','DEATH OF AN APPELLANT',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099EC','ECHR',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099EX','EX LEGISLATION',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099GC','GOOD CAUSE',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099HB','STAYED HB APPEALS',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099HC','HOUSING COSTS',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099HI','HINCHY-RELATED STAYED APPEALS',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099HT','HABITUAL RESIDENCE TEST',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099IA','INDUSTRIAL ACCIDENT',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099ID','INDUSTRIAL DISEASE',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-099IQ','INCOME QUERY',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099JL','JOINT LIABILITY',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099LA','LIBERTY TO APPLY',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099LE','LATE (EXTENDING BACK)',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099LM','LABOUR MARKET ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099LT','LIVING TOGETHER',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099MD','MOBILITY (DLA)',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099MG','MINIMUM INCOME GUARANTEE',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099OC','OVERPAYMENT - CAPITAL',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099ON','ONE PROJECT',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-099OS','OVERPAYMENT - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099OX','OVERPAYMENT - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099PC','PROPERTY/CAPITAL SETTLEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099PD','STAYED PDD1',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099PF','PERSONS FROM ABROAD',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099PR','PREMIUMS',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099RA','RATE OF ASSESSMENT/PAYABILITY ISSUES',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099RB','REDUCED BENEFIT DIRECTION',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099RC','RATE OF ASSESSMENT/PAYABILITY ISSUES - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099RG','RECIPROCAL AGREEMENT',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y');
INSERT INTO case_type (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
	 ('caseSubType','BBA3','BBA3-099SD','STAYED CASES',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099SF','FUNERAL',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099SM','MATERNITY',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099SS','SELF EMPLOYED - STRAIGHTFORWARD',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099SU','SUSPENSIONS',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099SX','SELF EMPLOYED - COMPLEX',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y'),
	 ('caseSubType','BBA3','BBA3-099WB','STAYED WIDOW''S BENEFIT',NULL,NULL,NULL,NULL,'caseType','BBA3-099','Y');

CREATE TABLE cancellation_reasons (
categorykey varchar(64) NOT NULL,
serviceid varchar(16),
key varchar(64) NOT NULL,
value_en varchar(128) NOT NULL,
value_cy varchar(128),
hinttext_en varchar(512),
hinttext_cy varchar(512),
lov_order bigint,
parentcategory varchar(64),
parentkey varchar(64),
active varchar(1)
);

INSERT INTO cancellation_reasons (categorykey,serviceid,"key",value_en,value_cy,hinttext_en,hinttext_cy,lov_order,parentcategory,parentkey,active) VALUES
 ('CancellationReason','BBA3','withdrawn','Withdrawn',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
 ('CancellationReason','BBA3','struckOut','Struck Out',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
 ('CancellationReason','BBA3','partyUnableToAttend','Party Unable To Attend',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
 ('CancellationReason','BBA3','exclusion','Exclusion',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
 ('CancellationReason','BBA3','incompleteTribunal','Incomplete Tribunal',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
 ('CancellationReason','BBA3','listedInError','Listed In error',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
 ('CancellationReason','BBA3','other','Other',NULL,NULL,NULL,NULL,NULL,NULL,'Y');

CREATE TABLE hearing_type (
CategoryKey varchar(64) NOT NULL,
ServiceID	varchar(16),
Key	varchar(64)	NOT NULL,
Value_EN varchar(128) NOT NULL,
Value_CY varchar(128),
HintText_EN	varchar(512),
HintText_CY	varchar(512),
Lov_Order BIGINT,
ParentCategory varchar(64),
ParentKey	varchar(64),
Active varchar(1)
);

INSERT INTO hearing_type (CategoryKey,ServiceID,Key,Value_EN,Value_CY,HintText_EN,HintText_CY,Lov_Order,ParentCategory,ParentKey,Active) VALUES
('HearingType', 'BBA3', 'BBA3-substantive', 'Substantive', null, null , null, 1, null, null, 'Y'),
('HearingType', 'BBA3', 'BBA3-directionHearings', 'Direction Hearings', null, null, null, 2, null, null, 'Y'),
('HearingType', 'BBA3', 'BBA3-chambersOutcome', 'Chambers Outcome', null, null, null, 3, null, null, 'Y');

CREATE TABLE hearing_priority (
CategoryKey varchar(64) NOT NULL,
ServiceID	varchar(16),
Key	varchar(64)	NOT NULL,
Value_EN varchar(128) NOT NULL,
Value_CY varchar(128),
HintText_EN	varchar(512),
HintText_CY	varchar(512),
Lov_Order BIGINT,
ParentCategory varchar(64),
ParentKey	varchar(64),
Active varchar(1)
);

INSERT INTO hearing_priority (CategoryKey,ServiceID,Key,Value_EN,Value_CY,HintText_EN,HintText_CY,Lov_Order,ParentCategory,ParentKey,Active)
VALUES ('HearingPriority', null, 'normal', 'Normal', null, null , null, null, null, null, 'Y'),
('HearingPriority', null, 'high', 'High', null, null, null, null, null, null, 'Y'),
('HearingPriority', null, 'critical', 'Critical', null, null, null, null, null, null, 'Y'),
('HearingPriority', null, 'pending', 'Pending', null, null, null, null, null, null, 'Y');

CREATE TABLE flag_service(
	id bigint NOT NULL,
	service_id varchar(16) NOT NULL,
	hearing_relevant boolean NOT NULL,
	request_reason boolean NOT NULL,
	flag_code varchar(16) NOT NULL,
	constraint flag_service_pk primary key (id));

ALTER TABLE flag_service add CONSTRAINT flag_service_flag_code_fk FOREIGN KEY (flag_code)
REFERENCES flag_details (flag_code);

CREATE TABLE dataload_exception_records(
 id SERIAL NOT NULL,
 table_Name varchar(64),
 scheduler_name varchar(64) NOT NULL,
 scheduler_start_time timestamp NOT NULL,
 key varchar(256),
 field_in_error varchar(256),
 error_description varchar(512),
 updated_timestamp timestamp NOT NULL,
 row_id bigint,
 CONSTRAINT dataload_exception_records_pk PRIMARY KEY (ID)
);

CREATE TABLE dataload_schedular_audit(
  id serial NOT NULL,
  scheduler_name varchar(64) NOT NULL,
  file_name varchar(128),
  scheduler_start_time timestamp NOT NULL,
  scheduler_end_time timestamp,
  status varchar(32),
  CONSTRAINT dataload_schedular_audit_pk PRIMARY KEY (id)
);
