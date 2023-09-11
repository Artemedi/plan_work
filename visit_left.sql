
declare 
	  @p28 [int] = 551
	, @p30 [datetime] = '2023-09-07 00:00:00.000'
	, @p31 [uniqueidentifier] = '077c8a28-ef23-41ad-a056-8f8bab4a6c61'
SELECT 
	t0.VisitID
	, t0.type_
	, t0.AmbulanceEvent
	, t4.type_
	, t17.EntName
	, t4.AmbulanceCard
	, t18.Number
	, t18.Patient
	, t19.LastName
	, t19.FirstName
	, t19.FatherName
	, t19.Birthday
	, t18.CardLpu
	, t20.Name
	, t0.Post
	, t6.type_
	, t5.Worker
	, t22.FIO
	, t6.Speciality
	, t23.Name
	, t0.OutcomeRecord
	, t10.type_
	, t9.MKBCode
	, t12.Outcome
	, t11.Name
	, t14.Outcome
	, t13.Name
	, t15.MKBCode
	, t16.MKBCode
	, t9.Diagnosis
	, t0.VisitPurpose
	, t21.Code
	, t21.Name
FROM AKUZ.T_VISIT t0 
LEFT JOIN AKUZ.T_DOCTOR_INSPECTION_RE t3 ON t3.VisitID = t0.VisitID
LEFT JOIN AKUZ.T_DOCTOR_INSPECTION t1 ON t1.VisitID = t3.DoctorInspection
LEFT JOIN AKUZ.T_VISIT t2 ON t2.VisitID = t3.DoctorInspection 
LEFT JOIN AKUZ.T_EVENT_BASE t4 ON t4.EventID = t0.AmbulanceEvent 
LEFT JOIN VCLib.T_ENTITIES t17 ON t17.EntityID = t4.type_
LEFT JOIN AKUZ.T_AMBULANCE_CARD t18 ON t18.AmbulanceCardID = t4.AmbulanceCard
LEFT JOIN AKUZ.T_PATIENT t19 ON t19.PatientID = t18.Patient
LEFT JOIN AKUZ.T_LPU_MAIN t20 ON t20.LpuID = t18.CardLpu
LEFT JOIN AKUZ.T_POST t5 ON t5.ResourceID = t0.Post
LEFT JOIN AKUZ.T_RESOURCE t6 ON t6.ResourceID = t0.Post and t6.type_ in (501)
LEFT JOIN AKUZ.T_DIVISION t7 ON t7.DivisionID = t6.Division
LEFT JOIN AKUZ.T_BRANCH t8 ON t8.LpuID = t7.Branch
LEFT JOIN AKUZ.T_WORKER t22 ON t22.WorkerID = t5.Worker
LEFT JOIN AKUZ.T_SPECIALITY t23 ON t23.SpecialityID = t6.Speciality
LEFT JOIN AKUZ.T_OUTCOME_OF_INSPECTION t9 ON t9.MedicalRecordID = t0.OutcomeRecord
LEFT JOIN AKUZ.T_MEDICAL_RECORD t10 ON t10.MedicalRecordID = t0.OutcomeRecord 
LEFT JOIN AKUZ.T_OUTCOME_OF_CONSULTATION t12 ON t12.MedicalRecordID = t0.OutcomeRecord
LEFT JOIN AKUZ.T_OUTCOM_OF_INSPECTION t14 ON t14.MedicalRecordID = t0.OutcomeRecord
LEFT JOIN AKUZ.T_HOSPITAL_RECORD t15 ON t15.MedicalRecordID = t0.OutcomeRecord
LEFT JOIN AKUZ.T_MEDICAL_CERTIFICATE t16 ON t16.MedicalRecordID = t0.OutcomeRecord
LEFT JOIN VCLib.T_ENUMS t11 ON t11.EnumID = t12.Outcome
LEFT JOIN VCLib.T_ENUMS t13 ON t13.EnumID = t14.Outcome
LEFT JOIN AKUZ.T_VISIT_PURPOSE t21 ON t21.VisitPurposeID = t0.VisitPurpose
WHERE 
	(t0.type_ IN (580,505,558,581,647,545,664) 
	AND NOT EXISTS (SELECT *	
						FROM AKUZ.T_SCHET_SLUCH_116 t26 
							LEFT JOIN AKUZ.T_SCHET_SLUCH t27 ON t27.SchetSluchID = t26.SchetSluchID
						WHERE t27.Event=t0.VisitID
							OR t27.Event=t1.VisitID) 
	AND NOT t4.type_=@p28 
	AND EXISTS (SELECT * 
					FROM AKUZ.T_VISIT t29 
					WHERE t29.type_ IN (580,505,558,581,647,545,664) 
						AND t29.VisitDate>=@p30 
						AND t29.VisitDate<=@p30 
						AND t29.OutcomeRecord=t0.OutcomeRecord) 
	AND t8.LpuMain=@p31
	and t2.type_ in (505, 558, 581, 647, 545)
	and t4.type_ in (648, 561, 571, 945, 1320, 555, 552, 553, 554, 58270, 551, 965, 1153, 57086, 58215, 58399, 560, 584, 646, 1043, 57228, 58085, 60683, 544)
	and t10.type_ in (611, 58216, 543, 667, 946, 1053, 1110, 1192, 1198, 1239, 58082, 599));

