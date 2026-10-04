.class public abstract Lcom/transsion/camera/utils/FeatureSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG_DV_MODE_ADD_NO_ALGO_TEMPLATE:Z

.field public static final DEBUG_DV_MODE_FLING:Ljava/lang/Boolean;

.field public static final DEBUG_ENABLE_DVGL_RECORDING:Z

.field public static final DEBUG_ENABLE_DV_SDK:Z

.field public static final DEBUG_ENABLE_VSSGL_RECORDING:Z

.field public static final DEBUG_ENABLE_VSS_SDK:Z

.field public static final DEBUG_QUICK_SLEEP_ACTIVITY:Z

.field public static final DEBUG_VIDEO_PREVIEW_SIZE_TO_1440_X_1080:Z

.field private static final PLATFORM:Ljava/lang/String;

.field public static final SDBG_SELE_FINISH_PORTRAIT_REVIEW_ACTIVITY_HOME:I

.field public static final SDBG_SELF_KILL_BACK:I

.field public static final SDBG_SELF_KILL_HOME:I

.field public static final SHOW_ENHANCE_FACE_INFO:Z

.field public static final SYSTEM_CHARACTERISTICS:Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final sDbgPrevColor:F

.field public static final sDbgPrevFpsMax:I

.field public static final sDbgPrevSizeStr:Ljava/lang/String;

.field public static final sDbgReduceRecorderPreviewTempThresh:Z

.field public static final sDbgVideoDimTime:I

.field public static final sDbgVideoDimTime2:I

.field public static final sDbgVideoPowerSavingUI:Z

.field public static final sDbgVideoPowerSavingUITime:I

.field public static final sEnableFaceInfoDetect:Z

.field private static sIsDeveloperMode:Z

.field private static sIsDeveloperModeAtLaunch:Z

.field private static sLongPressAiKeyAwakeAssistant:I

.field public static final sReduceRecorderPreviewTempThresh:I

.field public static final sRenderFaceInfoToImage:Z

.field public static final sShowFaceInfoForever:Z

