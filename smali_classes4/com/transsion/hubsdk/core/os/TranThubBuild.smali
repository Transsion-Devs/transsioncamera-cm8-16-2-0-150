.class public Lcom/transsion/hubsdk/core/os/TranThubBuild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;


# instance fields
.field private mTranBuild:Lcom/transsion/hubsdk/os/TranBuild;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranBuild()Lcom/transsion/hubsdk/os/TranBuild;
    .registers 2

    .line 561
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubBuild;->mTranBuild:Lcom/transsion/hubsdk/os/TranBuild;

    if-nez v0, :cond_b

    .line 562
    new-instance v0, Lcom/transsion/hubsdk/os/TranBuild;

    invoke-direct {v0}, Lcom/transsion/hubsdk/os/TranBuild;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubBuild;->mTranBuild:Lcom/transsion/hubsdk/os/TranBuild;

    .line 564
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubBuild;->mTranBuild:Lcom/transsion/hubsdk/os/TranBuild;

    return-object p0
.end method


# virtual methods
.method public getAicoreOfflineLlmSupport()I
    .registers 1

    .line 156
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AICORE_OFFLINE_LLM_SUPPORT:I

    return p0
.end method

.method public getApmLimitBlockModeSupport()I
    .registers 1

    .line 296
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_APM_LIMIT_BLOCK_MODE:I

    return p0
.end method

.method public getBoardPlatform()Ljava/lang/String;
    .registers 1

    .line 46
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->BOARD_PLATFORM:Ljava/lang/String;

    return-object p0
.end method

.method public getBuildDisplayId()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->BUILD_DISPLAY_ID:Ljava/lang/String;

    return-object p0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .registers 1

    .line 106
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->BUILD_NUMBER:Ljava/lang/String;

    return-object p0
.end method

.method public getChargingAnimationSupport()I
    .registers 1

    .line 271
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHARGING_ANIMATION_SUPPORT:I

    return p0
.end method

.method public getChargingAnimationWirePowerSupport()I
    .registers 1

    .line 276
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHARGING_ANIMATION_WIRE_POWER_SUPPORT:I

    return p0
.end method

.method public getChargingAnimationWirelessPowerSupport()I
    .registers 1

    .line 266
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHARGING_ANIMATION_WIRELESS_POWER_SUPPORT:I

    return p0
.end method

.method public getChargingPowerHideSupport()I
    .registers 1

    .line 286
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHARGING_POWER_HIDE_SUPPORT:I

    return p0
.end method

.method public getChildModeOpenSupport()I
    .registers 1

    .line 261
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHILD_MODE_OPEN:I

    return p0
.end method

.method public getChildmodeSupport()I
    .registers 1

    .line 136
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHILDMODE_SUPPORT:I

    return p0
.end method

.method public getDynamicallyStkIconSupport()I
    .registers 1

    .line 151
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_DYNAMICALLY_STK_ICON_SUPPORT:I

    return p0
.end method

.method public getFansOnSaleSupport()I
    .registers 1

    .line 116
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->SYS_FANS_ONSALE:I

    return p0
.end method

.method public getGeniexEntranceSupport()I
    .registers 1

    .line 71
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GENIEX_ENTRANCE_SUPPORT:I

    return p0
.end method

.method public getGeniexSupport()I
    .registers 1

    .line 66
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GENIEX_SUPPORT:I

    return p0
.end method

.method public getGotiiEntranceSupport()I
    .registers 1

    .line 76
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GOTII_ENTRANCE_SUPPORT:I

    return p0
.end method

.method public getKeyguardPovaThemeSupport()I
    .registers 1

    .line 291
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_KEYGUARD_POVA_THEME_SUPPORT:I

    return p0
.end method

.method public getKeyguardThemeSupport()I
    .registers 1

    .line 281
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_KEYGUARD_THEME_SUPPORT:I

    return p0
.end method

.method public getKolunGoSupport()I
    .registers 1

    .line 181
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_KOLUN_GO_SUPPORT:I

    return p0
.end method

.method public getKolunSupport()I
    .registers 1

    .line 176
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_KOLUN_SUPPORT:I

    return p0
.end method

.method public getNavbarOverride()Ljava/lang/String;
    .registers 1

    .line 547
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->NAV_BAR_OVERRIDE:Ljava/lang/String;

    return-object p0
.end method

.method public getNoteAiBgSupport()I
    .registers 1

    .line 341
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_AI_BG_SUPPORT:I

    return p0
.end method

.method public getNoteAiDrawSupport()I
    .registers 1

    .line 331
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_AI_DRAW_SUPPORT:I

    return p0
