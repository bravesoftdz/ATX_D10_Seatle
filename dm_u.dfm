object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 891
  Width = 1011
  object ADO: TADOConnection
    CommandTimeout = 20
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=ATX_UVD;Data Source=IVC1-LEBEDEVAV;'
    ConnectionTimeout = 10
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 8
  end
  object StoredProc1: TADOStoredProc
    Connection = ADO
    CommandTimeout = 0
    Parameters = <>
    Left = 16
    Top = 56
  end
  object ADOLidr: TADOStoredProc
    CacheSize = 50
    Connection = ADO
    AfterPost = ADOLidrAfterPost
    AfterDelete = ADOLidrAfterPost
    AfterScroll = ADOLidrAfterScroll
    OnPostError = ADOLidrPostError
    Parameters = <>
    Left = 112
    Top = 40
  end
  object ds_libr: TDataSource
    DataSet = ADOLidr
    Left = 160
    Top = 40
  end
  object ado_reg: TADOTable
    Connection = ADO
    TableName = 'tRegion'
    Left = 120
    Top = 112
  end
  object ado_div: TADOTable
    Connection = ADO
    TableName = 'tDivision'
    Left = 120
    Top = 160
  end
  object ado_depart: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tDepart'
    Left = 120
    Top = 208
  end
  object ado_pre: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tPre_Depart'
    Left = 120
    Top = 256
  end
  object ado_serv: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tServices'
    Left = 120
    Top = 304
  end
  object ado_mark: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tMark_avt'
    Left = 120
    Top = 352
  end
  object ado_source: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tSource_fin'
    Left = 120
    Top = 400
  end
  object ado_type: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tType_body'
    Left = 120
    Top = 448
  end
  object ado_tech: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tTech'
    Left = 120
    Top = 496
  end
  object ado_group: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tGroup_used'
    Left = 120
    Top = 544
  end
  object ds_reg: TDataSource
    DataSet = ado_reg
    Left = 176
    Top = 112
  end
  object ds_div: TDataSource
    DataSet = ado_div
    Left = 176
    Top = 160
  end
  object ds_depart: TDataSource
    DataSet = ado_depart
    Left = 176
    Top = 208
  end
  object ds_pre: TDataSource
    DataSet = ado_pre
    Left = 176
    Top = 256
  end
  object ds_serv: TDataSource
    DataSet = ado_serv
    Left = 176
    Top = 304
  end
  object ds_mark: TDataSource
    DataSet = ado_mark
    Left = 176
    Top = 352
  end
  object ds_source: TDataSource
    DataSet = ado_source
    Left = 176
    Top = 400
  end
  object ds_type: TDataSource
    DataSet = ado_type
    Left = 176
    Top = 448
  end
  object ds_tech: TDataSource
    DataSet = ado_tech
    Left = 176
    Top = 496
  end
  object ds_group: TDataSource
    DataSet = ado_group
    Left = 176
    Top = 544
  end
  object SP_Report: TADOStoredProc
    Connection = ADO
    AfterScroll = SP_ReportAfterScroll
    Parameters = <>
    Left = 240
    Top = 40
  end
  object DS_Report: TDataSource
    DataSet = SP_Report
    Left = 240
    Top = 88
  end
  object ADOCom1: TADOCommand
    Connection = ADO
    Parameters = <>
    Left = 248
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = StoredProc1
    Left = 16
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = Proc_ListAvt
    Left = 8
    Top = 208
  end
  object Proc_ListAvt: TADOStoredProc
    CacheSize = 50
    Connection = ADO
    Parameters = <>
    Left = 16
    Top = 160
  end
  object tAvto: TADOStoredProc
    CacheSize = 50
    Connection = ADO
    LockType = ltPessimistic
    MarshalOptions = moMarshalModifiedOnly
    BeforeEdit = tAvtoBeforeEdit
    BeforePost = tAvtoBeforePost
    AfterPost = tAvtoAfterPost
    AfterDelete = tAvtoAfterDelete
    AfterScroll = tAvtoAfterScroll
    OnPostError = tAvtoPostError
    OnFetchProgress = tAvtoFetchProgress
    Parameters = <>
    Prepared = True
    Left = 400
    Top = 48
  end
  object tMark_avt: TADOTable
    Connection = ADO
    IndexFieldNames = 'id'
    TableName = 'tMark_avt'
    Left = 400
    Top = 96
  end
  object tRegion: TADOTable
    Connection = ADO
    TableName = 'tRegion'
    Left = 400
    Top = 144
  end
  object tDivision: TADOTable
    Connection = ADO
    TableName = 'tDivision'
    Left = 400
    Top = 192
  end
  object tDepart: TADOTable
    Connection = ADO
    TableName = 'tDepart'
    Left = 408
    Top = 248
  end
  object tPre_depart: TADOTable
    Connection = ADO
    TableName = 'tPre_Depart'
    Left = 408
    Top = 296
  end
  object tServices: TADOTable
    Connection = ADO
    TableName = 'tServices'
    Left = 408
    Top = 344
  end
  object tGroup_used: TADOTable
    Connection = ADO
    TableName = 'tGroup_used'
    Left = 312
    Top = 352
  end
  object tTech: TADOTable
    Connection = ADO
    TableName = 'tTech'
    Left = 312
    Top = 312
  end
  object tType_body: TADOTable
    Connection = ADO
    TableName = 'tType_body'
    Left = 320
    Top = 256
  end
  object tSource_fin: TADOTable
    Connection = ADO
    TableName = 'tSource_fin'
    Left = 328
    Top = 192
  end
  object dss_avto: TDataSource
    DataSet = tAvto
    Left = 640
    Top = 48
  end
  object dss_mark: TDataSource
    DataSet = tMark_avt
    Left = 640
    Top = 96
  end
  object dss_reg: TDataSource
    DataSet = tRegion
    Left = 640
    Top = 144
  end
  object dss_div: TDataSource
    DataSet = tDivision
    Left = 640
    Top = 192
  end
  object dss_dep: TDataSource
    DataSet = tDepart
    Left = 656
    Top = 232
  end
  object dss_pred: TDataSource
    DataSet = tPre_depart
    Left = 648
    Top = 296
  end
  object dss_serv: TDataSource
    DataSet = tServices
    Left = 640
    Top = 336
  end
  object dss_group: TDataSource
    DataSet = tGroup_used
    Left = 544
    Top = 288
  end
  object dss_tech: TDataSource
    DataSet = tTech
    Left = 544
    Top = 240
  end
  object dss_type_b: TDataSource
    DataSet = tType_body
    Left = 544
    Top = 192
  end
  object dss_source_f: TDataSource
    DataSet = tSource_fin
    Left = 544
    Top = 144
  end
  object StoredProc2: TADOStoredProc
    Connection = ADO
    Parameters = <>
    Left = 16
    Top = 264
  end
  object StoredProc3: TADOStoredProc
    Connection = ADO
    Parameters = <>
    Left = 16
    Top = 312
  end
  object DS_sp_r2: TDataSource
    DataSet = ADOTable1
    Left = 456
    Top = 512
  end
  object ADOTable1: TADOTable
    Connection = ADO
    Left = 400
    Top = 512
  end
  object DS_sp_r3: TDataSource
    DataSet = ADOTable2
    Left = 744
    Top = 352
  end
  object ADOTable2: TADOTable
    Connection = ADO
    Left = 736
    Top = 304
  end
  object Q1: TADOQuery
    Connection = ADO
    Parameters = <>
    Left = 728
    Top = 56
  end
  object Q2: TADOQuery
    Connection = ADO
    Parameters = <>
    Left = 728
    Top = 112
  end
  object Q3: TADOQuery
    Connection = ADO
    Parameters = <>
    Left = 728
    Top = 176
  end
  object Q4: TADOQuery
    Connection = ADO
    Parameters = <>
    Left = 728
    Top = 240
  end
  object ado_dislok: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tDislokation'
    Left = 232
    Top = 496
  end
  object ds_dislok: TDataSource
    DataSet = ado_dislok
    Left = 288
    Top = 496
  end
  object tDislokation: TADOTable
    Connection = ADO
    TableName = 'tDislokation'
    Left = 400
    Top = 400
  end
  object dss_dislok: TDataSource
    DataSet = tDislokation
    Left = 640
    Top = 400
  end
  object ADOLidr2: TADOStoredProc
    CacheSize = 50
    Connection = ADO
    BeforePost = ADOLidr2BeforePost
    AfterPost = ADOLidrAfterPost
    AfterDelete = ADOLidrAfterPost
    AfterScroll = ADOLidr2AfterScroll
    OnPostError = ADOLidr2PostError
    Parameters = <>
    Left = 112
  end
  object ds_libr2: TDataSource
    DataSet = ADOLidr2
    Left = 160
  end
  object tModel_avt: TADOTable
    Connection = ADO
    TableName = 'tModel_avt'
    Left = 400
    Top = 464
  end
  object dss_model: TDataSource
    DataSet = tModel_avt
    Left = 544
    Top = 336
  end
  object dss_hist: TDataSource
    DataSet = tHistoryExchange
    Left = 536
    Top = 48
  end
  object tHistoryExchange: TADOTable
    Connection = ADO
    TableName = 'tHistoryExchange'
    Left = 480
    Top = 48
  end
  object dss_pered: TDataSource
    DataSet = tPeredacha
    Left = 544
    Top = 96
  end
  object tPeredacha: TADOTable
    Connection = ADO
    TableName = 'tPeredacha'
    Left = 480
    Top = 104
  end
  object tSettingProgramm: TADOTable
    Connection = ADO
    TableName = 'tSettingProgramm'
    Left = 312
    Top = 24
  end
  object tBaseNormGsm: TADOTable
    Connection = ADO
    TableName = 'tBaseNormGsm'
    Left = 240
    Top = 256
  end
  object dss_basenorm: TDataSource
    DataSet = tBaseNormGsm
    Left = 240
    Top = 320
  end
  object tMarkGSM: TADOTable
    Connection = ADO
    TableName = 'tMarkGSM'
    Left = 392
    Top = 568
  end
  object dss_markGsm: TDataSource
    DataSet = tMarkGSM
    Left = 464
    Top = 568
  end
  object tYearExplBig: TADOTable
    Connection = ADO
    TableName = 'tYearExplBig'
    Left = 536
    Top = 560
  end
  object tYearExpl: TADOTable
    Connection = ADO
    TableName = 'tYearExpl'
    Left = 536
    Top = 496
  end
  object dss_yearexpl: TDataSource
    DataSet = tYearExpl
    Left = 600
    Top = 496
  end
  object dss_yearexplbig: TDataSource
    DataSet = tYearExplBig
    Left = 600
    Top = 560
  end
  object tPlaceRemont: TADOTable
    Connection = ADO
    TableName = 'tPlaceRemont'
    Left = 488
    Top = 400
  end
  object tVidRemont: TADOTable
    Connection = ADO
    TableName = 'tVidRemont'
    Left = 552
    Top = 400
  end
  object dss_placerem: TDataSource
    DataSet = tPlaceRemont
    Left = 488
    Top = 456
  end
  object dss_vidrem: TDataSource
    DataSet = tVidRemont
    Left = 552
    Top = 440
  end
  object StoredProc_akb: TADOStoredProc
    Connection = ADO
    Parameters = <>
    Left = 32
    Top = 416
  end
  object dss_akb: TDataSource
    DataSet = StoredProc_akb
    Left = 32
    Top = 464
  end
  object dss_shin: TDataSource
    DataSet = StoredProc_shin
    Left = 32
    Top = 600
  end
  object StoredProc_shin: TADOStoredProc
    Connection = ADO
    Parameters = <>
    Left = 32
    Top = 528
  end
  object storedProc_ShinProbeg: TADOStoredProc
    Connection = ADO
    Parameters = <>
    Left = 248
    Top = 568
  end
  object dss_ShinProbeg: TDataSource
    DataSet = storedProc_ShinProbeg
    Left = 248
    Top = 616
  end
  object tInsureCompany: TADOTable
    Connection = ADO
    TableName = 'tInsureCompany'
    Left = 704
    Top = 504
  end
  object dss_insure_company: TDataSource
    DataSet = tInsureCompany
    Left = 768
    Top = 504
  end
  object ADOQuery1: TADOQuery
    Connection = ADO
    Parameters = <
      item
        Name = 'par0'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'par1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'par2'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'par3'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select id, norm as name from tBaseNormGsm where id_mark=:par0 an' +
        'd id_model in (select id from tModel_avt where id_mark=:par1 and' +
        ' name=:par2) and id_gsm=:par3')
    Left = 400
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery1
    Left = 472
  end
  object tTypePay: TADOTable
    Connection = ADO
    TableName = 'tTypePay'
    Left = 472
    Top = 192
  end
  object dss_typePay: TDataSource
    DataSet = tTypePay
    Left = 472
    Top = 248
  end
  object ado_model: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    IndexFieldNames = 'id_mark'
    MasterFields = 'id'
    MasterSource = ds_mark
    TableName = 'tModel_avt'
    Left = 240
    Top = 408
  end
  object ds_model: TDataSource
    DataSet = ado_model
    Left = 296
    Top = 408
  end
  object tTypeTC: TADOTable
    Connection = ADO
    IndexFieldNames = 'id'
    TableName = 'tTypeTC'
    Left = 416
    Top = 632
  end
  object dss_typeTc: TDataSource
    DataSet = tTypeTC
    Left = 480
    Top = 632
  end
  object ado_typetc: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tTypeTC'
    Left = 104
    Top = 600
  end
  object ds_typetc: TDataSource
    DataSet = ado_typetc
    Left = 160
    Top = 600
  end
  object ado_preserv: TADOTable
    Connection = ADO
    LockType = ltPessimistic
    TableName = 'tPre_Services'
    Left = 120
    Top = 712
  end
  object ds_preserv: TDataSource
    DataSet = ado_preserv
    Left = 184
    Top = 712
  end
  object dss_preserv: TDataSource
    DataSet = tPreServ
    Left = 656
    Top = 688
  end
  object tPreServ: TADOTable
    Connection = ADO
    TableName = 'tPre_Services'
    Left = 600
    Top = 688
  end
  object tShina_R: TADOTable
    Connection = ADO
    IndexFieldNames = 'id'
    TableName = 'tShina_R'
    Left = 840
    Top = 56
  end
  object tShina_Konst: TADOTable
    Connection = ADO
    IndexFieldNames = 'id'
    TableName = 'tShina_Konst'
    Left = 840
    Top = 120
  end
  object tShina_Type: TADOTable
    Connection = ADO
    IndexFieldNames = 'id'
    TableName = 'tShina_Type'
    Left = 848
    Top = 184
  end
  object dss_sh_r: TDataSource
    DataSet = tShina_R
    Left = 912
    Top = 64
  end
  object dss_sh_k: TDataSource
    DataSet = tShina_Konst
    Left = 920
    Top = 128
  end
  object dss_sh_t: TDataSource
    DataSet = tShina_Type
    Left = 920
    Top = 192
  end
  object tShina_Limit: TADOTable
    Connection = ADO
    TableName = 'tShina_Limit'
    Left = 856
    Top = 272
  end
  object dss_shina_limit: TDataSource
    DataSet = tShina_Limit
    Left = 928
    Top = 272
  end
  object storedProc_ShinProbegShort: TADOStoredProc
    Connection = ADO
    Parameters = <>
    Left = 256
    Top = 688
  end
  object dss_ShinProbegShort: TDataSource
    DataSet = storedProc_ShinProbegShort
    Left = 368
    Top = 696
  end
  object ADOQuery3: TADOQuery
    Connection = ADO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idd'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  dbo.tRegion.name, dbo.tDivision.name AS Expr1, dbo.tDepa' +
        'rt.name AS Expr2, dbo.tPre_Depart.name AS Expr3, '
      'dbo.tServices.name AS Expr6, dbo.tPre_Services.name AS Expr6p,'
      
        '                      dbo.tMark_avt.name + '#39' - '#39' + dbo.tAvto.mod' +
        'el AS mark, dbo.tAvto.numb_1, '
      'dbo.tShina_R.name as name_r,'
      'dbo.tShina.razmer,'
      'dbo.tShina_Konst.name as name_k,'
      'dbo.tShina_Type.name as name_t,'
      ''
      'dbo.tShina.number,'
      'SUM(val) as probeg ,'
      
        'lim_value, dbo.tShinaAvt.id_avt,dbo.tShinaAvt.date2,dbo.tShina.i' +
        'd'
      ''
      'FROM         '
      'dbo.tShinaAvt'
      
        '  left join dbo.tShinaProbeg  on dbo.tShinaProbeg.id_shin=dbo.tS' +
        'hinaAvt.id_shin and dbo.tShinaProbeg.id_avt=dbo.tShinaAvt.id_avt'
      '  left join dbo.tShina on dbo.tShina.id=dbo.tShinaAvt.id_shin'
      '  left join dbo.tShina_R on dbo.tShina_R.id=dbo.tShina.id_r'
      
        '  left join dbo.tShina_Konst on dbo.tShina_Konst.id=dbo.tShina.i' +
        'd_k'
      
        '  left join dbo.tShina_Type on dbo.tShina_Type.id=dbo.tShina.id_' +
        't'
      
        '  inner join dbo.tAvto on tAvto.id=dbo.tShinaAvt.id_avt and tAvt' +
        'o.id=dbo.tShinaAvt.id_avt'
      '  INNER JOIN'
      
        '                      dbo.tRegion ON dbo.tAvto.id_region = dbo.t' +
        'Region.id INNER JOIN'
      
        '                      dbo.tDivision ON dbo.tAvto.id_division = d' +
        'bo.tDivision.id INNER JOIN'
      
        '                      dbo.tDepart ON dbo.tAvto.id_depart = dbo.t' +
        'Depart.id INNER JOIN'
      
        '                      dbo.tServices ON dbo.tAvto.id_serv = dbo.t' +
        'Services.id left JOIN'
      
        '                      dbo.tPre_Services ON dbo.tAvto.id_preserv ' +
        '= dbo.tPre_Services.id INNER JOIN'
      
        '                      dbo.tMark_avt ON dbo.tAvto.id_mark = dbo.t' +
        'Mark_avt.id INNER JOIN'
      
        '                      dbo.tDislokation ON dbo.tAvto.id_dislok = ' +
        'dbo.tDislokation.id LEFT OUTER JOIN'
      
        '                      dbo.tPre_Depart ON dbo.tAvto.id_predepart ' +
        '= dbo.tPre_Depart.id LEFT OUTER JOIN'
      
        '                      dbo.tGroup_used ON dbo.tAvto.id_group = db' +
        'o.tGroup_used.id LEFT OUTER JOIN'
      '                      '
      #9#9#9#9#9#9'dbo.tTypeTC ON dbo.tAvto.id_typetc = dbo.tTypeTC.id'
      
        'left join tModel_avt ON tModel_avt.id_mark = tMark_avt.id and tA' +
        'vto.model=tModel_avt.name'
      ''
      'left join dbo.tShina_Limit on '
      '  id_shina_r=dbo.tShina_R.id and'
      '      id_shina_konst=dbo.tShina_Konst.id and'
      '      id_shina_type=dbo.tShina_Type.id'
      ''
      ''
      ' where tShina.date1 is null and tAvto.id=:idd'
      ' '
      
        ' group by dbo.tShina.id, dbo.tRegion.name, dbo.tDivision.name, d' +
        'bo.tDepart.name, dbo.tPre_Depart.name, dbo.tServices.name, dbo.t' +
        'Pre_Services.name,'
      
        '                      dbo.tMark_avt.name,dbo.tAvto.model, dbo.tA' +
        'vto.numb_1,'
      'dbo.tShina_R.name,'
      'dbo.tShina.razmer,'
      'dbo.tShina_Konst.name,'
      'dbo.tShina_Type.name,'
      ''
      'dbo.tShina.number,'
      'dbo.tShinaAvt.id_avt,lim_value,dbo.tShinaAvt.date2 '
      
        'ORDER BY tRegion.name, tDivision.name, tDepart.name, tPre_Depart' +
        '.name, tServices.name,dbo.tPre_Services.name')
    Left = 904
    Top = 640
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery3
    Left = 896
    Top = 696
  end
  object tOut_state: TADOTable
    Connection = ADO
    IndexFieldNames = 'id_out_state'
    TableName = 'tOut_state'
    Left = 856
    Top = 384
  end
  object dss_out_state: TDataSource
    DataSet = tOut_state
    Left = 920
    Top = 384
  end
  object tTypeDVC: TADOTable
    Connection = ADO
    TableName = 'tTypeDVC'
    Left = 472
    Top = 696
  end
  object dss_typeDVC: TDataSource
    DataSet = tTypeDVC
    Left = 528
    Top = 696
  end
  object tManufactureTC: TADOTable
    Connection = ADO
    TableName = 'tManufactureTC'
    Left = 440
    Top = 760
  end
  object dss_ManufactureTC: TDataSource
    DataSet = tManufactureTC
    Left = 536
    Top = 760
  end
  object ado_typeDVC: TADOTable
    Connection = ADO
    TableName = 'tTypeDVC'
    Left = 56
    Top = 784
  end
  object ado_manufactureTC: TADOTable
    Connection = ADO
    TableName = 'tManufactureTC'
    Left = 112
    Top = 784
  end
  object ds_typeDVC: TDataSource
    DataSet = ado_typeDVC
    Left = 200
    Top = 784
  end
  object ds_manufactureTC: TDataSource
    DataSet = ado_manufactureTC
    Left = 264
    Top = 784
  end
  object dss_dtp: TDataSource
    DataSet = StoredProc_dtp
    Left = 928
    Top = 504
  end
  object StoredProc_dtp: TADOStoredProc
    Connection = ADO
    Parameters = <>
    Left = 920
    Top = 560
  end
end
