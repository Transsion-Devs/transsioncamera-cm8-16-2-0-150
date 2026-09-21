.class public Lcom/transsion/camera/feature/mode/macro/MacroMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsWideCamUISupport:Z

.field private mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

.field private mMacroZoomLens:[Ljava/lang/String;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$PeUwtjVfirk1AFcn2_YJkuOmYyQ(Lcom/transsion/camera/feature/mode/macro/MacroMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/macro/MacroMode;->lambda$onSettingChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mhNoWHJLysSlEwtBBP1cEmS5154(Lcom/transsion/camera/feature/mode/macro/MacroMode;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/macro/MacroMode;->lambda$onCameraStateChanged$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MacroMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private initUI(Ljava/lang/String;)V
    .registers 5

    .line 59
    new-instance v0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    return-void
.end method

.method private synthetic lambda$onCameraStateChanged$0(I)V
    .registers 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_31

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMacroSupportZoomForMainCam:Z

    if-eqz p1, :cond_c

    goto :goto_31

    .line 71
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p1, :cond_18

    .line 73
    sget-object p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onCameraStateChanged deviceControl is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_18
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    if-eqz v0, :cond_29

    .line 78
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->hideHint()V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->showHint(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_29
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/macro/MacroMode;->initUI(Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->showHint(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method

.method private synthetic lambda$onSettingChanged$1()V
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    if-eqz p0, :cond_7

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->hideHint()V

    :cond_7
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 172
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 2

    .line 177
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method protected currentModeNeedNewCaptureAnimation()Z
    .registers 2

    .line 227
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSupportNewCaptureAnimation:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    .line 228
    :cond_d
    :goto_d
    sget-object p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "currentModeNeedNewCaptureAnimation : false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 21

    move-object/from16 v0, p0

    .line 236
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroZoomLens:[Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_c
    new-instance v1, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    .line 241
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v5

    .line 247
    sget v6, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v7, v6

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v8, v6

    .line 248
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v6, v6

    .line 249
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v2

    mul-float/2addr v6, v2

    float-to-int v2, v6

    .line 251
    sget v6, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    .line 252
    sget v9, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_5X:I

    const/4 v10, 0x0

    move v11, v10

    .line 254
    :goto_3e
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroZoomLens:[Ljava/lang/String;

    array-length v13, v12

    const/4 v15, 0x1

    if-ge v11, v13, :cond_cc

    .line 255
    aget-object v12, v12, v11

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 256
    aget-object v13, v12, v10

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    sget v10, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v14, v10

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 257
    aget-object v14, v12, v15

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move/from16 v16, v2

    .line 260
    new-instance v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    if-ne v15, v14, :cond_6c

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move v15, v7

    goto :goto_7d

    :cond_6c
    const/4 v15, 0x2

    if-ne v15, v14, :cond_76

    move-object/from16 v17, v3

    move-object v3, v4

    move-object/from16 v18, v3

    move v15, v8

    goto :goto_7d

    :cond_76
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v3, v5

    move/from16 v15, v16

    .line 271
    :goto_7d
    invoke-virtual {v2, v13}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCurrentRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    move-object/from16 v19, v5

    const/4 v5, 0x1

    .line 272
    invoke-virtual {v4, v15, v13, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    .line 273
    invoke-virtual {v4, v14}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 274
    array-length v3, v12

    const/4 v4, 0x2

    if-le v3, v4, :cond_b0

    aget-object v3, v12, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 275
    aget-object v3, v12, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v10

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 276
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setFixedRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    const/4 v5, 0x1

    .line 277
    invoke-virtual {v2, v15, v3, v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    goto :goto_b1

    :cond_b0
    const/4 v5, 0x1

    .line 280
    :goto_b1
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    if-nez v11, :cond_b8

    move v6, v13

    goto :goto_bf

    .line 283
    :cond_b8
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroZoomLens:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v5

    if-ne v11, v2, :cond_bf

    move v9, v13

    :cond_bf
    :goto_bf
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    const/4 v10, 0x0

    goto/16 :goto_3e

    .line 288
    :cond_cc
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isLongFocusDefaultForMacro()Z

    move-result v2

    if-eqz v2, :cond_d8

    move v2, v9

    goto :goto_d9

    :cond_d8
    move v2, v6

    :goto_d9
    const/16 v3, 0x80

    const/4 v15, 0x2

    .line 290
    filled-new-array {v15, v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v3

    const/4 v5, 0x1

    .line 291
    invoke-virtual {v3, v5}, Lcom/transsion/camera/app/common/ZoomConfig;->setFocalLengthCustom(Z)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v3

    .line 292
    invoke-virtual {v3, v6, v9}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v3

    .line 293
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setDefaultZoomRatio(I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 294
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setCurrentLensTypeByCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v1
.end method

.method public getDataFlowType()I
    .registers 2

    .line 98
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_15

    .line 99
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p0

    if-eqz p0, :cond_12

    return v0

    :cond_12
    const/16 p0, 0x8

    return p0

    :cond_15
    return v0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 13

    .line 155
    const-string v9, "key_voice_detection"

    const-string v10, "key_touch_capture"

    const-string v0, "key_mood_light"

    const-string v1, "key_macro"

    const-string v2, "key_edit_watermark"

    const-string v3, "key_setting_smart_denoise"

    const-string v4, "key_fingerprint_capture"

    const-string v5, "key_gold_watermark"

    const-string v6, "key_pro_watermark"

    const-string v7, "key_shutter_sound_optional"

    const-string v8, "key_airaw_tf"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 139
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mIsWideCamUISupport:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->getRestriction(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string/jumbo v0, "value_wide_cam_support"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    goto :goto_28

    .line 142
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->getRestriction(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string/jumbo v0, "value_wide_cam_not_support"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 144
    :goto_28
    const-string v0, "key_cam_mode"

    const-string/jumbo v1, "val_super_macro"

    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 187
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMacroCamera()Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p3

    .line 191
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p4

    .line 192
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p5

    invoke-virtual {p5}, Lcom/transsion/camera/utils/CustomConfigUtil;->isLongFocusDefaultForMacro()Z

    move-result p5

    .line 194
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p6

    iget-boolean p6, p6, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMacroSupportZoomForMainCam:Z

    if-eqz p6, :cond_38

    if-eqz p4, :cond_38

    move-object p0, p4

    goto :goto_45

    :cond_38
    if-eqz p5, :cond_3e

    if-eqz p3, :cond_3e

    move-object p0, p3

    goto :goto_45

    :cond_3e
    if-eqz p2, :cond_42

    move-object p0, p2

    goto :goto_45

    :cond_42
    if-eqz p1, :cond_45

    move-object p0, p1

    .line 203
    :cond_45
    :goto_45
    sget-object p1, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getOpenCamerId: resultCamera = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 150
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 52
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$bool;->is_widecam_item_ui_support_in_widecam:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mIsWideCamUISupport:Z

    .line 54
    invoke-direct {p0, p5}, Lcom/transsion/camera/feature/mode/macro/MacroMode;->initUI(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$array;->macro_zoom_lens:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroZoomLens:[Ljava/lang/String;

    return-void
.end method

.method public needOpenPortraitCamera(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 4

    .line 64
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/macro/MacroMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/macro/MacroMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/macro/MacroMode;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 209
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string p2, "key_picture_size"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 211
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    if-eqz p0, :cond_27

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->hideHint()V

    return-void

    .line 216
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/feature/mode/macro/MacroMode$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/macro/MacroMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/macro/MacroMode;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-void
.end method

.method public pause()V
    .registers 3

    .line 112
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 113
    sget-object v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pause]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    if-eqz v0, :cond_19

    .line 116
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->hideHint()V

    .line 117
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    .line 119
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/16 v1, 0x70

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_29

    const/16 v0, 0xd6

    .line 121
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_29
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 3

    .line 90
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/16 v0, 0x6f

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 127
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 128
    sget-object v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    if-eqz v0, :cond_19

    .line 131
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->hideHint()V

    .line 132
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    :cond_19
    return-void
.end method