.end method

.method public getNoteCanvasSupport()I
    .registers 1

    .line 336
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_CANVAS_SUPPORT:I

    return p0
.end method

.method public getNoteFansLinkSupport()I
    .registers 1

    .line 346
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_FANS_LINK_SUPPORT:I

    return p0
.end method

.method public getNoteSuniaPenSupport()I
    .registers 1

    .line 351
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_SUNIA_PEN_SUPPORT:I

    return p0
.end method

.method public getOsCustomizedSplitScreenSupport()I
    .registers 1

    .line 121
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CUSTOMIZED_SPLIT_SCREEN_SUPPORT:I

    return p0
.end method

.method public getPlatform()I
    .registers 1

    .line 557
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubBuild;->getTranBuild()Lcom/transsion/hubsdk/os/TranBuild;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/os/TranBuild;->getPlatform()I

    move-result p0

    return p0
.end method

.method public getProductBrand()Ljava/lang/String;
    .registers 1

    .line 61
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->PRODUCT_BRAND:Ljava/lang/String;

    return-object p0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 1

    .line 11
    invoke-static {}, Lcom/transsion/hubsdk/os/TranBuild;->getSerial()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSysOobeCountry()Ljava/lang/String;
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubBuild;->getTranBuild()Lcom/transsion/hubsdk/os/TranBuild;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/os/TranBuild;->getOOBECountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSysUserExperience()Ljava/lang/String;
    .registers 1

    .line 56
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->SYS_USER_EXPERIRNCE:Ljava/lang/String;

    return-object p0
.end method

.method public getTranAiKeySupport()I
    .registers 1

    .line 356
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AI_KEY_SUPPORT:I

    return p0
.end method

.method public getTranAiSubtitlesSupport()I
    .registers 1

    .line 166
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AICORE_SUBTITLES_SUPPORT:I

    return p0
.end method

.method public getTranAicoreLlmSupport()I
    .registers 1

    .line 171
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AICORE_LLM_SUPPORT:I

    return p0
.end method

.method public getTranAirTransferSupport()Ljava/lang/String;
    .registers 1

    .line 386
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AIR_TRANSFER_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranAssistVoiceprint()Ljava/lang/String;
    .registers 1

    .line 216
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_VOICEPRINT_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranBom()Ljava/lang/String;
    .registers 1

    .line 81
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_BOM:Ljava/lang/String;

    return-object p0
.end method

.method public getTranChooserPrivacySupport()I
    .registers 1

    .line 477
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHOOSER_PRIVACY_SUPPORT:I

    return p0
.end method

.method public getTranCloudserverSupport()I
    .registers 1

    .line 517
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CLOUDSERVER_SUPPORT_EXT:I

    return p0
.end method

.method public getTranCutepetSupport()I
    .registers 1

    .line 391
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CUTEPET_SUPPORT:I

    return p0
.end method

.method public getTranDualSysSupport()I
    .registers 1

    .line 411
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_DUAL_SYS_SUPPORT:I

    return p0
.end method

.method public getTranDynamicbarSupport()I
    .registers 1

    .line 361
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_DYNAMICBAR_SUPPORT_EXT:I

    return p0
.end method

.method public getTranEyeCareSupport()I
    .registers 1

    .line 421
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_EYE_CARE_SUPPORT:I

    return p0
.end method

.method public getTranFlipScreenSupport()I
    .registers 1

    .line 376
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_FLIP_SCREEN_SUPPORT:I

    return p0
.end method

.method public getTranFoldableScreenSupport()I
    .registers 1

    .line 366
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_FOLDABLE_SCREEN_SUPPORT:I

    return p0
.end method

.method public getTranGameTpEsports10Support()I
    .registers 1

    .line 492
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GAME_TP_ESPORTS10_SUPPORT:I

    return p0
.end method

.method public getTranGameTpEsports20Support()I
    .registers 1

    .line 482
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GAME_TP_ESPORTS20_SUPPORT:I

    return p0
.end method

.method public getTranGameTpEsports30Support()I
    .registers 1

    .line 487
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GAME_TP_ESPORTS30_SUPPORT:I

    return p0
.end method

.method public getTranGlobalguideSupport()I
    .registers 1

    .line 537
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GLOBALGUIDE_SUPPORT:I

    return p0
.end method

.method public getTranHrSpo2Support()Ljava/lang/String;
    .registers 1

    .line 527
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_HR_SPO2_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranHrvStressSupport()Ljava/lang/String;
    .registers 1

    .line 532
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_HRV_STRESS_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranLedCamonSupport()I
    .registers 1

    .line 316
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_CAMON_SUPPORT:I

    return p0
