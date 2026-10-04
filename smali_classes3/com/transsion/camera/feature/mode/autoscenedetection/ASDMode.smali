.class public Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;
.super Lcom/transsion/camera/app/common/mode/FilterHookMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/FilterHookMode;",
        "Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;"
    }
.end annotation


# static fields
.field private static final WIDE_CAMERA_PREVIEW_LIMIT:I = 0x1fa400


# instance fields
.field private mBackFakeCameraSupport:Z

.field protected mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mFrontFakeCameraSupport:Z

.field private mFullSizeSupport:Z

.field private mHighDefinitionMode:Z

.field private final mInstantZoomRatios:[Ljava/lang/String;

.field private mIsAIFrame:Z

.field private mIsAIZoomSR:Z

.field private mIsPaused:Z

.field private mLastCaptureTime:J

.field private mNeedReplaceWide:Z

.field private mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

.field private final mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

.field private mStableStatus:I

.field private mSuperNightSwitch:Z


# direct methods
.method public static synthetic $r8$lambda$wDm6jyMdopX2otUIN2zxx8dKME4(Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->lambda$init$0(I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)V
    .registers 7

    .line 178
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/FilterHookMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    .line 164
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFullSizeSupport:Z

    .line 166
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mNeedReplaceWide:Z

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mSuperNightSwitch:Z

    .line 168
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsAIFrame:Z

    .line 169
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsAIZoomSR:Z

    const-wide/16 v0, 0x0

    .line 172
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mLastCaptureTime:J

    .line 174
    iput p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableStatus:I

    .line 179
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 180
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz p4, :cond_27

    .line 182
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 184
    :cond_27
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->readFakeNightSceneLensSupport(Landroid/content/res/Resources;)V

    .line 185
    new-instance p1, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    .line 186
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    if-eqz p3, :cond_3c

    new-instance p3, Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    sget-object p4, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-direct {p3, p4}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;-><init>(Landroid/content/Context;)V

    goto :goto_41

    :cond_3c
    new-instance p3, Lcom/transsion/camera/app/common/gsensor/StableMonitorStub;

    invoke-direct {p3}, Lcom/transsion/camera/app/common/gsensor/StableMonitorStub;-><init>()V

    :goto_41
    invoke-direct {p1, p3}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;-><init>(Lcom/transsion/camera/app/common/gsensor/IStableMonitor;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    .line 188
    sget p1, Lcom/transsion/camera/R$array;->asd_instant_zoom:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mInstantZoomRatios:[Ljava/lang/String;

    return-void
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .registers 1

    .line 485
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method private currentModeSupportSAT(ZLandroid/content/Context;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 971
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result p0

    return p0
.end method

.method private doActionWithStorageUnmounted()V
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->storageUnMount()V

    .line 359
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private getSwitchCameraId()Ljava/lang/String;
    .registers 7

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->high_definition_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return-object v1

    .line 465
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_super_definition"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v2

    .line 467
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    .line 468
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_camera_zoom"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->convertZoom(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v4

    .line 470
    const-string v5, "off"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_4b

    .line 473
    :cond_45
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object v2

    .line 475
    :goto_4b
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_53

    :cond_52
    move-object v1, v2

    .line 478
    :goto_53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSwitchCameraId] openedCameraId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " superDefinitionValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " switchCameraId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private isFakeDualLens()Z
    .registers 3

    .line 941
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mBackFakeCameraSupport:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_e
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFrontFakeCameraSupport:Z

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private isFlashSnapLiteEnabled()Z
    .registers 1

    .line 1158
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFlashSnapLiteEnable:Z

    return p0
.end method

.method private isFlashSnapLiteOn()Z
    .registers 2

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_best_moment_detect"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFlashSnapLiteVisible()Z
    .registers 4

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_bm_detect_icon_visible"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFullSizeMode(Z)Z
    .registers 2

    .line 836
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFullSizeSupport:Z

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private isHDCameraIDSupport(Z)Z
    .registers 2

    if-nez p1, :cond_10

    .line 541
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_10
    if-eqz p1, :cond_22

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private isLowMemoryInSuperDefinition()Z
    .registers 5

    .line 603
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIs108MInLowPlatform:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 606
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isDefinitionBillionOn()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mMemSize:I

    const/16 v2, 0xfa0

    if-ge v0, v2, :cond_13

    const/4 v1, 0x1

    .line 607
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isLowMemoryInSuperDefinition] billionDefinition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isDefinitionBillionOn()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", limitIn4GbMemory: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private isSuperDefinition200MEnabled()Z
    .registers 5

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 587
    const-string v2, "key_super_definition"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    const-string v2, "billion"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    return v1

    .line 593
    :cond_1e
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    const v3, 0xbebc200

    if-lt v2, v3, :cond_31

    const/4 v1, 0x1

    .line 595
    :cond_31
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSuperDefinition200MEnabled] size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ret: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4f
    return v1
.end method

.method private isSuperDefinitionEnabled()Z
    .registers 5

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "super definition value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_super_definition"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "billion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p0, 0x0

    return p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$init$0(I)V
    .registers 8

    .line 278
    iget v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableStatus:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_7

    if-ne v1, p1, :cond_b

    :cond_7
    if-eq v1, v0, :cond_42

    if-ne v1, p1, :cond_42

    .line 280
    :cond_b
    iput p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableStatus:I

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_42

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tripodModeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, p1, :cond_24

    move v5, v4

    goto :goto_25

    :cond_24
    move v5, v3

    :goto_25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-ne v1, p1, :cond_34

    move v3, v4

    :cond_34
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->tripodModeChanged(Z)V

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p1, "key_asd"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method private needRestZoomValue(Ljava/lang/String;)Z
    .registers 5

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_camera_zoom"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v1

    .line 525
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_2c

    .line 529
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt p1, v1, :cond_2c

    if-eqz p0, :cond_2c

    if-eqz v2, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method private needSuperDefinition(Landroid/content/Context;Z)Z
    .registers 5

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->high_definition_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    .line 536
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$bool;->is_support_full_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFullSizeSupport:Z

    .line 537
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFullSizeMode(Z)Z

    move-result p1

    if-nez p1, :cond_2b

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    if-eqz p1, :cond_2b

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isHDCameraIDSupport(Z)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method private readFakeNightSceneLensSupport(Landroid/content/res/Resources;)V
    .registers 4

    .line 923
    sget v0, Lcom/transsion/camera/R$integer;->asd_night_scene_camera_type:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v1, 0x2

    if-eq p1, v1, :cond_15

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10

    return-void

    .line 932
    :cond_10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFrontFakeCameraSupport:Z

    .line 933
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mBackFakeCameraSupport:Z

    return-void

    .line 929
    :cond_15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mBackFakeCameraSupport:Z

    return-void

    .line 926
    :cond_18
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFrontFakeCameraSupport:Z

    return-void
.end method

.method private setFlashSnapLiteStatus(Z)V
    .registers 2

    .line 1154
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFlashSnapLiteEnable:Z

    return-void
.end method

.method private updateJpegExif([B)V
    .registers 4

    .line 1124
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsAIFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1125
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    const-string v0, ";ai_frame"

    invoke-static {p1, p0, v0}, Lcom/transsion/camera/utils/exif/ExifTools;->extendExifStringValue([BILjava/lang/String;)[B

    move-result-object p0

    .line 1127
    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 1130
    :cond_12
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsAIZoomSR:Z

    if-eqz p0, :cond_22

    .line 1131
    sget p0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    const-string v0, ";ai_zoom"

    invoke-static {p1, p0, v0}, Lcom/transsion/camera/utils/exif/ExifTools;->extendExifStringValue([BILjava/lang/String;)[B

    move-result-object p0

    .line 1133
    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    return-void
.end method


# virtual methods
.method public bridge synthetic buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 1

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->buildCaptureInfo()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildCaptureInfo()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;
    .registers 6

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    new-instance v1, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;-><init>(IZZLjava/lang/String;)V

    .line 948
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    if-eqz p0, :cond_1e

    .line 949
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->updateCaptureCount(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V

    :cond_1e
    return-object v1
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;
    .registers 2

    .line 956
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method protected currentModeNeedNewCaptureAnimation()Z
    .registers 4

    .line 1163
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSupportNewCaptureAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3a

    .line 1168
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_super_night_lite"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1169
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getSuperNightLiteCountDownAnimaEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1170
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Super night lite on, currentModeNeedNewCaptureAnimation : false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1173
    :cond_2a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1174
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Live photo on, currentModeNeedNewCaptureAnimation : false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_38
    const/4 p0, 0x1

    return p0

    .line 1164
    :cond_3a
    :goto_3a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "currentModeNeedNewCaptureAnimation : false"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public currentModeSupportLivePhoto()Z
    .registers 1

    .line 198
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    return p0
.end method

.method protected currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 5

    if-eqz p1, :cond_1b

    if-nez p2, :cond_5

    goto :goto_1b

    .line 1218
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/app/common/R$bool;->ultra_hd_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1220
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->currentSettingSupportSATForAsdMode(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    return p0

    .line 1222
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method protected currentSettingSupportSATForAsdMode(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 5

    if-nez p2, :cond_b

    .line 1228
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "currentSettingSupportSATForAsdMode: controller is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1231
    :cond_b
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSwitchByUser:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_29

    .line 1232
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentSettingSupportSATForAsdMode mSwitchByUser:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSwitchByUser:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 1235
    :cond_29
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    if-eqz p1, :cond_46

    .line 1236
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentSettingSupportSATForAsdMode mModeSwitch:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 1239
    :cond_46
    const-string p1, "key_super_definition"

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1240
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentSettingSupportSATForAsdMode superDefinitionValue:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method protected getAspectTolerance()D
    .registers 3

    .line 815
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->ai_cam_aspect_tolerance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_12

    .line 817
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getAspectTolerance()D

    move-result-wide v0

    return-wide v0

    :cond_12
    float-to-double v0, v0

    return-wide v0
.end method

.method protected getBackMainCameraId()Ljava/lang/String;
    .registers 5

    .line 1209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1210
    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    .line 1209
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getBackMaxZoomRatio()I
    .registers 1

    .line 1204
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMaxZoomRatio:I

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 7

    .line 1187
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mInstantZoomRatios:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setInstantZoomRatios([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x80

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x8

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    .line 1188
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    .line 1191
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->AsdSupportFiveItems()Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v1, 0x3

    .line 1192
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfoByType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v2

    .line 1193
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getBaseRatio()I

    move-result v4

    .line 1194
    new-instance v5, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-direct {v5}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;-><init>()V

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setBaseRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v5

    mul-int/2addr v4, v3

    .line 1195
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->getBackMaxZoomRatio()I

    move-result p0

    const/4 v3, 0x1

    invoke-virtual {v5, v4, p0, v3}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setRatioRange(IIZ)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object p0

    .line 1196
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setLensType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object p0

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object p0

    .line 1197
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getTeleFocalLength2X()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setFocalLength([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object p0

    .line 1194
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ZoomConfig;->addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;

    :cond_53
    return-object v0
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .registers 7

    .line 868
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 869
    :goto_d
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFullSizeMode(Z)Z

    move-result v0

    const-string v3, "off"

    if-nez v0, :cond_56

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_super_definition"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    if-nez v4, :cond_56

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSuperDefinitionSupport()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 872
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when superDefinition is not off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 873
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 874
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->super_definition_continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 878
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_filter"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_95

    const-string v4, "0"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_95

    const-string v4, "-1"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_95

    .line 880
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when filter is not off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 881
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 882
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->filter_continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 885
    :cond_95
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_flash"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "Continuous shot is not support when Flash is not off: "

    if-nez v4, :cond_ca

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 887
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 888
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 889
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->flash_continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 892
    :cond_ca
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_flash_facade"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_fd

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fd

    .line 894
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 895
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 896
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->flash_continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 899
    :cond_fd
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 900
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v2

    .line 901
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v3

    .line 902
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v4

    .line 903
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_135

    .line 904
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_135

    .line 905
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v0

    if-eqz v0, :cond_132

    goto :goto_135

    .line 911
    :cond_132
    const-string p0, ""

    return-object p0

    .line 906
    :cond_135
    :goto_135
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Continuous shot is not support when wide camera on"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 907
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 908
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$string;->continuous_shot_not_supported:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 3

    .line 413
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    .line 414
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_11
    move p0, v0

    goto :goto_15

    :cond_13
    const/16 p0, 0x8

    .line 424
    :goto_15
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_47

    .line 425
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_47

    .line 426
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_47

    .line 427
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_47

    .line 428
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/qrcodedetection/QRcodeAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_48

    :cond_47
    const/4 v0, 0x4

    .line 434
    :cond_48
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

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

    .line 824
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 825
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFpsRangeReduce:Z

    if-eqz v2, :cond_31

    .line 827
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->supportPostAlgo()Z

    move-result p0

    if-nez p0, :cond_26

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz p0, :cond_23

    goto :goto_26

    :cond_23
    const/16 p0, 0x1a

    goto :goto_28

    :cond_26
    :goto_26
    const/16 p0, 0x1c

    .line 830
    :goto_28
    new-instance v0, Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    :cond_31
    return-object v0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7

    .line 619
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_f

    .line 622
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 624
    :goto_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 625
    const-string v3, "key_face_detection_enhance"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v3, "key_mood_light"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    const-string v3, "key_tran_plugin"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    const-string v3, "key_shutter_sound_optional"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v3, "key_color_style"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    const-string v3, "key_filter"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    const-string v3, "key_distortion_correction"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    const-string v3, "key_human_detection"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    const-string v3, "key_animal_eye_detection"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    const-string v3, "key_eye_detection"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    const-string v3, "key_auto_focus_switch"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v3, "key_asd"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    const-string v3, "key_dxo_scene_detection"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    const-string v3, "key_hdr"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    const-string v3, "key_moon_detection"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    const-string v3, "key_ai_shutter"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    const-string v4, "key_touch_capture"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->currentModeSupportLivePhoto()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 643
    const-string v4, "key_live_photo"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_74
    const-string v4, "key_night_3dnr"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    const-string v4, "key_secondary_screen"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    const-string v4, "key_setting_skin_optimization"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    const-string v4, "key_lens_correction"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    const-string v4, "key_activity_orientation"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    const-string v4, "key_celebrity_scene"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v0, v1, :cond_99

    .line 652
    const-string v4, "key_auto_macro_switch"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_99
    if-ne v0, v1, :cond_9d

    move v4, v1

    goto :goto_9e

    :cond_9d
    const/4 v4, 0x0

    .line 654
    :goto_9e
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->needSuperDefinition(Landroid/content/Context;Z)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 655
    const-string v4, "key_super_definition"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_a9
    const-string v4, "key_super_resolution"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const-string v4, "key_smile_detection"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    const-string v4, "key_gesture_detection"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    const-string v4, "key_voice_detection"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    const-string v4, "key_fingerprint_capture"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    const-string v4, "key_asd_enhance"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    const-string v4, "key_night_hawk"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    const-string v4, "key_portraitmode_enhance"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->supportPostAlgo()Z

    move-result v4

    if-nez v4, :cond_df

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz v4, :cond_e4

    .line 666
    :cond_df
    const-string v4, "ai_raw_lite"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_e4
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFakeDualLens()Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 669
    const-string v4, "key_fake_asd_camera"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_ef
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/transsion/camera/R$integer;->mild_beauty_type:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-ne v0, v1, :cond_117

    .line 673
    const-string v4, "key_ai_group_photo"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    const-string v4, "key_horizon_switch_wide"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    if-eq p1, v4, :cond_10b

    const/4 v4, 0x3

    if-ne p1, v4, :cond_11e

    .line 675
    :cond_10b
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result p1

    if-eqz p1, :cond_11e

    .line 676
    const-string p1, "key_mild_beauty"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11e

    :cond_117
    if-nez v0, :cond_11e

    .line 679
    const-string p1, "key_micro_pan_tilt_calibration"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    :cond_11e
    :goto_11e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p1

    if-nez p1, :cond_126

    if-eq v0, v1, :cond_12e

    .line 682
    :cond_126
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    const-string p1, "key_ai_shutter_switch"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_12e
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isFrontCameraSupport()Z

    move-result p1

    if-nez p1, :cond_139

    .line 686
    const-string p1, "key_camera_click_zoom"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_139
    const-string p1, "key_edit_watermark"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    const-string p1, "key_gold_watermark"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    const-string p1, "key_pro_watermark"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    const-string p1, "key_super_flash"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    const-string p1, "key_setting_mode_ultrazoom"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    const-string p1, "key_super_night_light"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    const-string p1, "key_super_night_lite"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    const-string p1, "key_auto_color_level"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    const-string p1, "key_taint_detection"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    const-string p1, "key_setting_qrcode"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    const-string p1, "key_image_style"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    const-string p1, "key_zoom_eis"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    const-string p1, "key_in_sensor_zoom"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    const-string p1, "key_airaw_tf"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlareCaptureSupport()Z

    move-result p1

    if-eqz p1, :cond_18a

    .line 703
    const-string p1, "key_flare_capture"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_18a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isGroupCaptureSupport()Z

    move-result p1

    if-eqz p1, :cond_195

    .line 706
    const-string p1, "key_group_capture"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_195
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isSupportMotionCapture()Z

    move-result p0

    if-eqz p0, :cond_1a0

    .line 709
    const-string p0, "key_best_moment_detect"

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_1a0
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isAIFrameSupport()Z

    move-result p0

    if-eqz p0, :cond_1b1

    if-nez v0, :cond_1b1

    .line 713
    const-string p0, "key_ai_frame"

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_1b1
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isAIZoomSRSupport()Z

    move-result p0

    if-eqz p0, :cond_1c2

    if-nez v0, :cond_1c2

    .line 717
    const-string p0, "key_ai_zoom_sr"

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_1c2
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p0

    if-eqz p0, :cond_1db

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getAsdConfigFaceAttribute()Z

    move-result p0

    if-eqz p0, :cond_1db

    .line 721
    const-string p0, "key_gender_attribute_value"

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_1db
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 725
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected getModeLimitedPreviewSizeHeight()I
    .registers 1

    .line 809
    sget p0, Lcom/transsion/camera/R$integer;->ai_cam_reduce_preview_size_height:I

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 5

    .line 546
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-nez v0, :cond_72

    .line 548
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteOn()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteVisible()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 549
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeRestriction;->getFlashSnapLiteRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "PHOTO"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "key_flash_facade"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 551
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string/jumbo v1, "torch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5b

    goto :goto_5c

    :cond_5b
    return-object v0

    .line 552
    :cond_5c
    :goto_5c
    const-string p0, "off, on, auto, torch"

    invoke-virtual {v0, v2, v3, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 556
    :cond_62
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isSuperDefinitionEnabled()Z

    move-result p0

    if-eqz p0, :cond_6d

    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeRestriction;->getSuperDefinitionRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0

    :cond_6d
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0

    :cond_72
    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 986
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 987
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$bool;->sat_replace_wide:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mNeedReplaceWide:Z

    .line 988
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p2

    .line 989
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mNeedReplaceWide:Z

    if-eqz p3, :cond_34

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2c

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_34

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 990
    :cond_2c
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p1

    :cond_34
    const/4 p2, 0x0

    .line 993
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    return-object p1
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 775
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v0

    .line 776
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v3

    .line 779
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 782
    :cond_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_3e
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 783
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    sub-double/2addr v7, v0

    .line 784
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v9

    if-eqz v9, :cond_66

    const-wide v9, 0x3f947ae147ae147bL    # 0.02

    goto :goto_6b

    :cond_66
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    :goto_6b
    cmpg-double v7, v7, v9

    if-gtz v7, :cond_3e

    .line 785
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    const v8, 0x1fa400

    if-gt v7, v8, :cond_3e

    .line 786
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v9

    mul-int/2addr v7, v9

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v9, v7, v5

    if-gtz v9, :cond_3e

    move-object v4, v3

    move-wide v5, v7

    goto :goto_3e

    :cond_93
    if-eqz v4, :cond_a8

    .line 796
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_a7

    .line 797
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_a7

    return-object p0

    :cond_a7
    return-object v4

    .line 801
    :cond_a8
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 613
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method protected hideRecordingUIImmediately()V
    .registers 1

    .line 245
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->hideRecordingUIImmediately()V

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->hideRecordingUIImmediately()V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 272
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/FilterHookMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 273
    new-instance p5, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-direct {p5, p1, p3, p2, p4}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    .line 274
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p2

    invoke-virtual {p5, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->setScreenFormType(II)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->init()V

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->init()V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    new-instance p2, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 288
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperdefinition108mInLowPlatform:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIs108MInLowPlatform:Z

    .line 289
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    return-void
.end method

.method protected initContinuousShot(Landroid/content/Context;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;
    .registers 5

    .line 444
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    sget v1, Lcom/transsion/camera/R$integer;->max_continuous_shot_number:I

    sget v2, Lcom/transsion/camera/R$raw;->camera_continuous_shutter:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/content/Context;II)V

    return-object v0
.end method

.method protected isContinuousShotSupport()Z
    .registers 5

    .line 841
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 842
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContinuousShotSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 845
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 846
    :goto_2a
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFullSizeMode(Z)Z

    move-result v0

    if-nez v0, :cond_69

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_super_definition"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    const-string v3, "off"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    if-nez v3, :cond_69

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSuperDefinitionSupport()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 849
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when superDefinition is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 854
    :cond_69
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_filter"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "0"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "-1"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 856
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when filter is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 860
    :cond_9e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 862
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object p0

    .line 863
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method protected isFlareCaptureSupport()Z
    .registers 5

    .line 1004
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlareCaptureSupport()Z

    move-result v0

    .line 1005
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFlareCaptureSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_22

    const/4 p0, 0x0

    return p0

    .line 1010
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeInteractiveSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.ui.setting.flarecapture.FlareCaptureSettingUIEntry"

    .line 1009
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1012
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasFlareCaptureUIEntry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method protected isGroupCaptureSupport()Z
    .registers 5

    .line 1019
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isGroupCaptureSupport()Z

    move-result v0

    .line 1020
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGroupCaptureSupport, groupCaptureSupport:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_22

    const/4 p0, 0x0

    return p0

    .line 1026
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeInteractiveSettingUIEntries()[Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.ui.setting.groupcapture.GroupCaptureSettingUIEntry"

    .line 1025
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_6

    goto :goto_29

    .line 979
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v0

    .line 980
    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$bool;->sat_replace_wide:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mNeedReplaceWide:Z

    if-eqz v3, :cond_29

    if-eqz v1, :cond_29

    .line 981
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v2

    :cond_29
    :goto_29
    return v0
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 5

    .line 745
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->currentModeSupportLivePhoto()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLivePhotoOn()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 749
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 750
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isNeedDeviceCaptureSound()Z

    move-result v0

    if-nez v0, :cond_21

    return v1

    .line 756
    :cond_21
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isGroupCapturing()Z

    move-result v0

    const-string v2, "on"

    const-string v3, "key_super_night_lite"

    if-eqz v0, :cond_43

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mSuperNightSwitch:Z

    if-eqz v3, :cond_3c

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    return v1

    .line 762
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mGroupCaptureManager:Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->isCaptureSoundNeeded()Z

    move-result p0

    return p0

    .line 765
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 767
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mSuperNightSwitch:Z

    if-nez p0, :cond_55

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    :cond_55
    const-string p0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    :cond_5d
    const/4 p0, 0x1

    return p0

    :cond_5f
    return v1

    .line 770
    :cond_60
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isNeedDeviceCaptureSound()Z

    move-result p0

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .registers 3

    .line 563
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isSuperDefinition200MEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 566
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isLowMemoryInSuperDefinition()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 569
    :cond_f
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result p0

    return p0
.end method

.method protected isSuperDefinitionOn()Z
    .registers 2

    .line 998
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_super_definition"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 999
    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "billion"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method protected isSupportMotionCapture()Z
    .registers 2

    .line 1032
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 5

    .line 961
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->currentModeSupportSAT(ZLandroid/content/Context;)Z

    move-result p2

    .line 962
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    .line 963
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[isSupportSAT] modeSupport:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " settingSupport:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_2c

    if-eqz p1, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method protected isZoomFocalLengthSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 1139
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1140
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz p0, :cond_2c

    .line 1141
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->notifyCameraOperateAction(I)V

    :cond_2c
    return-void
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 12

    .line 1086
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->getInstance()Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->getPhotoTaskData(J)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1088
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isAIFrame()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsAIFrame:Z

    .line 1089
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isAIZoomSR()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsAIZoomSR:Z

    .line 1091
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPictureTaken photoTaskData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsAIFrame : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsAIFrame:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsAIZoomSR : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsAIZoomSR:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz v0, :cond_90

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteEnabled()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1095
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->notifyPictureTaken()V

    .line 1096
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0, p4, p5}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->findCaptureInfoByTimestamp(J)Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_60

    .line 1099
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyPictureTaken, null motionCaptureInfo, return!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1102
    :cond_60
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v2, p4, p5, v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->needSaveJpeg(JLcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;)Z

    move-result v2

    if-nez v2, :cond_6d

    const/4 p1, 0x1

    .line 1105
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult(Z)V

    return v1

    .line 1108
    :cond_6d
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    iget-wide v2, v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->removeMotionCaptureInfo(J)V

    .line 1109
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->analyticsCapture(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MotionCaptureInfo;)V

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0, p4, p5}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->getMotionCaptureInfoTimeStamp(J)J

    move-result-wide p4

    .line 1112
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZIJ)I

    .line 1113
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->updateJpegExif([B)V

    .line 1115
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;

    move p3, p2

    const/4 p2, 0x0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V

    const/4 p0, -0x1

    return p0

    .line 1118
    :cond_90
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->updateJpegExif([B)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1119
    invoke-super/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZIJ)I

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Z)V
    .registers 2

    .line 389
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onConfigurationChanged(Z)V

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    if-eqz p0, :cond_b

    const/4 p1, 0x1

    .line 391
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->leave(Z)V

    :cond_b
    return-void
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .registers 1

    .line 439
    new-instance p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeHelper;-><init>()V

    return-object p0
.end method

.method public onFirstSteadyFrame()V
    .registers 1

    .line 193
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/FilterHookMode;->onFirstSteadyFrame()V

    return-void
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    .line 1147
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 1148
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz p3, :cond_12

    .line 1149
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteVisible()Z

    move-result p0

    invoke-virtual {p3, p1, p2, v0, p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;ZZ)V

    :cond_12
    return-void
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 3

    .line 1078
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    .line 1079
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1080
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onModeCaptureFailed()V

    :cond_12
    return-void
.end method

.method public onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 7

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeCaptureStarted, isFlashSnapLiteOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz v0, :cond_4c

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteOn()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteVisible()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    .line 1062
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->setFlashSnapLiteStatus(Z)V

    .line 1063
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isSilentCaptureType()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1064
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 1065
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->setSilentCaptureTimeStampInfo(J)V

    return-void

    .line 1067
    :cond_43
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 1068
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onModeCaptureStarted(J)V

    return-void

    .line 1071
    :cond_4c
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    const/4 p1, 0x0

    .line 1072
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->setFlashSnapLiteStatus(Z)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 364
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->setOrientation(I)V

    return-void
.end method

.method public onRecording(I[F)V
    .registers 7

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    if-nez v0, :cond_5

    return-void

    .line 255
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->recording()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_33

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "left space in not enough, can not record video."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_2c

    const/16 p2, 0xe6

    .line 259
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 261
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->leave(Z)V

    return-void

    .line 265
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->onRecording(I[F)V

    .line 267
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onRecording(I[F)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 916
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 917
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    if-eqz p0, :cond_a

    .line 918
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->onScreenFormChanged(IZ)V

    :cond_a
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 493
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v0, "key_super_night_lite_switch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 496
    const-string/jumbo v0, "value_super_night_lite_switch_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mSuperNightSwitch:Z

    .line 499
    :cond_14
    const-string v0, "key_super_definition"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 500
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    if-ne v1, v2, :cond_36

    goto :goto_80

    .line 504
    :cond_36
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->currentModeSupportSAT(ZLandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 506
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->getSwitchCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 508
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->needRestZoomValue(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->switchSatCamera(Ljava/lang/String;Z)V

    goto :goto_6b

    .line 511
    :cond_54
    const-string v0, "key_fold_switch_preview"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    if-eqz v0, :cond_6b

    .line 513
    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->onScreenFormChanged(IZ)V

    .line 517
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz v0, :cond_80

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteOn()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteVisible()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 518
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    :goto_80
    return-void
.end method

.method public onSettingReady()V
    .registers 1

    .line 449
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz p0, :cond_a

    .line 454
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onSettingReady()V

    :cond_a
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 4

    .line 1051
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/FilterHookMode;->onShutterClick(II)Z

    move-result p2

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteOn()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1053
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->onShutterClick(IZ)Z

    move-result p0

    return p0

    :cond_1b
    return p2
.end method

.method protected onShutterClickBefore(I)Z
    .registers 10

    .line 203
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdModeShutterDelaySupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 205
    iget-wide v4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mLastCaptureTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x352

    cmp-long v0, v4, v6

    if-gez v0, :cond_18

    return v1

    .line 208
    :cond_18
    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mLastCaptureTime:J

    .line 210
    :cond_1a
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$bool;->dsp_lowlight_support:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 214
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v2, :cond_4d

    .line 215
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 216
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 215
    const-string v4, "key_dsp_lowlight_mode"

    const-string v5, "off"

    invoke-virtual {v2, v4, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_4e

    :cond_4d
    move v2, v1

    :goto_4e
    if-eqz v0, :cond_53

    if-eqz v2, :cond_53

    const/4 v1, 0x1

    .line 219
    :cond_53
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isSuperDefinition200MEnabled()Z

    move-result v0

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSuperDefinition108MInLowPlatform()Z

    move-result v2

    if-nez v1, :cond_67

    if-nez v0, :cond_67

    if-nez v2, :cond_67

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isLowMemoryInSuperDefinition()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 222
    :cond_67
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_6f
    return p1
.end method

.method public onThumbNailTypeConfirmed(I[IJ)V
    .registers 8

    .line 1037
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1038
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutterPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getCurShutterPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getCurShutterPriority()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_29

    goto :goto_3e

    .line 1043
    :cond_29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onThumbNailTypeConfirmed(I[IJ)V

    .line 1044
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz p1, :cond_3e

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFlashSnapLiteEnabled()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 1045
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->isTimeLongAlgoScene([I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    :cond_3e
    :goto_3e
    return-void
.end method

.method public pause()V
    .registers 6

    .line 370
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/FilterHookMode;->pause()V

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsPaused:Z

    const-wide/16 v1, 0x0

    .line 372
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mLastCaptureTime:J

    const/4 v1, 0x0

    .line 373
    iput v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableStatus:I

    .line 374
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->stop()V

    .line 375
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    .line 376
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 378
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    if-eqz v0, :cond_29

    .line 379
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->leave(Z)V

    .line 381
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xd6

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz p0, :cond_37

    .line 383
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->pause()V

    :cond_37
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
    .registers 4

    .line 294
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/FilterHookMode;->resume()V

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsPaused:Z

    const-wide/16 v1, 0x0

    .line 296
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mLastCaptureTime:J

    .line 297
    iput v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableStatus:I

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->start()V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    if-eqz v0, :cond_18

    .line 300
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->resume()V

    .line 302
    :cond_18
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isFrontCameraSupport()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 305
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz p0, :cond_34

    .line 306
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->resume()V

    :cond_34
    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 3

    .line 341
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz p1, :cond_13

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_13
    return-void
.end method

.method protected startOrStopQuickRecording(Ljava/lang/String;)V
    .registers 6

    .line 230
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->startOrStopQuickRecording(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startOrStopQuickRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mIsPaused:Z

    if-eqz v0, :cond_f

    return-void

    .line 235
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_28

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "left space in not enough, can not record video."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    return-void

    .line 240
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->startOrStop(Ljava/lang/String;)V

    return-void
.end method

.method public supportPostAlgo()Z
    .registers 1

    .line 730
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p0

    return p0
.end method

.method public supportPostAlgoDeferRequest()Z
    .registers 2

    .line 735
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shot:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->supportPostAlgo()Z

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

    .line 312
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/FilterHookMode;->unInit()V

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableStatus:I

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mStableMonitorProxy:Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->unInit()V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    if-eqz v0, :cond_18

    .line 317
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->unInit()V

    .line 319
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    if-eqz v0, :cond_2b

    .line 320
    const-string v0, "capture_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 321
    const-string v0, "key_best_moment_detect"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mMotionCaptureManager:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->unInit()V

    :cond_2b
    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .registers 5

    .line 328
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updatePreviewSize(Landroid/util/Size;)V

    if-eqz p1, :cond_4d

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 331
    const-string v0, "0"

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    .line 331
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 334
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    new-instance v1, Lcom/transsion/camera/app/common/mode/RecorderParam;

    invoke-direct {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/RecorderParam;-><init>(Landroid/util/Size;Landroid/media/CamcorderProfile;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->config(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    :cond_4d
    return-void
.end method

.method public updateQcomJpegPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 397
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->getDataFlowType()I

    move-result v0

    .line 398
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->rawCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need qcom jpeg image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 402
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    return-object v1

    .line 406
    :cond_1e
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateQcomJpegSurface(Landroid/util/Size;IZZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 4

    .line 350
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mQuickVideoManager:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_e

    .line 353
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->doActionWithStorageUnmounted()V

    :cond_e
    return-void
.end method
