.class public Lcom/transsion/camera/feature/setting/zoom/Zoom5;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String;

.field private static final DEFAULT_ZOOM_RATIO:I

.field private static final KEY_PREVIEW_STATE:Ljava/lang/String; = "key_preview_state"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mApplyConfiguredDefaultRatio:Z

.field private mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

.field private mCurrentZoomValue:Ljava/lang/String;

.field private mFocalLength:I

.field private mIsPaused:Z

.field private mIsWaitingCameraSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMainHandler:Landroid/os/Handler;

.field private mMaxLimitedZoomRatio:I

.field private mMaxZoomRatio:I

.field private mMinLimitedZoomRatio:I

.field private mMinZoomRatio:I

.field private mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

.field private mNeedSaveZoomValue:Z

.field private mPreRatioParameter:I

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private volatile mRatioParameter:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

.field private mZoomState:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0ZgfcHw41YOnnLrQPlG-5OzqpWY(Lcom/transsion/camera/feature/setting/zoom/Zoom5;Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->lambda$updateParametersValue$1(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JeCBxuMwl3Un5NsilpQVGXvkZmE(IILjava/lang/String;)Z
    .registers 3

    .line 229
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p2, p0, :cond_a

    if-ge p2, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$SMHfqYstxkZn1wCpPPIlyKiZVK0(Lcom/transsion/camera/feature/setting/zoom/Zoom5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZRSaOINRn9MSbgBN4UN_hAxLHy4(Lcom/transsion/camera/feature/setting/zoom/Zoom5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$aTY16px7cDWbMB78OyR9bfLKThk(Lcom/transsion/camera/feature/setting/zoom/Zoom5;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->lambda$new$4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsWaitingCameraSwitch(Lcom/transsion/camera/feature/setting/zoom/Zoom5;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mIsWaitingCameraSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyPreviewState(Lcom/transsion/camera/feature/setting/zoom/Zoom5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->notifyPreviewState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Zoom5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 56
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sput v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_ZOOM_RATIO:I

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 62
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_ZOOM_RATIO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinZoomRatio:I

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMaxZoomRatio:I

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mFocalLength:I

    .line 65
    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mPreRatioParameter:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    .line 72
    const-string/jumbo v0, "value_zoom_stop"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomState:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentZoomValue:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mIsWaitingCameraSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 452
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5$1;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom5;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 540
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom5;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private convertValueToRatio(Ljava/lang/String;)I
    .registers 7

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-eqz v0, :cond_a9

    if-nez p1, :cond_8

    goto/16 :goto_a9

    .line 329
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 330
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinZoomRatio:I

    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMaxZoomRatio:I

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p1

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isSATSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_8b

    .line 335
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfo()Ljava/util/List;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_33

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 336
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinZoomRatio:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    .line 339
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    if-nez v0, :cond_38

    goto :goto_8b

    .line 343
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 344
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFixedRatio()I

    move-result v4

    if-lez v4, :cond_42

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v4

    if-ne v4, p1, :cond_42

    .line 345
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFixedRatio()I

    move-result p1

    .line 346
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getLensType()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getLensType()I

    move-result p0

    if-ne v0, p0, :cond_6c

    return p1

    :cond_6c
    return v3

    .line 350
    :cond_6d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->isRatioSupportedInLens(ILcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Z

    move-result v0

    if-eqz v0, :cond_85

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getBaseRatio()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    .line 354
    :cond_85
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getLensInfoByRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v0

    if-nez v0, :cond_8c

    :goto_8b
    return p1

    .line 360
    :cond_8c
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getLensType()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getLensType()I

    move-result v4

    if-ne v2, v4, :cond_a8

    .line 361
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    int-to-float p0, p1

    mul-float/2addr p0, v1

    .line 362
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getBaseRatio()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    sget p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_a8
    return v3

    .line 326
    :cond_a9
    :goto_a9
    sget p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_ZOOM_RATIO:I

    return p0
.end method

.method private getLensInfoByRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 5

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 369
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->isRatioSupportedInLens(ILcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private isRatioSupportedInLens(ILcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Z
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomRangeLimited()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 378
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRatioSupportedInLens, minLimitedRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinLimitedZoomRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxLimitedRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMaxLimitedZoomRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getStartRatio()I

    move-result p2

    if-le p2, p1, :cond_3c

    iget p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinLimitedZoomRatio:I

    if-gt p2, p1, :cond_42

    :cond_3c
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMaxLimitedZoomRatio:I

    if-gt p1, p0, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    const/4 p0, 0x0

    return p0

    .line 385
    :cond_44
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->containsRatio(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$2()V
    .registers 1

    .line 562
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->updateZoomConfig()Z

    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 1

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->updateZoomConfig()Z

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 542
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_e0

    goto/16 :goto_92

    :sswitch_2d
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_92

    :cond_37
    const/16 v3, 0x8

    goto/16 :goto_92

    :sswitch_3b
    const-string v0, "key_zoom_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_92

    :cond_44
    const/4 v3, 0x7

    goto :goto_92

    :sswitch_46
    const-string v0, "key_transfer_camera_combination"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_92

    :cond_4f
    const/4 v3, 0x6

    goto :goto_92

    :sswitch_51
    const-string v0, "need_memory_zoom_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_92

    :cond_5a
    const/4 v3, 0x5

    goto :goto_92

    :sswitch_5c
    const-string v0, "key_video_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto :goto_92

    :cond_65
    const/4 v3, 0x4

    goto :goto_92

    :sswitch_67
    const-string v0, "key_video_hdr_10_plus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto :goto_92

    :cond_70
    const/4 v3, 0x3

    goto :goto_92

    :sswitch_72
    const-string v0, "key_video_facebeauty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto :goto_92

    :cond_7b
    const/4 v3, 0x2

    goto :goto_92

    :sswitch_7d
    const-string v0, "key_video_quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    goto :goto_92

    :cond_86
    move v3, v2

    goto :goto_92

    :sswitch_88
    const-string v0, "key_record_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    goto :goto_92

    :cond_91
    move v3, v1

    :goto_92
    packed-switch v3, :pswitch_data_106

    goto :goto_cf

    .line 565
    :pswitch_96
    new-instance p1, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 566
    const-string p1, "super"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 567
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntivideoSupportWide:Z

    if-eqz p1, :cond_cf

    .line 568
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getKey()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_06X:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 548
    :pswitch_c2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomState:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_cf

    .line 549
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomState:Ljava/lang/String;

    .line 550
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->sendSettingChangeRequest()V

    :cond_cf
    :goto_cf
    return-void

    .line 572
    :pswitch_d0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mApplyConfiguredDefaultRatio:Z

    return-void

    .line 545
    :pswitch_d3
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mNeedSaveZoomValue:Z

    return-void

    .line 562
    :pswitch_d6
    new-instance p1, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x7dbe4efd -> :sswitch_88
        -0x60d2d0a5 -> :sswitch_7d
        -0x389e6ec3 -> :sswitch_72
        -0xe6f0033 -> :sswitch_67
        -0xb0858d3 -> :sswitch_5c
        0x21d849a -> :sswitch_51
        0x2a89eba9 -> :sswitch_46
        0x53373705 -> :sswitch_3b
        0x7ddb1282 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_c2
        :pswitch_96
    .end packed-switch
.end method

.method private synthetic lambda$updateParametersValue$1(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)V
    .registers 3

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_switch_camera_on_zoom"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 288
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private notifyPreviewState(Z)V
    .registers 3

    .line 467
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 469
    const-string v0, "key_preview_state"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_b
    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 580
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 581
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 583
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateFocalLength(Ljava/lang/String;)V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    const/4 v1, -0x1

    if-eqz v0, :cond_6d

    if-nez p1, :cond_8

    goto :goto_6d

    .line 303
    :cond_8
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isFocalLengthCustom()Z

    move-result v0

    if-nez v0, :cond_11

    .line 304
    iput v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mFocalLength:I

    return-void

    .line 308
    :cond_11
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 309
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinZoomRatio:I

    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMaxZoomRatio:I

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p1

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 311
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_27

    .line 314
    :cond_3e
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v2

    if-eq v2, p1, :cond_4a

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getStartRatio()I

    move-result v2

    if-ne v2, p1, :cond_27

    .line 315
    :cond_4a
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mFocalLength:I

    return-void

    .line 320
    :cond_58
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getBaseFocalLength()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 321
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mFocalLength:I

    return-void

    .line 299
    :cond_6d
    :goto_6d
    iput v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mFocalLength:I

    return-void
.end method

.method private updateParametersValue(Ljava/lang/String;)Z
    .registers 7

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mIsWaitingCameraSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 258
    sget-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateParametersValue, return for waiting camera switch"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 262
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mIsPaused:Z

    if-eqz v0, :cond_17

    return v1

    .line 266
    :cond_17
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->updateFocalLength(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->convertValueToRatio(Ljava/lang/String;)I

    move-result v0

    .line 268
    sget-object v2, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateParametersValue, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ratio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", focalLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mFocalLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4e

    .line 271
    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    return v3

    .line 275
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mIsWaitingCameraSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 279
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_61
    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 280
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFixedRatio()I

    move-result v4

    if-lez v4, :cond_61

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v4

    if-ne v4, v0, :cond_61

    .line 281
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFixedRatio()I

    move-result v0

    goto :goto_61

    .line 285
    :cond_7e
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getLensInfoByRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 287
    new-instance v3, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom5;Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)V

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->runOnMainThread(Ljava/lang/Runnable;)V

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float/2addr v0, v3

    .line 289
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getBaseRatio()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    .line 291
    :cond_9d
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateParametersValue, SWITCH_CAMERA_ON_ZOOM, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mRatioParameter: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private updateZoomConfig()Z
    .registers 8

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_119

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeFeatureConfig;->getZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_119

    .line 146
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeFeatureConfig;->getZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateZoomConfig, SATSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ZoomConfig;->isSATSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", applyConfiguredDefaultRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mApplyConfiguredDefaultRatio:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig;->getZoomRange()Landroid/util/Range;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinZoomRatio:I

    .line 152
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMaxZoomRatio:I

    .line 153
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig;->getLimitedZoomRange()Landroid/util/Range;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinLimitedZoomRatio:I

    .line 155
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMaxLimitedZoomRatio:I

    .line 157
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfo()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_9f

    .line 158
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mApplyConfiguredDefaultRatio:Z

    if-eqz v3, :cond_8c

    iget v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinZoomRatio:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9c

    .line 159
    :cond_8c
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_9c
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentZoomValue:Ljava/lang/String;

    goto :goto_ce

    .line 161
    :cond_9f
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mApplyConfiguredDefaultRatio:Z

    if-eqz v3, :cond_ae

    .line 162
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig;->getDefaultZoomRatio()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_be

    .line 163
    :cond_ae
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_be
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentZoomValue:Ljava/lang/String;

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 165
    iget v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMaxZoomRatio:I

    if-le v3, v4, :cond_ce

    .line 166
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentZoomValue:Ljava/lang/String;

    .line 169
    :cond_ce
    :goto_ce
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mApplyConfiguredDefaultRatio:Z

    .line 171
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig;->isSATSupported()Z

    move-result v2

    if-eqz v2, :cond_d9

    goto :goto_df

    :cond_d9
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig;->getCurrentLensInfo()Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    :goto_df
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    if-eqz v1, :cond_117

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentZoomValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->updateParametersValue(Ljava/lang/String;)Z

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateZoomConfig, currentLensType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getLensType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentZoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentZoomValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRatioParameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_117
    const/4 p0, 0x1

    return p0

    .line 141
    :cond_119
    :goto_119
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    .line 142
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mApplyConfiguredDefaultRatio:Z

    .line 143
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentZoomValue:Ljava/lang/String;

    return v2
.end method

.method private static updateZoomToCameraInfoTrackerIfNeed(I)V
    .registers 2

    .line 516
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 519
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 520
    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setCurrentZoom(I)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 497
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    .line 498
    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mPreRatioParameter:I

    if-eq v0, v1, :cond_d

    .line 499
    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setZoomRatio(I)V

    .line 500
    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mPreRatioParameter:I

    .line 503
    :cond_d
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setRealZoomRatio(I)V

    .line 504
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->isFocalLengthCustom()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 505
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mFocalLength:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocalLength(I)V

    .line 507
    :cond_1d
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setZoomValue(F)V

    .line 508
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setTotalZoomValue(F)V

    .line 509
    iget p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->updateZoomToCameraInfoTrackerIfNeed(I)V

    .line 510
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configParameters, zoomRatio :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFocalLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mFocalLength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 252
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->setValue(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->sendSettingChangeRequest()V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 188
    const-string p0, "key_camera_zoom"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 183
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 203
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getValue()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 2

    .line 399
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 193
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 195
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    goto :goto_f

    .line 198
    :cond_d
    monitor-exit p0

    return-object v0

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 83
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMainHandler:Landroid/os/Handler;

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_zoom_state"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "need_memory_zoom_value"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_record_state"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_anti_video"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_transfer_camera_combination"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_quality"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_facebeauty"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_hdr_10_plus"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_makeup"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mCurrentZoomValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->setValue(Ljava/lang/String;)V

    .line 120
    sget p1, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_ZOOM_RATIO:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mPreRatioParameter:I

    return-void
.end method

.method public isFocalLengthCustom()Z
    .registers 1

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ZoomConfig;->isFocalLengthCustom()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected isPlatformSupportedValue(Ljava/lang/String;)Z
    .registers 6

    .line 235
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 236
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 237
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gt p1, p0, :cond_28

    if-lt p1, v1, :cond_28

    return v3

    :cond_28
    return v0
.end method

.method public isZooming()Z
    .registers 2

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomState:Ljava/lang/String;

    const-string/jumbo v0, "value_zoom_begin"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 443
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 444
    sget-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraIdChanged, cameraId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 417
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 418
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeClosed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 419
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    .line 420
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->setValue(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 421
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 5

    .line 410
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 411
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onModeOpened"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getKey()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 3

    .line 244
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 247
    :cond_b
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .registers 5

    .line 390
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChangedOnly, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 392
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_31
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    if-nez v0, :cond_3d

    .line 219
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->updateParametersValue(Ljava/lang/String;)Z

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->sendSettingChangeRequest()V

    :cond_3d
    return-void
.end method

.method public pause()V
    .registers 3

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mIsPaused:Z

    .line 426
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 427
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mNeedSaveZoomValue:Z

    if-nez v1, :cond_15

    .line 428
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mApplyConfiguredDefaultRatio:Z

    .line 429
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->setValue(Ljava/lang/String;)V

    .line 430
    sget v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_ZOOM_RATIO:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mRatioParameter:I

    :cond_15
    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mNeedSaveZoomValue:Z

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mIsPaused:Z

    .line 438
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    return-void
.end method

.method protected retainPlatformSupportedValues(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 226
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 228
    new-instance v1, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 3

    .line 529
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const-string v1, "key_camera_zoom"

    if-nez v0, :cond_16

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v0, "key_asd"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void

    .line 532
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->isZooming()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestZoomValueChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mIsWaitingCameraSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->updateZoomConfig()Z

    move-result p1

    if-nez p1, :cond_22

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 102
    sget-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setCameraCapabilities, updateZoomConfig fail, zoom not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getZoomRange()Landroid/util/Range;

    move-result-object p1

    .line 106
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities, zoom range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMinZoomRatio:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMaxZoomRatio:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getDefaultZoomRatio()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
    .registers 3

    .line 132
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mApplyConfiguredDefaultRatio:Z

    .line 136
    :cond_e
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 6

    .line 125
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->updateParametersValue(Ljava/lang/String;)Z

    return-void
.end method

.method public unInit()V
    .registers 6

    .line 479
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mIsWaitingCameraSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "need_memory_zoom_value"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_record_state"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_transfer_camera_combination"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_quality"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_facebeauty"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_hdr_10_plus"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_makeup"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 492
    sget-object p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInitSetting"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