.end method

.method public getTranLedControlCenterSupport()I
    .registers 1

    .line 306
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_CONTROL_CENTER_SUPPORT:I

    return p0
.end method

.method public getTranLedEllaSupport()I
    .registers 1

    .line 311
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_ELLA_SUPPORT:I

    return p0
.end method

.method public getTranLedGtSupport()I
    .registers 1

    .line 241
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_GT_SUPPORT:I

    return p0
.end method

.method public getTranLedHotSupport()I
    .registers 1

    .line 256
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_HOT_SUPPORT:I

    return p0
.end method

.method public getTranLedItelsSupport()I
    .registers 1

    .line 246
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_ITELS_SUPPORT:I

    return p0
.end method

.method public getTranLedNoteSupport()I
    .registers 1

    .line 251
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_NOTE_SUPPORT:I

    return p0
.end method

.method public getTranLedPovaSupport()I
    .registers 1

    .line 321
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_POVA_SUPPORT:I

    return p0
.end method

.method public getTranLedSparkSupport()I
    .registers 1

    .line 326
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_SPARK_SUPPORT:I

    return p0
.end method

.method public getTranLedSupport()I
    .registers 1

    .line 301
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_SUPPORT:I

    return p0
.end method

.method public getTranLightningMultiWindowSupport()I
    .registers 1

    .line 507
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LIGHTNING_MULTI_WINDOW_SUPPORT:I

    return p0
.end method

.method public getTranMistouchSupport()I
    .registers 1

    .line 497
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_MISTOUCH_SUPPORT:I

    return p0
.end method

.method public getTranOpenwithSupport()I
    .registers 1

    .line 467
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_OPENWITH_SUPPORT:I

    return p0
.end method

.method public getTranOperatorBookmarkSupport()I
    .registers 1

    .line 111
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_OPERATORBOOKMARK_SUPPORT:I

    return p0
.end method

.method public getTranOsType()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_OS_TYPE:Ljava/lang/String;

    return-object p0
.end method

.method public getTranOsVersion()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_OS_VERSION:Ljava/lang/String;

    return-object p0
.end method

.method public getTranPalmFind()Ljava/lang/String;
    .registers 1

    .line 96
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PALM_FIND_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranPalmFind120()Ljava/lang/String;
    .registers 1

    .line 101
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PALM_FIND_120_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranPrivacyHubSupport()I
    .registers 1

    .line 401
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PRIVACY_HUB_SUPPORT:I

    return p0
.end method

.method public getTranProductPersonalizedDisplayFlipSupport()I
    .registers 1

    .line 452
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PRODUCT_PERSONALIZED_DISPLAY_FLIP_SUPPORT:I

    return p0
.end method

.method public getTranPtRemoteLockSupport()I
    .registers 1

    .line 502
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PT_REMOTE_LOCK_SUPPORT:I

    return p0
.end method

.method public getTranRepairModeSupport()I
    .registers 1

    .line 406
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_REPAIR_MODE_SUPPORT:I

    return p0
.end method

.method public getTranScreenrecordMicScaleLevel()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SCREENRECORD_MIC_SCALE_LEVEL:I

    return p0
.end method

.method public getTranScreenrecordSrSaSupport()I
    .registers 1

    .line 441
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SCREENRECORD_SR_SA_SUPPORT:I

    return p0
.end method

.method public getTranScreenshotSupport()I
    .registers 1

    .line 371
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SCREENSHOT_SUPPORT:I

    return p0
.end method

.method public getTranSensorIrLedBack()Ljava/lang/String;
    .registers 1

    .line 426
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SENSOR_IR_LED_BACK:Ljava/lang/String;

    return-object p0
.end method

.method public getTranSliderPanelSupport()I
    .registers 1

    .line 436
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SLIDER_PANEL_SUPPORT_EXT:I

    return p0
.end method

.method public getTranSmartRecognitionSupport()I
    .registers 1

    .line 542
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SMART_RECOGNITION_SUPPORT:I

    return p0
.end method

.method public getTranSmartpanelSupport()I
    .registers 1

    .line 431
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SMARTPANEL_SUPPORT_EXT:I

    return p0
.end method

.method public getTranSpaceSaver()Ljava/lang/String;
    .registers 1

    .line 91
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SPACESAVER_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranSplitScreenSnapModeSupport()I
    .registers 1

    .line 131
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SPLIT_SCREEN_SNAP_MODE_SUPPORT:I

    return p0
