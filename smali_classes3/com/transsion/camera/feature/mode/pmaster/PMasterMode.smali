.class public Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# static fields
.field private static final PORTRAIT_MODE_ENHANCE_SUPPORT_BACK:I = 0x1

.field private static final PORTRAIT_MODE_ENHANCE_SUPPORT_BOTH:I = 0x3

.field private static final PORTRAIT_MODE_ENHANCE_SUPPORT_FRONT:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mFaceAttributeSupport:Z

.field private mFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

.field private mFullSizeSupport:Z

.field private mIsAlgoSupportForBackCamera:Z

.field private final mIsBackCamera:Z

.field private final mIsVipMode:Z

.field private mMmumonomerSupportFlash:Z

.field protected mPMasterModeUpperFps:I

.field private mPMasterZoomLens:[Ljava/lang/String;

.field private mPortraitModeEnhanceSupport:Z

.field private mSuperNightSwitch:Z

.field private mSupportSuperNightLiteUI:Z

.field private final misStereoOpen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PMasterMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLcom/transsion/camera/app/common/provider/FeatureParameters;Z)V
    .registers 8

    .line 100
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mFaceAttributeSupport:Z

    .line 86
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mPortraitModeEnhanceSupport:Z

    .line 92
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mFullSizeSupport:Z

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mSuperNightSwitch:Z

    .line 539
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    .line 101
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    .line 102
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsVipMode:Z

    .line 103
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsAlgoSupportForBackCamera:Z

    .line 104
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mMumonomerSupportFlash:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mMmumonomerSupportFlash:Z

    .line 105
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPmasterModeSupportFullSize:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mFullSizeSupport:Z

    if-eqz p4, :cond_33

    .line 106
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->isStereoOpen()Z

    move-result p2

    if-eqz p2, :cond_33

    move p1, v0

    :cond_33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    if-eqz p4, :cond_3d

    .line 108
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 110
    :cond_3d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;)Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 1

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;)Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method private getPMasterPortraitEnhanceSupport(Landroid/content/Context;Z)Z
    .registers 6

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/pmaster/R$integer;->portrait_enhance_support:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    if-eqz p2, :cond_12

    move v1, v0

    goto :goto_13

    :cond_12
    move v1, p1

    :goto_13
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1a

    if-nez p2, :cond_1a

    move p2, v0

    goto :goto_1b

    :cond_1a
    move p2, p1

    :goto_1b
    const/4 v2, 0x3

    if-ne p0, v2, :cond_20

    move p0, v0

    goto :goto_21

    :cond_20
    move p0, p1

    :goto_21
    if-nez v1, :cond_29

    if-nez p2, :cond_29

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    return p1

    :cond_29
    :goto_29
    return v0
.end method

.method private isSupportLogicalCamera(Ljava/lang/String;)Z
    .registers 4

    .line 500
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 503
    :cond_c
    const-string v0, "f0.0"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_16

    return v0

    .line 507
    :cond_16
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    if-eqz p0, :cond_1b

    return v0

    :cond_1b
    return v1
.end method