.field public static final sTranVideoYUVSuperNightEnable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FeatureSupport"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 32
    const-string v0, "debug.camera.prev.color"

    const-string v1, "-1"

    .line 33
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevColor:F

    .line 35
    const-string v0, "debug.camera.prev.size"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevSizeStr:Ljava/lang/String;

    .line 37
    const-string v0, "debug.camera.prev.fpsmax"

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevFpsMax:I

    .line 39
    const-string v0, "debug.camera.video_power_saving_ui"

    .line 40
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgVideoPowerSavingUITime:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_38

    move v0, v4

    goto :goto_39

    :cond_38
    move v0, v3

    .line 41
    :goto_39
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgVideoPowerSavingUI:Z

    .line 42
    const-string v0, "debug.camera.video_dim_time"

    .line 43
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgVideoDimTime:I

    .line 44
    const-string v0, "debug.camera.video_dim_time2"

    .line 45
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgVideoDimTime2:I

    .line 46
    const-string v0, "debug.camera.fhd60.prev30.tempthresh"

    .line 47
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/FeatureSupport;->sReduceRecorderPreviewTempThresh:I

    .line 48
    const-string v5, "debug.self_kill_home"

    invoke-static {v5, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/transsion/camera/utils/FeatureSupport;->SDBG_SELF_KILL_HOME:I

    .line 49
    const-string v5, "debug.self_kill_back"

    invoke-static {v5, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/transsion/camera/utils/FeatureSupport;->SDBG_SELF_KILL_BACK:I

    if-lez v0, :cond_67

    move v0, v4

    goto :goto_68

    :cond_67
    move v0, v3

    .line 50
    :goto_68
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sDbgReduceRecorderPreviewTempThresh:Z

    .line 51
    const-string v0, "debug.sel_finish_portrait_review_activity_home"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/FeatureSupport;->SDBG_SELE_FINISH_PORTRAIT_REVIEW_ACTIVITY_HOME:I

    .line 56
    const-string v0, "debug.camera.render_face_info_to_image"

    .line 57
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_7c

    move v0, v4

    goto :goto_7d

    :cond_7c
    move v0, v3

    :goto_7d
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sRenderFaceInfoToImage:Z

    .line 58
    const-string v0, "debug.camera.enable_face_info_detect"

    .line 59
    invoke-static {v0, v4}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_89

    move v0, v4

    goto :goto_8a

    :cond_89
    move v0, v3

    :goto_8a
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sEnableFaceInfoDetect:Z

    .line 60
    const-string v0, "debug.camera.show_face_info_forever"

    .line 61
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_96

    move v0, v4

    goto :goto_97

    :cond_96
    move v0, v3

    :goto_97
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sShowFaceInfoForever:Z

    .line 62
    const-string v0, "debug.camera.enable_tran_video_yuv_super_night"

    .line 63
    invoke-static {v0, v4}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_a3

    move v0, v4

    goto :goto_a4

    :cond_a3
    move v0, v3

    :goto_a4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/FeatureSupport;->sTranVideoYUVSuperNightEnable:Ljava/lang/Boolean;

    .line 65
    const-string v0, "debug.camera.debug_dv_mode_fling"

    invoke-static {v0, v3}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_b4

    move v0, v4

    goto :goto_b5

    :cond_b4
    move v0, v3

    :goto_b5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_DV_MODE_FLING:Ljava/lang/Boolean;

    .line 67
    const-string v0, "debug.camera.show_enhance_face_info"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_c5

    move v0, v4

    goto :goto_c6

    :cond_c5
    move v0, v3

    :goto_c6
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->SHOW_ENHANCE_FACE_INFO:Z

    .line 68
    const-string v0, "debug.camera.video_preview_size_to_1440x1080"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_d2

    move v0, v4

    goto :goto_d3

    :cond_d2
    move v0, v3

    :goto_d3
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_VIDEO_PREVIEW_SIZE_TO_1440_X_1080:Z

    .line 69
    const-string v0, "debug.camera.dvmode_add_no_algo_template"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_df

    move v0, v4

    goto :goto_e0

    :cond_df
    move v0, v3

    :goto_e0
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_DV_MODE_ADD_NO_ALGO_TEMPLATE:Z

    .line 70
    const-string v0, "debug.camera.enable_dv_sdk"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_ec

    move v0, v4

    goto :goto_ed

    :cond_ec
    move v0, v3

    :goto_ed
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_ENABLE_DV_SDK:Z

    .line 71
    const-string v0, "debug.camera.enable_dv_gl_recording"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_f9

    move v0, v4

    goto :goto_fa

    :cond_f9
    move v0, v3

    :goto_fa
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_ENABLE_DVGL_RECORDING:Z

    .line 72
    const-string v0, "debug.camera.enable_vss_sdk"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_106

    move v0, v4

    goto :goto_107

    :cond_106
    move v0, v3

    :goto_107
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_ENABLE_VSS_SDK:Z

    .line 73
    const-string v0, "debug.camera.enable_vss_gl_recording"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_113

    move v0, v4

    goto :goto_114

    :cond_113
    move v0, v3

    :goto_114
    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_ENABLE_VSSGL_RECORDING:Z

    .line 74
    const-string v0, "debug.camera.quick_sleep_activity"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_11f

    goto :goto_120

    :cond_11f
    move v4, v3

    :goto_120
    sput-boolean v4, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_QUICK_SLEEP_ACTIVITY:Z

    .line 127
    const-string v0, "ro.board.platform"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/FeatureSupport;->PLATFORM:Ljava/lang/String;

    .line 177
    const-string v0, "ro.build.characteristics"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/FeatureSupport;->SYSTEM_CHARACTERISTICS:Ljava/lang/String;

    .line 394
    sput-boolean v3, Lcom/transsion/camera/utils/FeatureSupport;->sIsDeveloperMode:Z

    .line 758
    sput v2, Lcom/transsion/camera/utils/FeatureSupport;->sLongPressAiKeyAwakeAssistant:I

    .line 796
    sput-boolean v3, Lcom/transsion/camera/utils/FeatureSupport;->sIsDeveloperModeAtLaunch:Z

    return-void
.end method

.method public static aiArtMuseumAIStylePreviewSkip()I
    .registers 2

    .line 721
    const-string v0, "debug.camera.ai_art_museum_preview_skip"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static aiArtMuseumDumpPreviewShot()Z
    .registers 3

    .line 725
    const-string v0, "debug.camera.ai_art_museum_dump_preview_shot"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static aiArtMuseumPreviewDisable()Z
    .registers 3

    .line 711
    const-string v0, "debug.camera.ai_art_museum_preview_disable"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static aiArtMuseumStubPreview()Z
    .registers 3

    .line 716
    const-string v0, "debug.camera.ai_art_museum_stub_preview"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static aiForceSaveRequest()Z
    .registers 3

    .line 698
    const-string v0, "debug.camera.ai_force_save_request"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static aigcLimitEnable()Z
    .registers 2

    .line 703
    const-string v0, "debug.camera.aigc_limit_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aigcStubService()Z
    .registers 2

    .line 707
    const-string v0, "debug.camera.aigc_stub_service"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static checkDeveloperModeAtLaunch()V
    .registers 1

    .line 802
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDeveloperMode()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sIsDeveloperModeAtLaunch:Z

    return-void
.end method

.method public static deviceIsOnSale()Z
    .registers 4

    .line 227
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFansOnSalePropName:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    sget-object v1, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceIsOnSale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static getAiRAwLiteBvDebug(I)I
    .registers 2

    .line 251
    const-string v0, "debug.camera.airaw_lite_bv_debug"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getAwbLockDebug(I)I
    .registers 2

    .line 694
    const-string v0, "debug.camera.awb_lock"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBestMomentDetectResult()I
    .registers 4

    .line 826
    const-string v0, "debug.camera.bestMomentDetectResult"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 827
    sget-object v1, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBestMomentDetectResult value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static getDbgSize(Ljava/lang/String;)Landroid/util/Size;
    .registers 5

    .line 667
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 671
    :cond_8
    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 672
    array-length v0, p0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_44

    const/4 v0, 0x0

    .line 673
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 674
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 675
    sget-object v1, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugSizeStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 676
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1

    .line 678
    :cond_44
    sget-object p0, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "error: debugSizeStr: values.length != 2"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDebugTurboFusionMode()I
    .registers 2

    .line 243
    const-string v0, "debug.camera.turbo_fusion_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getDefaultDataName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeferOnNextCapAfterJpeg(I)I
    .registers 2

    .line 769
    const-string v0, "debug.camera.deferOnNextcapAfterJpeg"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDocModeDebugIntensity()Ljava/lang/String;
    .registers 2

    .line 255
    const-string v0, "debug.camera.doc_mode_intensity"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnableDumpFirstFrame(I)I
    .registers 2

    .line 773
    const-string v0, "debug.camera.enableDumpFirstFrame"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFlashLimitDebug(I)I
    .registers 2

    .line 267
    const-string v0, "debug.camera.flash_limit_debug_value"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFlashSnapBandingDebugValue()I
    .registers 2

    .line 822
    const-string v0, "debug.camera.flash_snap_banidng_value"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFusionModeBVLimit()I
    .registers 2

    .line 305
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFusionModeBvLimitValue:I

    .line 306
    const-string v1, "debug.camera.fusion_mode_bv_limit"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGroupCaptureFaceRatioThreshold(Ljava/lang/String;)F
    .registers 2

    .line 744
    const-string v0, "debug.camera.group_capture_face_ratio_threshold"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 745
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getGroupCaptureFaceYawThreshold(Ljava/lang/String;)F
    .registers 2

    .line 749
    const-string v0, "debug.camera.group_capture_face_yaw_threshold"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 750
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getGroupCaptureLargeFaceRatioThreshold(Ljava/lang/String;)F
    .registers 2

    .line 734
    const-string v0, "debug.camera.group_capture_large_face_ratio_threshold"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 735
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getGroupCaptureLargeFaceYawThreshold(Ljava/lang/String;)F
    .registers 2

    .line 739
    const-string v0, "debug.camera.group_capture_large_face_yaw_threshold"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 740
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getGroupCaptureSteadyFaceResultThreshold(I)I
    .registers 2

    .line 754
    const-string v0, "debug.camera.group_capture_steady_face_result_threshold"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMarket()Ljava/lang/String;
    .registers 3

    .line 516
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    const-string v2, ""

    if-lt v0, v1, :cond_f

    .line 517
    const-string v0, "ro.tr_build.sw_market"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 519
    :cond_f
    const-string v0, "ro.tran.sw.market"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxGroupCaptureCount(I)I
    .registers 2

    .line 730
    const-string v0, "debug.camera.max_group_capture_count"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMotionCaptureBVThreshold()I
    .registers 2

    .line 789
    const-string v0, "debug.camera.motion_capture_bv"

    const/16 v1, -0x64

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOfflineBurstCaptureNumber()I
    .registers 2

    .line 793
    const-string v0, "debug.camera.burst_capture_number"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPostALgoBvDebug(I)I
    .registers 2

    .line 247
    const-string v0, "debug.camera.post_algo_bv"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getScreenShotThumbCropSize(Landroid/content/Context;)I
    .registers 2

    .line 300
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mScreenShotThumbnailCropSize:I

    .line 301
    const-string v0, "debug.camera.screen_shot_thumb_crop"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getShot2ShotPolicyPlatform()I
    .registers 2

    .line 652
    const-string v0, "ro.camera.photoscape.disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 653
    sget-object v0, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getShot2ShotPolicyPlatform: disable skip policy by ro.camera.photoscape.disable=1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 657
    :cond_12
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getDefaultShot2ShotPolicyPlatform()I

    move-result v0

    .line 656
    const-string v1, "debug.camera.Shot2Shot_Policy_Platform"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSuperResolutionDebug(I)I
    .registers 2

    .line 263
    const-string v0, "debug.camera.super_resolution_value"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSupportFoldUIType()I
    .registers 1

    .line 504
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportFoldUiType:I

    return v0
.end method

.method public static getSupportFoldUIType(Landroid/content/Context;)I
    .registers 1

    .line 500
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportFoldUiType:I

    return p0
.end method

.method public static getTaps2Mode()I
    .registers 5

    .line 855
    const-string v0, "debug.camera.tzservice.mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 856
    const-string v2, "ro.tr_camera.tzservice.mode"

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 857
    sget-object v2, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTaps2Mode: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz v0, :cond_31

    const/4 v2, 0x4

    if-gt v0, v2, :cond_31

    return v0

    :cond_31
    return v1
.end method

.method public static getVideoSuperNightBvDebug(I)I
    .registers 2

    .line 259
    const-string v0, "debug.camera.video_super_night_bv"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static initDeveloperMode(Landroid/content/Context;)V
    .registers 3

    .line 396
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getDefaultDataName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 397
    const-string v0, "key_developer_mode"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 398
    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/camera/utils/FeatureSupport;->sIsDeveloperMode:Z

    return-void
.end method

.method public static isAiKeySupportBurst()Z
    .registers 3

    .line 760
    sget v0, Lcom/transsion/camera/utils/FeatureSupport;->sLongPressAiKeyAwakeAssistant:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 762
    const-string v0, "ro.product.smart_button_awake_assistant_in_camera.support"

    .line 763
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/FeatureSupport;->sLongPressAiKeyAwakeAssistant:I

    .line 765
    :cond_e
    sget v0, Lcom/transsion/camera/utils/FeatureSupport;->sLongPressAiKeyAwakeAssistant:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    return v1

    :cond_14
    return v2
.end method

.method public static isAsdHitShow()Z
    .registers 2

    .line 320
    const-string v0, "debug.asd.hint.show"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isAutoMacroSwitchLogSupport()Z
    .registers 2

    .line 568
    const-string v0, "debug.camera.auto_macro_switch_log"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isContinuousShotSupport(Landroid/content/Context;)Z
    .registers 9

    .line 188
    const-string p0, "ro.tran_cam_cs_support"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 189
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousShotSupport:Z

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    const-string v3, "prop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", xmlValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-nez v1, :cond_27

    if-ne p0, v3, :cond_53

    .line 194
    :cond_27
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousShotSupportDependRam:I

    .line 195
    const-string v1, ", configDependRam: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MB"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gtz p0, :cond_3e

    :goto_3c
    move v0, v3

    goto :goto_53

    .line 199
    :cond_3e
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v4

    .line 200
    const-string v6, ", maxMemory: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v6, p0

    cmp-long p0, v6, v4

    if-gtz p0, :cond_53

    goto :goto_3c

    .line 204
    :cond_53
    :goto_53
    sget-object p0, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isContinuousShotSupport: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static isDeveloperMode()Z
    .registers 1

    .line 415
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sIsDeveloperMode:Z

    return v0
.end method

.method public static isDocModeDebugSupport()Z
    .registers 2

    .line 238
    const-string v0, "debug.camera.doc_mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isDoodle()Z
    .registers 2

    .line 512
    const-string v0, "sys.transsion.nvcolor"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Z47"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDumpToleranceSupport()Z
    .registers 3

    .line 343
    const-string v0, "cam.icap_dump_raw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public static isDumpVoiceSupport()Z
    .registers 2

    .line 310
    const-string v0, "debug.camera.dump_voice"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isEnhanceScreenBrightnessSupport()Z
    .registers 2

    .line 233
    const-string v0, "debug.camera.enhance_screen_brightness"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isExposureTouchLineSupport()Z
    .registers 2

    .line 647
    const-string v0, "debug.camera.exposure_touch_line_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isFansSupport()Z
    .registers 4

    .line 214
    const-string v0, "persist.sys.fans.support"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 215
    sget-object v1, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is FansSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static isFlashCalibrationOn()Z
    .registers 3

    .line 866
    const-string v0, "vendor.flash_calibration"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public static isFlashSnapBirdCaptureTimeLimited()Z
    .registers 2

    .line 850
    const-string v0, "persist.camera.debug_flash_snap_bird_time_limit_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isForceCloseAIMoonDetectSupport()Z
    .registers 2

    .line 684
    const-string v0, "debug.camera.close_ai_moon_detect"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isForceCloseAIRawLiteZSL()Z
    .registers 2

    .line 689
    const-string v0, "debug.camera.close_ai_raw_lite_zsl"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isForceCloseASDDetectSupport()Z
    .registers 2

    .line 603
    const-string v0, "debug.camera.close_asd_detect"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isForceCloseOfflineJNISupport()Z
    .registers 2

    .line 627
    const-string v0, "debug.camera.force_close_offlinejni"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isForceCloseP3Support()Z
    .registers 2

    .line 637
    const-string v0, "debug.camera.force_close_display_p3"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isForceCloseSATSupport()Z
    .registers 2

    .line 621
    const-string v0, "debug.camera.force_close_sat"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isForceCloseSkinOptimizationSupport()Z
    .registers 2

    .line 608
    const-string v0, "debug.camera.skin_optimization_debug_value"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isForceTaintDetectRemove()Z
    .registers 2

    .line 563
    const-string v0, "debug.camera.taint_detection_remove_surface"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isForceTaintDetectSupport()Z
    .registers 2

    .line 553
    const-string v0, "debug.camera.taint_detection"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isForceZoom10XForVideo()Z
    .registers 2

    .line 382
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 384
    const-string v1, "TECNO-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isFovCropSupport()Z
    .registers 5

    .line 352
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_98

    goto/16 :goto_92

    :sswitch_11
    const-string v1, "Infinix-PR652B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_92

    :cond_1b
    const/16 v4, 0xa

    goto/16 :goto_92

    :sswitch_1f
    const-string v1, "Infinix-X650D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_92

    :cond_29
    const/16 v4, 0x9

    goto/16 :goto_92

    :sswitch_2d
    const-string v1, "Infinix-X650C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_92

    :cond_37
    const/16 v4, 0x8

    goto/16 :goto_92

    :sswitch_3b
    const-string v1, "Infinix-X650B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_92

    :cond_44
    const/4 v4, 0x7

    goto :goto_92

    :sswitch_46
    const-string v1, "TECNO-KC8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_92

    :cond_4f
    const/4 v4, 0x6

    goto :goto_92

    :sswitch_51
    const-string v1, "TECNO-KC3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_92

    :cond_5a
    const/4 v4, 0x5

    goto :goto_92

    :sswitch_5c
    const-string v1, "TECNO-KC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_92

    :cond_65
    const/4 v4, 0x4

    goto :goto_92

    :sswitch_67
    const-string v1, "TECNO-CC6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_92

    :cond_70
    const/4 v4, 0x3

    goto :goto_92

    :sswitch_72
    const-string v1, "TECNO-KC2j"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto :goto_92

    :cond_7b
    const/4 v4, 0x2

    goto :goto_92

    :sswitch_7d
    const-string v1, "TECNO-PR651"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_92

    :cond_86
    move v4, v2

    goto :goto_92

    :sswitch_88
    const-string v1, "TECNO-PR651H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto :goto_92

    :cond_91
    move v4, v3

    :goto_92
    packed-switch v4, :pswitch_data_c6

    return v3

    :pswitch_96
    return v2

    nop

    :sswitch_data_98
    .sparse-switch
        -0x53e94bee -> :sswitch_88
        -0x3441550a -> :sswitch_7d
        -0x9f415d6 -> :sswitch_72
        0x7efc03c -> :sswitch_67
        0x7efde40 -> :sswitch_5c
        0x7efde41 -> :sswitch_51
        0x7efde46 -> :sswitch_46
        0x455ae9f1 -> :sswitch_3b
        0x455ae9f2 -> :sswitch_2d
        0x455ae9f3 -> :sswitch_1f
        0x59e6a6c9 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
    .end packed-switch
.end method

.method public static isGestureDetectDebugSupport()Z
    .registers 2

    .line 548
    const-string v0, "debug.camera.gesture_detect"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isIcapDumpSupport()Z
    .registers 3

    .line 347
    const-string v0, "persist.sys.cam.icap.shot2sho2.disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public static isInRuMarket()Z
    .registers 2

    .line 528
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMarket()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isInTrOrRuMarket()Z
    .registers 2

    .line 523
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMarket()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 524
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMarket()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method public static isLaunchWithDeveloperMode()Z
    .registers 1

    .line 806
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sIsDeveloperModeAtLaunch:Z

    return v0
.end method

.method public static isLinearMotorVibrate()Z
    .registers 2

    .line 593
    const-string v0, "ro.tr_vibrate.vibrate10.feature.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLowPlatform()Z
    .registers 2

    .line 372
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 373
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "itel-A632WM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public static isMtkPlatform()Z
    .registers 2

    .line 536
    sget-object v0, Lcom/transsion/camera/utils/FeatureSupport;->PLATFORM:Ljava/lang/String;

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNeedSendBroadcastToNfc()Z
    .registers 2

    .line 544
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "TECNO CN6c"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "TECNO KO5"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public static isOnlySupportTBHoverUI()Z
    .registers 2

    .line 490
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public static isOnlySupportTBHoverUI(Landroid/content/Context;)Z
    .registers 1

    .line 486
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI()Z

    move-result p0

    return p0
.end method

.method public static isOpenTaintDumpSupport()Z
    .registers 2

    .line 573
    const-string v0, "debug.camera.taint_dump"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isQrCodeDebugSupport()Z
    .registers 2

    .line 642
    const-string v0, "debug.camera.qrcode_recognize"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isQuickCaptureSupport()Z
    .registers 2

    .line 295
    const-string v0, "debug.camera.quick_capture_support"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isRaw10OfflineJNISupport()Z
    .registers 2

    .line 632
    const-string v0, "debug.camera.raw10_offlinejni"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isScreenShotThumbSupport()Z
    .registers 2

    .line 285
    const-string v0, "debug.camera.screen_shot_thumb_support"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSellingPointSupport()Z
    .registers 2

    .line 275
    const-string v0, "debug.camera.selling_point_support"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSleepActivitySupport()Z
    .registers 2

    .line 271
    const-string v0, "debug.camera.sleep_activity_support"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSmartFocusDebugSupport()Z
    .registers 2

    .line 598
    const-string v0, "debug.camera.smart_focus_detection"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSprdDumpRawSupport()Z
    .registers 3

    .line 339
    const-string v0, "sprd_dump_raw_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public static isSprdPlatform()Z
    .registers 2

    .line 532
    sget-object v0, Lcom/transsion/camera/utils/FeatureSupport;->PLATFORM:Ljava/lang/String;

    const-string v1, "ums"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "sp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportColumnOrBoth()Z
    .registers 3

    .line 494
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 495
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    return v1
.end method

.method public static isSupportFoldUI()Z
    .registers 1

    .line 472
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportFoldUI(Landroid/content/Context;)Z
    .registers 1

    .line 468
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI()Z

    move-result p0

    return p0
.end method

.method public static isSupportGenderDetection()Z
    .registers 2

    .line 558
    const-string v0, "debug.camera.force_show_gender_faceinfo"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSupportImageryGuideDebugEnable()Z
    .registers 3

    .line 832
    const-string v0, "debug.camera.imagery_guide_debug_url_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportPortraitArchitecture(Landroid/content/Context;)Z
    .registers 1

    .line 431
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitArchSupport:Z

    return p0
.end method

.method public static isSupportProcessRaw()Z
    .registers 4

    .line 815
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/cameradebug/motioncapture_support_process_raw"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 817
    :goto_16
    sget-object v1, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportProcessRaw enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static isSupportRecordingEffect()Z
    .registers 1

    .line 435
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingEffectSupport:Z

    return v0
.end method

.method public static isSupportSysKOMEnable()Z
    .registers 2

    .line 837
    const-string v0, "sys.telephony.kom.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSupportTranVibrate()Z
    .registers 2

    .line 588
    const-string v0, "ro.tr_vibrate.vibrate20.feature.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportVibrate(Landroid/content/Context;)Z
    .registers 3

    .line 578
    const-string v0, "is_open_vib3"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 579
    const-string v0, "ro.tr_vibrate.vibrate30.feature.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p0, :cond_17

    if-eqz v0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v1
.end method

.method public static isSystemBacklightV2()Z
    .registers 3

    .line 615
    const-string v0, "ro.transsion.backlight.opt.v2.override.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    .line 616
    const-string v0, "ro.tr_light.multi.scene.backlight.feature.support"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    return v2
.end method

.method public static isTabletDevice()Z
    .registers 2

    .line 846
    sget-object v0, Lcom/transsion/camera/utils/FeatureSupport;->SYSTEM_CHARACTERISTICS:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUserVersion()Z
    .registers 3

    .line 334
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const-string v0, "ro.vendor.tran.userroot"

    .line 335
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    return v2

    :cond_15
    return v1
.end method

.method public static isVersionTenOrHigher()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isVibrateWhenCloseTouch(Landroid/content/Context;)Z
    .registers 3

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v1
.end method

.method public static isVideoHDRDebugSupport()Z
    .registers 3

    .line 330
    const-string v0, "camera.livehdr.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public static isVlogSupportHardwareDecode()Z
    .registers 2

    .line 662
    const-string v0, "debug.vlog_support_hardware_decode"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setDumpFirstFrame(Ljava/lang/String;)V
    .registers 2

    .line 782
    :try_start_0
    const-string v0, "vendor.debug.camera.dumpFirstFrame"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public static setKOMCameraDebugEnable(Z)V
    .registers 2

    if-eqz p0, :cond_5

    .line 842
    const-string p0, "1"

    goto :goto_7

    :cond_5
    const-string p0, "0"

    :goto_7
    const-string v0, "debug.vendor.sys.camera_kom"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static shot2ShotMaxCountForHDR()I
    .registers 2

    .line 443
    const-string v0, "debug.camera.shot2ShotMaxCountForHDR"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shot2ShotMaxCountForLLHDR()I
    .registers 2

    .line 447
    const-string v0, "debug.camera.shot2ShotMaxCountForLLHDR"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shot2ShotMaxCountForMiddleNight()I
    .registers 2

    .line 459
    const-string v0, "debug.camera.shot2ShotMaxCountForMiddleNight"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shot2ShotMaxCountForNightLight()I
    .registers 2

    .line 451
    const-string v0, "debug.camera.shot2ShotMaxCountForNightLight"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shot2ShotMaxCountForSuperResolution()I
    .registers 2

    .line 463
    const-string v0, "debug.camera.shot2ShotMaxCountForSuperResolution"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shot2ShotMaxCountForTranNight()I
    .registers 2

    .line 455
    const-string v0, "debug.camera.shot2ShotMaxCountForTranNight"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shot2ShotPolicy()I
    .registers 2

    .line 439
    const-string v0, "debug.camera.shot2ShotPolicy"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shouldForceConvertNV21()Z
    .registers 3

    .line 390
    sget-object v0, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldForceConvertNV21 HARDWARE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    const-string v0, "mt6580"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldHideDeviceInfo()Z
    .registers 2

    .line 220
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isForceHideDeviceInfo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 223
    :cond_c
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isFansSupport()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->deviceIsOnSale()Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static updateDeveloperMode(Landroid/content/Context;Z)V
    .registers 3

    .line 402
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sIsDeveloperMode:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 405
    :cond_5
    sput-boolean p1, Lcom/transsion/camera/utils/FeatureSupport;->sIsDeveloperMode:Z

    .line 406
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getDefaultDataName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 407
    const-string v0, "key_developer_mode"

    if-eqz p1, :cond_19

    .line 408
    const-string p1, "on"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 410
    :cond_19
    invoke-virtual {p0, v0}, Lcom/tencent/mmkv/MMKV;->removeValueForKey(Ljava/lang/String;)V

    return-void
.end method

.method public static useHorizontalPopupStyle()Z
    .registers 1

    .line 423
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseHorizontalPopupStyle:Z

    return v0
.end method
