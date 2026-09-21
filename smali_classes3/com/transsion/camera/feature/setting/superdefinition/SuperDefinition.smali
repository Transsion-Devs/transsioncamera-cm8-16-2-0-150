.class public Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final ON_LIGHT:I = 0x2

.field private static final RESTRICTION_TYPE_NORMAL:I = 0x0

.field private static final RESTRICTION_TYPE_RECOVER_ALL:I = 0x1

.field private static final RESTRICTION_TYPE_RECOVER_LAST:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private closeReasonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAsdMode:Z

.field private isFrontAsdModeDefault:Z

.field private isModeCreate:Z

.field private isUltraHDMode:Z

.field private mBillionPixelSupport:Z

.field private mCloseByBv:Z

.field private mCurrentInSensorZoomMode:I

.field private mDocHDSupport:Z

.field private mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mHighDefinitionMode:Z

.field private mIsAsdModeSupportSat:Z

.field private mIsModeSupport:Z

.field private mIsSupportFullSize:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mPreviousState:Ljava/lang/String;

.field private mSRClose:Z

.field private mSatSupport:Z

.field private mSuperDefinitionSupport:Z

.field private mSuperDefinitionType:I

.field private mSupportedRawSR:Z

.field private mSupportedSuperResolution:Z


# direct methods
.method public static synthetic $r8$lambda$Kv_cdF2s1Y3Pi9_4azxO5k8-C-k(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;Landroid/util/Size;Landroid/util/Size;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->lambda$checkHDSizeCount$0(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wElu0BYmtvU1xOeNNsznba7dO8k(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->lambda$new$1(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperDefinition"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSuperDefinitionSupport:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSupportedSuperResolution:Z

    .line 71
    const-string v1, "off"

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mDocHDSupport:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSRClose:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsSupportFullSize:Z

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSatSupport:Z

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCloseByBv:Z

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isUltraHDMode:Z

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isFrontAsdModeDefault:Z

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCurrentInSensorZoomMode:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    .line 445
    new-instance v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$1;-><init>(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 608
    new-instance v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private checkHDSizeCount(Lcom/transsion/camera/adapter/ICameraCapabilities;)I
    .registers 5

    .line 578
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->get4cellInOneSize()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 579
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4a

    .line 583
    :cond_e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 584
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p1

    .line 585
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;Landroid/util/Size;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 589
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 590
    sget-object p1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkHDSizeCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 591
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_4a
    :goto_4a
    return v1
.end method

.method private handleRestriction(I)V
    .registers 11

    .line 300
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-eqz v0, :cond_5

    goto :goto_f

    .line 303
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-nez v0, :cond_10

    :goto_f
    return-void

    .line 308
    :cond_10
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_22

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_24

    :cond_22
    const-string v1, ""

    .line 309
    :goto_24
    sget-object v2, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRestriction: LastCloseReason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getValue() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " restrictionType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " closeReason size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 311
    const-string v3, "key_asd_enhance"

    const-string v4, "key_color_style"

    const-string v5, "key_best_moment_detect"

    const-string v6, "key_live_photo"

    const-string v7, "key_filter"

    const-string v8, "key_image_style"

    if-ne p1, v2, :cond_a8

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    .line 313
    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 315
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    .line 316
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 318
    :cond_91
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9c

    .line 319
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 322
    :cond_9c
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e7

    .line 323
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    goto :goto_e7

    :cond_a8
    const/4 v2, 0x2

    if-ne p1, v2, :cond_e7

    .line 326
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 327
    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 333
    :cond_bd
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cf

    .line 334
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cf

    .line 335
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 336
    :cond_cf
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 339
    :cond_d5
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 340
    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 347
    :cond_e7
    :goto_e7
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result p1

    if-eqz p1, :cond_100

    .line 348
    const-string p1, "key_portraitmode_enhance"

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 351
    const-string p1, "key_setting_skin_optimization"

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 354
    :cond_100
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method private hasBillionPixel(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z
    .registers 3

    .line 571
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    .line 572
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 573
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    .line 574
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    mul-int/2addr v0, p0

    const p0, 0x5f5e100

    if-lt v0, p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return p1
.end method

.method private isInSensorZoomMode()Z
    .registers 2

    .line 605
    iget p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCurrentInSensorZoomMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private isSameRatio(Landroid/util/Size;Landroid/util/Size;)Z
    .registers 7

    .line 595
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr p0, v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-double v2, p2

    div-double/2addr p0, v2

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$checkHDSizeCount$0(Landroid/util/Size;Landroid/util/Size;)Z
    .registers 5

    .line 586
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1c

    .line 587
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1c

    .line 588
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSameRatio(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 609
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkInSensorZoomMode(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_15

    .line 610
    array-length p2, p1

    if-lez p2, :cond_15

    const/4 p2, 0x0

    .line 611
    aget p1, p1, p2

    .line 612
    iget p2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCurrentInSensorZoomMode:I

    if-eq p2, p1, :cond_15

    .line 613
    iput p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCurrentInSensorZoomMode:I

    .line 614
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->sendSettingChangeRequest()V

    :cond_15
    return-void
.end method

.method private setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .registers 4

    .line 599
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isUltraHDMode:Z

    if-nez p0, :cond_b

    .line 600
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    :cond_b
    return-void
.end method

.method private updateSuperDefinitionValue()V
    .registers 10

    .line 108
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    const-string v1, "off"

    if-eqz v0, :cond_3d

    .line 109
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-nez v0, :cond_21

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSatSupport:Z

    if-nez v2, :cond_21

    .line 110
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, "key_super_definition"

    const-string v5, "off"

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    goto :goto_3d

    :cond_21
    if-nez v0, :cond_29

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 113
    :cond_29
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "key_super_definition"

    const-string v4, "on"

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 114
    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    .line 117
    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 118
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 119
    :cond_59
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "key_super_definition"

    const-string v4, "off"

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    :cond_6b
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode:Z

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSRClose:Z

    return-void
.end method


# virtual methods
.method protected configBackRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 7

    .line 389
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinitionFilterSupport:Z

    const-string v1, "off"

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 390
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "key_image_style"

    if-eqz v0, :cond_19

    .line 391
    invoke-virtual {p1, v3, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 393
    :cond_19
    const-string v0, "0"

    invoke-virtual {p1, v3, v0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    const-string v3, "off,on"

    if-eqz v0, :cond_3f

    .line 397
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result p0

    if-nez p0, :cond_3f

    if-eqz p1, :cond_3f

    .line 398
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "key_live_photo"

    if-eqz p0, :cond_3c

    .line 399
    invoke-virtual {p1, v0, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 401
    :cond_3c
    invoke-virtual {p1, v0, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_3f
    :goto_3f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsAIFrameSupport:Z

    if-eqz p0, :cond_58

    if-eqz p1, :cond_58

    .line 405
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "key_ai_frame"

    if-eqz p0, :cond_55

    .line 406
    invoke-virtual {p1, v0, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 408
    :cond_55
    invoke-virtual {p1, v0, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_58
    :goto_58
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsAIZoomSRSupport:Z

    if-eqz p0, :cond_71

    if-eqz p1, :cond_71

    .line 412
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p2, "key_ai_zoom_sr"

    if-eqz p0, :cond_6e

    .line 413
    invoke-virtual {p1, p2, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 415
    :cond_6e
    invoke-virtual {p1, p2, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    return-object p1
.end method

.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 563
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSuperDefinitionSupport:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 566
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method protected configFrontRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 7

    .line 422
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinitionFilterSupport:Z

    const-string v1, "off,on"

    const/4 v2, 0x0

    if-nez v0, :cond_20

    if-eqz p1, :cond_20

    .line 423
    const-string v0, "on"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "key_image_style"

    if-eqz v0, :cond_1d

    .line 424
    const-string v0, "0"

    invoke-virtual {p1, v3, v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 426
    :cond_1d
    invoke-virtual {p1, v3, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_20
    :goto_20
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-eqz v0, :cond_41

    .line 430
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result p0

    if-nez p0, :cond_41

    if-eqz p1, :cond_41

    .line 431
    const-string p0, "off"

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "key_live_photo"

    if-eqz p2, :cond_3e

    .line 432
    invoke-virtual {p1, v0, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 434
    :cond_3e
    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    return-object p1
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 10

    .line 520
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSupportedRawSR:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSupportedRawSR(Z)V

    .line 521
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSuperDefinitionSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c4

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_c4

    .line 524
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 525
    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "billion"

    if-nez v3, :cond_34

    .line 526
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9c

    :cond_34
    const-string v3, "key_algorithm_migrate"

    .line 527
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 528
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result v3

    if-eq v3, v6, :cond_9c

    .line 529
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    if-eqz v3, :cond_8b

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCloseByBv:Z

    if-nez v3, :cond_8b

    .line 530
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isInSensorZoomMode()Z

    move-result v3

    xor-int/2addr v3, v6

    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 531
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSupportedSuperResolution:Z

    if-eqz v3, :cond_6a

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSRClose:Z

    if-nez v3, :cond_6a

    .line 532
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v3

    sget v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    if-gt v3, v4, :cond_68

    move v3, v6

    goto :goto_6b

    :cond_68
    const/4 v3, 0x2

    goto :goto_6b

    :cond_6a
    move v3, v1

    .line 531
    :goto_6b
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 533
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 534
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setRemosaicMode(Ljava/lang/String;)V

    goto :goto_81

    .line 535
    :cond_78
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 536
    invoke-virtual {p1, v7}, Lcom/transsion/camera/adapter/CameraParameters;->setRemosaicMode(Ljava/lang/String;)V

    .line 538
    :cond_81
    :goto_81
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdValue(Ljava/lang/String;)V

    goto :goto_ac

    .line 540
    :cond_8b
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 541
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 542
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setRemosaicMode(Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdValue(Ljava/lang/String;)V

    goto :goto_ac

    .line 546
    :cond_9c
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 547
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->setSuperResolutionMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 548
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setRemosaicMode(Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdValue(Ljava/lang/String;)V

    .line 551
    :goto_ac
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    if-eqz p0, :cond_c0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_bc

    .line 552
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c0

    .line 553
    :cond_bc
    invoke-virtual {p1, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setHighPixelMode(I)V

    goto :goto_cb

    .line 555
    :cond_c0
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setHighPixelMode(I)V

    goto :goto_cb

    .line 522
    :cond_c4
    :goto_c4
    sget-object p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "super definition is not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_cb
    return v1
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getCameraStoreScope()Ljava/lang/String;
    .registers 4

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_27

    .line 259
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainFrontCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 261
    :goto_27
    sget-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStoreScope: storeScope = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 180
    const-string p0, "key_super_definition"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method protected getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 5

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionRestriction;->getSuperDefinitionRestriction(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    const/4 v2, 0x0

    .line 379
    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 380
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 381
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->configFrontRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    return-object v1

    .line 383
    :cond_19
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->configBackRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    return-object v1
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

    .line 175
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

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

    .line 359
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

    .line 185
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 186
    const-string v0, "off"
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    goto :goto_13

    .line 188
    :cond_d
    :try_start_d
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_b

    monitor-exit p0

    return-object v0

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_b

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 91
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mBillionPixelSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    .line 92
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mHighDefinitionModeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    .line 93
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsSupportFullSize:Z

    .line 94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDocHDSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mDocHDSupport:Z

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdModeSupportSat:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsAsdModeSupportSat:Z

    .line 96
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFrontModeDefault:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isFrontAsdModeDefault:Z

    .line 97
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-eqz p1, :cond_41

    .line 98
    const-string p1, "on"

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    :cond_41
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
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

    .line 134
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_super_definition"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "billion"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 140
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 141
    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object v0, v1

    .line 144
    :cond_2c
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeCreate:Z

    const-string v2, "off"

    if-nez v1, :cond_3c

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 145
    :cond_3c
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    move-object v1, v0

    goto :goto_45

    :cond_44
    move-object v1, p2

    :goto_45
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 147
    :cond_48
    sget-object v1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initValueAndSupport: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", defaultValue = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isModeCreate ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeCreate:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", supportList = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "closeReasonList = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-nez p1, :cond_95

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result p1

    if-eqz p1, :cond_91

    goto :goto_95

    .line 152
    :cond_91
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_95
    :goto_95
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    return-void
.end method

.method public isCameraFacingBack()Z
    .registers 1

    .line 368
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 369
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 364
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    return p0
.end method

.method public isOverrideAllShouldReset()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFullSize()Z
    .registers 2

    .line 373
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isCameraFacingBack()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsSupportFullSize:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .registers 2

    .line 167
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->updateSuperDefinitionValue()V

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 170
    sget-object p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onModeClosed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    .line 160
    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode:Z

    .line 161
    const-string p2, "com.transsion.camera.feature.mode.ultrahd.UltraHDModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isUltraHDMode:Z

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeCreate:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 9

    .line 267
    sget-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSuperDefinitionValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "key_super_definition"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 270
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    .line 271
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 272
    const-string p1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->handleRestriction(I)V

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
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

    .line 193
    sget-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    const-string v0, "key_portraitmode_enhance"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "off"

    if-nez v0, :cond_100

    const-string v0, "key_hdr"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_100

    const-string v0, "key_setting_skin_optimization"

    .line 196
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto/16 :goto_100

    .line 200
    :cond_42
    const-string v0, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 201
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCloseByBv:Z

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_5a
    const-string v0, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mDocHDSupport:Z

    if-eqz v0, :cond_7b

    .line 204
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSRClose:Z

    .line 205
    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_7b
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 209
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    :cond_90
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_9d
    const-string v0, "key_color_style"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsAsdModeSupportSat:Z

    if-eqz v0, :cond_b3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fc

    .line 218
    :cond_b3
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getCameraStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_image_style_TEMP"

    const-string v4, ""

    invoke-virtual {v0, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getCameraStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_filter_TEMP"

    invoke-virtual {v2, v5, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fc

    .line 222
    :cond_d9
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 223
    const-string v1, "key_live_photo"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 224
    const-string v1, "key_best_moment_detect"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_fc

    .line 229
    :cond_ed
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 233
    :cond_fc
    :goto_fc
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 197
    :cond_100
    :goto_100
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_113

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_113

    .line 198
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->onValueChanged(Ljava/lang/String;)V

    :cond_113
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 2

    .line 245
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeCreate:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    :goto_7
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->handleRestriction(I)V

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeCreate:Z

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 14

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->closeReasonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_72

    .line 282
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_72

    .line 287
    :cond_24
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isFrontAsdModeDefault:Z

    if-eqz v0, :cond_33

    goto :goto_5d

    .line 291
    :cond_33
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 294
    :cond_4a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, "key_super_definition"

    const-string v5, "off"

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 288
    :cond_5d
    :goto_5d
    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "key_super_definition"

    const-string v3, "on"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 283
    :cond_72
    :goto_72
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 284
    iget-object v7, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "key_super_definition"

    const-string v9, "off"

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 9

    .line 465
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperDefinition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSuperDefinitionSupport:Z

    .line 466
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedSuperDefinitionType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSuperDefinitionType:I

    .line 467
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedRawSR()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSupportedRawSR:Z

    .line 468
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperResolution()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSupportedRawSR:Z

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSupportedSuperResolution:Z

    .line 469
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSatSupport:Z

    .line 471
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result v0

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSuperDefinitionSupport:Z

    const-string v3, "off"

    if-eqz v2, :cond_5e

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    if-eqz v2, :cond_5e

    .line 476
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->hasBillionPixel(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z

    move-result v2

    .line 477
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    const-string v5, "billion"

    const-string v6, "on"

    if-eqz v4, :cond_60

    .line 478
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    if-eqz p1, :cond_53

    if-eqz v2, :cond_53

    .line 480
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_53
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSuperDefinitionSupport:Z

    if-eqz p1, :cond_81

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode:Z

    if-eqz p1, :cond_81

    .line 484
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    :goto_5e
    move-object v6, v3

    goto :goto_81

    :cond_60
    if-eqz v0, :cond_66

    .line 489
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 492
    :cond_66
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    if-eqz v0, :cond_7d

    if-eqz v2, :cond_7d

    .line 494
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->checkHDSizeCount(Lcom/transsion/camera/adapter/ICameraCapabilities;)I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_79

    .line 496
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_79
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 500
    :cond_7d
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 506
    :cond_81
    :goto_81
    sget-object p1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSuperDefinitionSupport:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSuperDefinitionSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mSuperDefinitionType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSuperDefinitionType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mSupportedSuperResolution:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSupportedSuperResolution:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,billionPixelSupport:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,isHighDefinitionMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , support:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defaultValue:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->closeAllForFinalMonkeyTest()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 510
    const-string v0, "setCameraCapabilities, monkey test, only support super definition off"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 511
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 512
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e4

    :cond_e3
    move-object v3, v6

    .line 515
    :goto_e4
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public unInit()V
    .registers 3

    .line 128
    sget-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->updateSuperDefinitionValue()V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