.method private isSupportSecondLogicalCamera(Ljava/lang/String;)Z
    .registers 4

    .line 515
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 518
    :cond_c
    const-string v0, "f0.0"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_16

    return v0

    .line 522
    :cond_16
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    if-eqz p0, :cond_1b

    return v0

    :cond_1b
    return v1
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 5

    .line 428
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    if-eqz p0, :cond_16

    .line 430
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->updateCaptureCount(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V

    :cond_16
    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
        }
    .end annotation

    .line 437
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    if-eqz v0, :cond_14

    .line 438
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsAlgoSupportForBackCamera:Z

    if-eqz v0, :cond_e

    .line 439
    new-instance v0, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0

    .line 441
    :cond_e
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0

    .line 443
    :cond_14
    new-instance v0, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 17

    move-object/from16 v0, p0

    .line 583
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFocalLengthSupport:Z

    const/4 v2, 0x2

    if-nez v1, :cond_18

    .line 584
    invoke-super {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    filled-new-array {v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    return-object v0

    .line 587
    :cond_18
    new-instance v1, Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/ZoomConfig;-><init>()V

    .line 588
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    .line 589
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 590
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_3e

    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 591
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    goto :goto_3e

    :cond_3c
    move v4, v5

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v4, v6

    :goto_3f
    if-eqz v4, :cond_46

    .line 592
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v7

    goto :goto_4a

    .line 593
    :cond_46
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v7

    :goto_4a
    if-eqz v4, :cond_51

    .line 594
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v4

    goto :goto_55

    .line 595
    :cond_51
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v4

    .line 597
    :goto_55
    sget v8, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v8, v8

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v8, v3

    float-to-int v3, v8

    .line 598
    sget v8, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_5X:I

    move v9, v5

    .line 600
    :goto_61
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mPMasterZoomLens:[Ljava/lang/String;

    array-length v11, v10

    if-ge v9, v11, :cond_b7

    .line 601
    aget-object v10, v10, v9

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 602
    aget-object v11, v10, v5

    .line 603
    aget-object v12, v10, v6

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    sget v13, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 604
    aget-object v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 607
    new-instance v13, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v13}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    if-ne v2, v10, :cond_8c

    .line 609
    sget v14, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    move-object v15, v7

    goto :goto_8e

    :cond_8c
    move v14, v3

    move-object v15, v4

    .line 615
    :goto_8e
    invoke-virtual {v13, v12}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCurrentRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 616
    invoke-virtual {v2, v14, v12, v6}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    .line 617
    invoke-virtual {v2, v11}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setFocalLength([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 618
    invoke-virtual {v1, v13}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 619
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mPMasterZoomLens:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v6

    if-ne v9, v2, :cond_b3

    move v8, v12

    :cond_b3
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x2

    goto :goto_61

    .line 624
    :cond_b7
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfo()Ljava/util/List;

    move-result-object v2

    .line 625
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 626
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/utils/CustomConfigUtil;->getTeleCamDefaultOpen()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 628
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    goto :goto_eb

    .line 629
    :cond_df
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    :goto_eb
    const/16 v3, 0x20

    const/16 v4, 0x80

    .line 631
    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v3

    .line 632
    invoke-virtual {v3, v6}, Lcom/transsion/camera/app/common/ZoomConfig;->setFocalLengthCustom(Z)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v3

    .line 633
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->setCurrentFocalLength(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v2

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 634
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setCurrentLensTypeByCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    sget v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    .line 635
    invoke-virtual {v0, v2, v8}, Lcom/transsion/camera/app/common/ZoomConfig;->setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;

    return-object v1
.end method

.method public getDataFlowType()I
    .registers 4

    .line 138
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 139
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v0, v1

    goto :goto_15

    :cond_13
    const/16 v0, 0x8

    .line 149
    :goto_15
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v2

    if-nez v2, :cond_37

    .line 150
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result v2

    if-nez v2, :cond_37

    .line 151
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v2

    if-nez v2, :cond_37

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    if-nez p0, :cond_38

    :cond_37
    const/4 v1, 0x4

    .line 156
    :cond_38
    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getFpsRange()Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getFpsRange()Landroid/util/Range;

    move-result-object v0

    .line 238
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFpsRangeReduce:Z

    const/4 v2, 0x5

    if-nez v1, :cond_f

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mPMasterModeUpperFps:I

    if-le v1, v2, :cond_e

    goto :goto_f

    :cond_e
    return-object v0

    .line 239
    :cond_f
    :goto_f
    new-instance v0, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mPMasterModeUpperFps:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public getModeFeatureConfig()Lcom/transsion/camera/app/common/IModeFeatureConfig;
    .registers 1

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 8

    .line 286
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getMakeupSupport()Z

    move-result v0

    .line 288
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getPortraitFlareSupport()Z

    move-result v1

    .line 289
    sget-object v2, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModeFeatures:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsVipMode:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    const-string v3, "key_mu_monomer"

    const-string v4, "key_camera_click_zoom"

    const-string v5, "key_makeup_feature"

    if-eqz v2, :cond_98

    .line 291
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsVipMode:Z

    if-eqz v2, :cond_5d

    .line 292
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    if-eqz v2, :cond_66

    .line 293
    const-string v2, "key_vip_stereo"

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 296
    :cond_5d
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    if-eqz v2, :cond_66

    .line 297
    const-string v2, "key_mu_stereo"

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_66
    :goto_66
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v2

    if-eqz v2, :cond_75

    if-eqz v0, :cond_71

    .line 302
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_71
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 305
    :cond_75
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result v2

    if-eqz v2, :cond_81

    if-eqz v0, :cond_90

    .line 307
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 310
    :cond_81
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsVipMode:Z

    if-eqz v2, :cond_8b

    if-eqz v0, :cond_90

    .line 312
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 315
    :cond_8b
    const-string v0, "key_mu_slimbody"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_90
    :goto_90
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsAlgoSupportForBackCamera:Z

    if-eqz v0, :cond_ae

    .line 319
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 322
    :cond_98
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_a0

    .line 324
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_a0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->isGroupCaptureSupport()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 328
    const-string v0, "key_group_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_ae
    :goto_ae
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mFullSizeSupport:Z

    if-eqz v0, :cond_bd

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v0

    if-nez v0, :cond_bd

    .line 332
    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_bd
    const-string v0, "key_mood_light"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v0, "key_secondary_screen"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v0, "key_hdr"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v0, "key_asd"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v0, "key_shutter_sound_optional"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v0, "key_tran_plugin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v0, "key_smile_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    if-eqz v0, :cond_ee

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseDXOArea()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 342
    :cond_ee
    const-string v0, "key_setting_skin_optimization"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_f3
    const-string v0, "key_gesture_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v0, "key_voice_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v0, "key_fingerprint_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v0, "key_touch_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v0, "key_taint_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v0, "key_mu_face_beauty"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v0, "key_face_detection_enhance"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mFaceAttributeSupport:Z

    if-eqz v0, :cond_129

    .line 353
    const-string v0, "key_gender_attribute_value"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v0, "key_race"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v0, "key_skin_color"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_129
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mPortraitModeEnhanceSupport:Z

    if-eqz p0, :cond_132

    .line 358
    const-string p0, "key_portraitmode_enhance"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_132
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_145

    .line 363
    const-string p0, "key_ai_group_photo"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_145
    if-eqz v1, :cond_14c

    .line 366
    const-string p0, "key_portrait_flare"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_14c
    const-string p0, "key_edit_watermark"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    const-string p0, "key_gold_watermark"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    const-string p0, "key_pro_watermark"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const-string p0, "key_lens_correction"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    const-string p0, "key_super_flash"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    const-string p0, "key_auto_color_level"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getPMasterSupportSuperNightLiteUI()Z

    move-result p0

    if-eqz p0, :cond_17e

    .line 375
    const-string p0, "key_super_night_light"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const-string p0, "key_super_night_lite"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_17e
    const-string p0, "key_in_sensor_zoom"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const-string p0, "key_airaw_tf"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 381
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 7

    .line 258
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModeRelation mIsBackCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", misStereoOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    .line 261
    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->getFaceAttributeRelation(ZZ)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    .line 262
    const-string v2, "on"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 263
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mStereoSupportFlash:Z

    .line 264
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_mu_monomer"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 265
    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "f0.0"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    .line 266
    :goto_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModeRelation,misMonomerOpen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    if-eqz v0, :cond_73

    if-eqz v2, :cond_79

    :cond_73
    if-eqz v3, :cond_87

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mMmumonomerSupportFlash:Z

    if-nez v0, :cond_87

    .line 268
    :cond_79
    const-string v0, "key_flash"

    const-string v2, "off"

    const-string v4, "off,on,auto,torch"

    invoke-virtual {v1, v0, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "key_flash_facade"

    invoke-virtual {v1, v0, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_87
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    const-string v2, "key_cam_mode"

    if-eqz v0, :cond_91

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    if-nez v0, :cond_a1

    :cond_91
    if-eqz v3, :cond_97

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    if-eqz v0, :cond_a1

    :cond_97
    if-eqz v3, :cond_a8

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    if-eqz v0, :cond_a8

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsAlgoSupportForBackCamera:Z

    if-eqz p0, :cond_a8

    .line 272
    :cond_a1
    const-string/jumbo p0, "val_pmaster_portrait"

    invoke-virtual {v1, v2, p0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 274
    :cond_a8
    const-string/jumbo p0, "val_pmaster_beauty"

    invoke-virtual {v1, v2, p0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 18

    .line 460
    sget-object v8, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpenCameraId,mDefaultCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mCameraId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_122

    .line 463
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getTeleCamDefaultOpen()Z

    move-result v1

    .line 465
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v3

    const-string v4, "f0.0"

    if-nez v3, :cond_59

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_59

    .line 468
    :cond_37
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsVipMode:Z

    if-eqz v6, :cond_42

    const-string v7, "key_vip_stereo"

    goto :goto_44

    :cond_42
    const-string v7, "key_mu_stereo"

    :goto_44
    if-eqz v6, :cond_47

    goto :goto_4b

    .line 469
    :cond_47
    invoke-static {}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getStereoDefaultValue()Ljava/lang/String;

    move-result-object v4

    :goto_4b
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    .line 468
    invoke-virtual {v3, v7, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_57
    move-object v9, v3

    goto :goto_6c

    .line 466
    :cond_59
    :goto_59
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_mu_monomer"

    invoke-virtual {v3, v7, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_57

    .line 471
    :goto_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpenCameraId, isVip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsVipMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",misStereoOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",stereo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsVipMode:Z

    if-eqz v3, :cond_a7

    .line 473
    invoke-direct {p0, v9}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->isSupportLogicalCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 474
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a7
    if-eqz v1, :cond_bc

    .line 477
    invoke-direct {p0, v9}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->isSupportSecondLogicalCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsAlgoSupportForBackCamera:Z

    if-nez v3, :cond_bc

    .line 478
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_103

    .line 479
    :cond_bc
    invoke-direct {p0, v9}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->isSupportLogicalCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_dd

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsAlgoSupportForBackCamera:Z

    if-nez v3, :cond_dd

    const-string v3, "key_portrait_flare"

    .line 480
    invoke-interface {p4, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "on"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_dd

    .line 481
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_103

    :cond_dd
    if-eqz v1, :cond_f6

    .line 482
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsAlgoSupportForBackCamera:Z

    if-eqz v1, :cond_f6

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f6

    .line 483
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_103

    :cond_f6
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 485
    invoke-super/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    .line 487
    :goto_103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpenCameraId,stereo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_123

    :cond_122
    move-object v1, p5

    .line 489
    :goto_123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpenCameraId,cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 211
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getMakeUpReducePreviewSizeHeight()I

    move-result v0

    .line 212
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v4

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v2

    .line 214
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-lez v0, :cond_1a

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 215
    :cond_1a
    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    const/16 v6, 0x2d0

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    if-eqz v5, :cond_60

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsAlgoSupportForBackCamera:Z

    if-nez v5, :cond_60

    .line 216
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v9, v1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v11, v1

    div-double/2addr v9, v11

    sub-double/2addr v9, v2

    .line 217
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v1, v9, v7

    if-gez v1, :cond_3f

    move v8, v6

    goto :goto_40

    :cond_3f
    move v8, v0

    .line 222
    :goto_40
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v0

    if-eqz v0, :cond_51

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->ratioEqual(DD)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x1

    :goto_4f
    move v10, v0

    goto :goto_53

    :cond_51
    const/4 v0, 0x0

    goto :goto_4f

    :goto_53
    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    .line 220
    invoke-static/range {v1 .. v10}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZZ)Landroid/util/Size;

    move-result-object p1

    goto :goto_8d

    .line 224
    :cond_60
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v9, v0

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v11, v0

    div-double/2addr v9, v11

    sub-double v11, v9, v2

    .line 225
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v0, v11, v7

    if-gez v0, :cond_80

    const-wide v7, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpl-double v0, v9, v7

    if-lez v0, :cond_80

    move v8, v6

    goto :goto_81

    :cond_80
    move v8, v1

    :goto_81
    const/4 v7, 0x1

    const/4 v9, 0x1

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    move-object v1, p1

    .line 228
    invoke-static/range {v1 .. v9}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p1

    .line 231
    :goto_8d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize,previewSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSettingGroup()J
    .registers 5

    .line 281
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 123
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 124
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 125
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mFaceAttributeSupport:Z

    .line 126
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->getPMasterPortraitEnhanceSupport(Landroid/content/Context;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mPortraitModeEnhanceSupport:Z

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPMasterUpperFps:I

    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mPMasterModeUpperFps:I

    .line 128
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mMmumonomerSupportFlash:Z

    if-nez p2, :cond_28

    .line 129
    const-string p2, "key_mu_monomer"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 131
    :cond_28
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getPMasterSupportSuperNightLiteUI()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mSupportSuperNightLiteUI:Z

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_zoom_lens:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mPMasterZoomLens:[Ljava/lang/String;

    return-void
.end method

.method public isForceRecreateSession()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isGroupCaptureSupport()Z
    .registers 1

    .line 531
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    if-nez p0, :cond_10

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isGroupCaptureSupport()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 5

    .line 386
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isNeedDeviceCaptureSound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 390
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_super_night_lite"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCapturing()Z

    move-result v2

    const-string v3, "on"

    if-eqz v2, :cond_2a

    .line 392
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mSuperNightSwitch:Z

    if-eqz v2, :cond_23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v1

    .line 395
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isCaptureSoundNeeded()Z

    move-result p0

    return p0

    :cond_2a
    if-eqz v0, :cond_41

    .line 399
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mSuperNightSwitch:Z

    if-nez p0, :cond_36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    :cond_36
    const-string p0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    :cond_3e
    const/4 p0, 0x1

    return p0

    :cond_40
    return v1

    .line 402
    :cond_41
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isNeedDeviceCaptureSound()Z

    move-result p0

    return p0
.end method

.method public needOpenPortraitCamera(Landroid/content/Context;)Z
    .registers 2

    .line 496
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsVipMode:Z

    if-nez p0, :cond_e

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitCameraForBeauty:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public needUnintModeWhenPause()Z
    .registers 7

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    .line 451
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 452
    const-string v3, "key_vip_stereo"

    goto :goto_1d

    :cond_1b
    const-string v3, "key_mu_stereo"

    :goto_1d
    const-string v4, "f0.0"

    if-eqz v2, :cond_23

    move-object v2, v4

    goto :goto_27

    :cond_23
    invoke-static {}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getStereoDefaultValue()Ljava/lang/String;

    move-result-object v2

    :goto_27
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v1, :cond_3c

    .line 454
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->misStereoOpen:Z

    if-eq v0, p0, :cond_3c

    return v2

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 171
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "key_mu_monomer"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 173
    const-string v0, "f0.0"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mMmumonomerSupportFlash:Z

    if-nez v0, :cond_3b

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mIsBackCamera:Z

    .line 175
    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->getFaceAttributeRelation(ZZ)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    .line 176
    const-string v3, "on"

    invoke-virtual {v0, v3, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_55

    .line 180
    :cond_28
    const-string v3, "key_flash"

    const-string v4, "off"

    const-string v5, "off,on,auto,torch"

    invoke-virtual {v0, v3, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "key_flash_facade"

    invoke-virtual {v0, v3, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 185
    :cond_3b
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mSupportSuperNightLiteUI:Z

    if-eqz v0, :cond_55

    const-string v0, "key_super_night_lite_switch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 186
    const-string/jumbo p1, "value_super_night_lite_switch_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 187
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mSuperNightSwitch:Z

    return-void

    .line 189
    :cond_53
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mSuperNightSwitch:Z

    :cond_55
    :goto_55
    return-void
.end method

.method public onSettingReady()V
    .registers 3

    .line 161
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->supportPostAlgoDeferRequest()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->setSupportPostAlgoDeferRequest(Z)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->getYUVCallback()Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_1b

    .line 165
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_1b
    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .registers 4

    .line 246
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 247
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getInstance()Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getAccrueNum()I

    move-result v0

    .line 248
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2shotMaxCacheNumber:I

    if-lt v0, v1, :cond_32

    .line 249
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterClickBefore offline accrueNum is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 253
    :cond_32
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 2

    .line 420
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xd6

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 422
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyEnable(Z)V

    .line 423
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyEndTime()V

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
    .registers 2

    .line 412
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x7b

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 414
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyEnable(Z)V

    .line 415
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyStartTime()V

    return-void
.end method

.method public supportPostAlgo()Z
    .registers 1

    .line 573
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlHDRSupport:Z

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public supportPostAlgoDeferRequest()Z
    .registers 2

    .line 578
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shot:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->supportPostAlgo()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 3

    .line 196
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 197
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->mMmumonomerSupportFlash:Z

    if-nez v0, :cond_c

    .line 198
    const-string v0, "key_mu_monomer"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 200
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->setSupportPostAlgoDeferRequest(Z)V

    .line 203
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_1c

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_1c
    return-void
.end method