.end method

.method public getTranSplitScreenTBSupport()I
    .registers 1

    .line 126
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SPLIT_SCREEN_TOP_BOTTOM:I

    return p0
.end method

.method public getTranStkAthenaSupport()I
    .registers 1

    .line 141
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_STK_ATHENA_SUPPORT:I

    return p0
.end method

.method public getTranStkMpesaSupport()I
    .registers 1

    .line 146
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_STK_MPESA_SUPPORT:I

    return p0
.end method

.method public getTranSwMarket()Ljava/lang/String;
    .registers 1

    .line 86
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SW_MARKET:Ljava/lang/String;

    return-object p0
.end method

.method public getTranUltraPowerSaveSupport()I
    .registers 1

    .line 472
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ULTRA_POWER_SAVE_SUPPORT:I

    return p0
.end method

.method public getTranVendorHrSpo2Timemillis()Ljava/lang/String;
    .registers 1

    .line 381
    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VENDOR_HR_SPO2_TIMEMILLIS:Ljava/lang/String;

    return-object p0
.end method

.method public getTranVendorVib30Support()Z
    .registers 1

    .line 416
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VENDOR_VIB30_SUPPORT_EXT:Z

    return p0
.end method

.method public getTranVibrate10Support()Z
    .registers 1

    .line 512
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VIBRATE10_SUPPORT_EXT:Z

    return p0
.end method

.method public getTranVibrate20Support()Z
    .registers 1

    .line 457
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VIBRATE20_SUPPORT_EXT:Z

    return p0
.end method

.method public getTrancareUxdetectorRestSupport()I
    .registers 1

    .line 161
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_TRANCARE_UXDETECTOR_REST_SUPPORT:I

    return p0
.end method

.method public getZeroScreenAiCardSupport()I
    .registers 1

    .line 552
    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ZEROSCREEN_AICARD_SUPPORT:I

    return p0
.end method

.method public isAssistOnlineSupport()Z
    .registers 1

    .line 191
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_ONLINE_SUPPORT:Z

    return p0
.end method

.method public isFaceIdHalSupport()Z
    .registers 1

    .line 16
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->IS_FACEID_HAL_SUPPORT:Z

    return p0
.end method

.method public isOmdHifiSupport()Z
    .registers 1

    .line 21
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->IS_OMD_HIFI_SUPPORT:Z

    return p0
.end method

.method public isTranAiphoneAnimation60hzSupport()Z
    .registers 1

    .line 206
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AIPHONE_ANIMATION_60HZ_SUPPORT:Z

    return p0
.end method

.method public isTranAiphoneSummarySupport()Z
    .registers 1

    .line 196
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AIPHONE_SUMMARY_SUPPORT:Z

    return p0
.end method

.method public isTranAiphoneSupport()Z
    .registers 1

    .line 201
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AIPHONE_SUPPORT:Z

    return p0
.end method

.method public isTranAssistHighpowerWakeupSupport()Z
    .registers 1

    .line 226
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_HIGHPOWER_WAKEUP_SUPPORT:Z

    return p0
.end method

.method public isTranAssistPowerWakeupSupport()Z
    .registers 1

    .line 236
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_POWER_WAKEUP_SUPPORT:Z

    return p0
.end method

.method public isTranAssistSupport()Z
    .registers 1

    .line 186
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_SUPPORT:Z

    return p0
.end method

.method public isTranAssistVoiceprintDynamicHotwordSupport()Z
    .registers 1

    .line 221
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_VOICEPRINT_DYNAMIC_HOTWORD_SUPPORT:Z

    return p0
.end method

.method public isTranAssistVowDualmicSupport()Z
    .registers 1

    .line 231
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_VOW_DUALMIC_SUPPORT:Z

    return p0
.end method

.method public isTranAssistVowSupport()Z
    .registers 1

    .line 211
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_VOW_SUPPORT:Z

    return p0
.end method

.method public isTranDragdropSupport()Z
    .registers 1

    .line 396
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_DRAGDROP_SUPPORT:Z

    return p0
.end method

.method public isTranRealvib05Support()Z
    .registers 1

    .line 522
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_REALVIB05_SUPPORT:Z

    return p0
.end method

.method public isTranVibrate30ZSupport()Z
    .registers 1

    .line 462
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VIBRATE30_Z_SUPPORT:Z

    return p0
.end method

.method public isVendorHifiSupport()Z
    .registers 1

    .line 26
    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->IS_VENDOR_HIFI_SUPPORT:Z

    return p0
.end method
