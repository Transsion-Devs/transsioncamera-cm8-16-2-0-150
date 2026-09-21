.class public Lcom/transsion/camera/app/common/setting/SettingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISettingManager;
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# instance fields
.field private mAllSettingIsCreated:Z

.field private mBatteryStatus:I

.field private mCameraFacing:I

.field private mCameraId:Ljava/lang/String;

.field private mCameraSensorOrientation:I

.field private mContext:Landroid/content/Context;

.field private mCurrentModeSettingGroup:J

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

.field private volatile mInitialized:Z

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field protected mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

.field private mModeFeatures:[Ljava/lang/String;

.field private mModeKey:Ljava/lang/String;

.field private mPreviousSettingGroup:J

.field private mRealCameraId:Ljava/lang/String;

.field private final mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

.field protected mScreenFormType:I

.field private mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

.field private mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

.field private mSettingFeatureHandler:Landroid/os/Handler;

.field private mSettingFeatureProvider:Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;

.field private mSettingLock:Ljava/lang/Object;

.field private final mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

.field private mSettings:Ljava/util/List;

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStreamIds:[I

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mTemperatureStatus:I


# direct methods
.method public static synthetic $r8$lambda$Af1fsxaWWzhJxQGJ2QLbrX545vw(Lcom/transsion/camera/app/common/setting/SettingManager;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->lambda$setModeFeatureConfig$7(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bfy_AqrjbfJuia-AjT-jIuzqS0M(Lcom/transsion/camera/app/common/setting/SettingManager;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->lambda$updateScreenFormType$2(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1xFx2F9N72hjDCogqJhkSr2d5Y([Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 2

    .line 383
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeUpdate([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OZeZhGKLV1k_gE8_3c_LBJBbp3Y(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 3

    .line 377
    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_wtXSb02o_5DLGCOw5d6i157mOc(Lcom/transsion/camera/app/common/setting/SettingManager;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingManager;->lambda$createStartSettings$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$cT7WJ8Gwu-Wub1pLyDagEc4nyNA(Lcom/transsion/camera/app/common/setting/SettingManager;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->lambda$bindMode$5(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vwqU-Pb25A3zwSwUAz5vvOnK0qQ(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 2

    .line 409
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeClosed(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x-q7RUaM4Qg3WduyuruTZo4fnek()V
    .registers 2

    const/16 v0, -0x14

    .line 92
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 93
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setVipTranSched(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    .line 47
    new-instance v1, Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 48
    new-instance v1, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;-><init>(Lcom/transsion/camera/app/common/setting/SettingTable;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    .line 66
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBatteryStatus:I

    .line 70
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTemperatureStatus:I

    .line 72
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenFormType:I

    .line 78
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingLock:Ljava/lang/Object;

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mAllSettingIsCreated:Z

    const-wide/16 v0, 0x0

    .line 80
    iput-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    .line 81
    iput-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    .line 84
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 85
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    .line 86
    new-instance v0, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingFeatureProvider:Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SettingFeatureThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingFeatureHandler:Landroid/os/Handler;

    .line 91
    new-instance p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createStartSettings(J)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingFeatureHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/setting/SettingManager;J)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initSettings(Ljava/util/List;)V
    .registers 6

    .line 147
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_8f

    .line 152
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    .line 154
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[initSettings] after activeAccess"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_3e

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[initSettings], access active failed, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_3e
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v1, :cond_4f

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initSettings], setting is uninitialized, return"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void

    .line 165
    :cond_4f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 166
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v2

    if-nez v2, :cond_66

    goto :goto_82

    .line 169
    :cond_66
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-interface {v1, v2, p0, v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 170
    iget v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenFormType:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setScreenFromType(I)V

    .line 171
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    .line 172
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    .line 173
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->add(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    goto :goto_53

    .line 175
    :cond_82
    :goto_82
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[initSettings]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_8f
    :goto_8f
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[initSettings], there is no setting created, so return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private isCameraIdDifferent(Ljava/lang/String;)Z
    .registers 3

    .line 363
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 364
    :goto_b
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isDifferentMode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 358
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 359
    :goto_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {v0, p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method private isSameStreamId([I[I)Z
    .registers 7

    const/4 p0, 0x1

    if-ne p1, p2, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_23

    if-nez p2, :cond_a

    goto :goto_23

    .line 457
    :cond_a
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    move v2, p0

    move v1, v0

    .line 461
    :goto_11
    array-length v3, p1

    if-ge v1, v3, :cond_22

    if-eqz v2, :cond_1e

    .line 462
    aget v2, p1, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_1e

    move v2, p0

    goto :goto_1f

    :cond_1e
    move v2, v0

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_22
    return v2

    :cond_23
    :goto_23
    return v0
.end method

.method private synthetic lambda$bindMode$5(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 4

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeFeatures:[Ljava/lang/String;

    invoke-interface {p3, p1, p2, p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createStartSettings$1(J)V
    .registers 8

    .line 114
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_10

    .line 115
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelVipTranSched(I)V

    return-void

    .line 119
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 121
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingFeatureProvider:Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;

    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, p2}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->createStartSettings(Landroid/content/Context;J)Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->initSettings(Ljava/util/List;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createSettings cost time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_13 .. :try_end_43} :catchall_4f

    .line 127
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelVipTranSched(I)V

    return-void

    :catchall_4f
    move-exception p0

    .line 126
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method private synthetic lambda$setModeFeatureConfig$7(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 2

    .line 1038
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    return-void
.end method

.method private synthetic lambda$updateScreenFormType$2(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .registers 2

    .line 142
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenFormType:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setScreenFromType(I)V

    return-void
.end method

.method private updateFacingAndOrientation()V
    .registers 3

    .line 433
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    .line 435
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraFacing:I

    .line 436
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraSensorOrientation:I

    return-void
.end method

.method private updateModeSettings([Ljava/lang/String;)V
    .registers 6

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeSettings] mCurrentModeSettingGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object p0

    .line 383
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda10;-><init>([Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public beforeUnInit()V
    .registers 2

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->forEachSettings(Ljava/util/function/Consumer;)Z

    return-void
.end method

.method public bindMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bindMode] modeKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentModeSettingGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    iget-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    iput-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    .line 391
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    .line 392
    iput-object p4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeFeatures:[Ljava/lang/String;

    .line 393
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result p4

    if-eqz p4, :cond_45

    .line 394
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    .line 395
    const-string p3, "1"

    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    goto :goto_47

    .line 397
    :cond_45
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 399
    :goto_47
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateFacingAndOrientation()V

    .line 401
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object p3

    .line 402
    new-instance p4, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda7;

    invoke-direct {p4, p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/common/setting/SettingManager;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)V

    invoke-interface {p3, p4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public changeCameraId(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[changeCameraId] cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 370
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    .line 371
    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    goto :goto_25

    .line 373
    :cond_23
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 375
    :goto_25
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateFacingAndOrientation()V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object p0

    .line 377
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 6

    .line 1000
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1001
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 1003
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V

    :cond_25
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 3

    const/4 v0, 0x0

    .line 909
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I
    .registers 14

    .line 914
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviousSettingGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentModeSettingGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 916
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_d4

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    iget-wide v4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3b

    goto/16 :goto_d4

    .line 920
    :cond_3b
    const-string v0, "configParameters"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 921
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 923
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 925
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v1

    .line 930
    :cond_65
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v2

    .line 931
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_73
    :goto_73
    if-ge v5, v3, :cond_c4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 932
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v7

    if-nez v7, :cond_84

    goto :goto_c4

    :cond_84
    if-eqz p2, :cond_91

    .line 935
    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_91

    goto :goto_73

    .line 939
    :cond_91
    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v7

    if-eqz v7, :cond_9c

    .line 941
    invoke-interface {v7, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v7

    goto :goto_9d

    :cond_9c
    move v7, v1

    :goto_9d
    const/4 v8, 0x1

    if-ne v7, v8, :cond_73

    .line 944
    iget-object v8, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[configParameters], need restartpreview:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", key:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    or-int/2addr v4, v7

    goto :goto_73

    .line 948
    :cond_c4
    :goto_c4
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 949
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 950
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v4

    :cond_d4
    :goto_d4
    return v1
.end method

.method public varargs configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;[Ljava/lang/String;)I
    .registers 14

    .line 956
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParametersByKey]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviousSettingGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentModeSettingGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 958
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_c2

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    iget-wide v4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3b

    goto/16 :goto_c2

    .line 962
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 964
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_5f

    return v1

    :cond_5f
    const/4 v2, 0x0

    if-eqz p2, :cond_b5

    .line 975
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 976
    array-length v4, p2

    move v5, v2

    :goto_6c
    if-ge v2, v4, :cond_b4

    aget-object v6, p2, v2

    .line 977
    iget-object v7, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v7, v6}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object v6

    if-eqz v6, :cond_b1

    .line 978
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7f

    goto :goto_b1

    .line 982
    :cond_7f
    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v7

    if-eqz v7, :cond_8a

    .line 984
    invoke-interface {v7, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v7

    goto :goto_8b

    :cond_8a
    move v7, v1

    :goto_8b
    const/4 v8, 0x1

    if-ne v7, v8, :cond_b1

    .line 987
    iget-object v8, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[configParametersByKey], need restartpreview:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", key:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 987
    invoke-static {v8, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    or-int/2addr v5, v7

    :cond_b1
    :goto_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_b4
    move v2, v5

    .line 993
    :cond_b5
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 994
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParametersByKey]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :cond_c2
    :goto_c2
    return v1
.end method

.method public createAllSettings()V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->isEmpty()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_19

    if-eqz v1, :cond_1b

    .line 184
    :try_start_b
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "wait current mode setting create....."

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_18} :catch_1b
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 190
    :catch_1b
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 5

    .line 1015
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p1

    .line 1016
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p1, :cond_1b

    .line 1017
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 1018
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getISetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraFacing()I
    .registers 1

    .line 424
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraFacing:I

    return p0
.end method

.method public getCameraId()Ljava/lang/String;
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 574
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method public getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;
    .registers 3

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-nez v0, :cond_f

    .line 557
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 559
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-object p0
.end method

.method public getModeKey()Ljava/lang/String;
    .registers 1

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSensorOrientation()I
    .registers 1

    .line 429
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraSensorOrientation:I

    return p0
.end method

.method public getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    return-object p0
.end method

.method public getSettingDeviceConfigurator()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
    .registers 1

    return-object p0
.end method

.method public getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
    .registers 1

    return-object p0
.end method

.method public getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method public getStreamIds()[I
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStreamIds:[I

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/manager/IScreenManager;J)V
    .registers 8

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[init]+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 102
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 103
    invoke-interface {p3}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenFormType:I

    .line 104
    iput-wide p4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    .line 105
    invoke-direct {p0, p4, p5}, Lcom/transsion/camera/app/common/setting/SettingManager;->createStartSettings(J)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[init]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isVipMode()Z
    .registers 1

    .line 1031
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public loadOtherSettings()V
    .registers 3

    .line 132
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mAllSettingIsCreated:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mAllSettingIsCreated:Z

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingFeatureProvider:Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->createOtherSettings(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->initSettings(Ljava/util/List;)V

    :cond_16
    return-void
.end method

.method public modeAndSettingRestrictionDispatchDone()V
    .registers 5

    .line 884
    const-string v0, "modeAndSettingRestrictionDispatchDone"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 889
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 892
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettings:Ljava/util/List;

    if-eqz v1, :cond_49

    .line 893
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 894
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_49

    .line 897
    :cond_45
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->initializedRestrictionDone()V

    goto :goto_32

    .line 901
    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 902
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[modeAndSettingRestrictionDispatchDone]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 4

    .line 1025
    iput p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBatteryStatus:I

    .line 1026
    iput p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTemperatureStatus:I

    return-void
.end method

.method public onCameraClosedBefore()V
    .registers 2

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->forEachSettings(Ljava/util/function/Consumer;)Z

    return-void
.end method

.method public onCaptureEnded()V
    .registers 11

    .line 783
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 786
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 788
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureEnded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v2

    .line 790
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v3

    .line 791
    const-string v4, "ms"

    const-string v5, "onCaptureEnded, cost:"

    if-nez v3, :cond_4d

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 796
    :cond_4d
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v3, v6, v7}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 797
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_5a
    :goto_5a
    if-ge v7, v6, :cond_79

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 798
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v9

    if-nez v9, :cond_6b

    goto :goto_79

    .line 801
    :cond_6b
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v9

    if-eqz v9, :cond_5a

    .line 802
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    goto :goto_5a

    .line 805
    :cond_79
    :goto_79
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 807
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureStarted()V
    .registers 11

    .line 705
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 708
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 710
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureStarted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v2

    .line 712
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v3

    .line 713
    const-string v4, "ms"

    const-string v5, "onCaptureStarted, cost:"

    if-nez v3, :cond_4d

    .line 714
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 718
    :cond_4d
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v3, v6, v7}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 719
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_5a
    :goto_5a
    if-ge v7, v6, :cond_79

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 720
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v9

    if-nez v9, :cond_6b

    goto :goto_79

    .line 723
    :cond_6b
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v9

    if-eqz v9, :cond_5a

    .line 724
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureStart()V

    goto :goto_5a

    .line 727
    :cond_79
    :goto_79
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 729
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStarted()V
    .registers 9

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStarted], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 616
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-eqz v0, :cond_b7

    iget-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    goto/16 :goto_b7

    .line 619
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 621
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewStarted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v2

    .line 623
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto :goto_b7

    .line 627
    :cond_4e
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewStarted mCurrentModeSettingGroup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 628
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 629
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_73
    :goto_73
    if-ge v5, v4, :cond_92

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 630
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v7

    if-nez v7, :cond_84

    goto :goto_92

    .line 633
    :cond_84
    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v7

    if-eqz v7, :cond_73

    .line 634
    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;->onPreviewStarted()V

    goto :goto_73

    .line 637
    :cond_92
    :goto_92
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 639
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPreviewStarted], cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public onPreviewStopped()V
    .registers 7

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStopped], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_1d

    goto :goto_40

    .line 594
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_41

    :goto_40
    return-void

    .line 600
    :cond_41
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewStopped mPreviousSettingGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 602
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_66
    :goto_66
    if-ge v3, v2, :cond_85

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 603
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_77

    goto :goto_85

    .line 606
    :cond_77
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 607
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;->onPreviewStopped()V

    goto :goto_66

    .line 610
    :cond_85
    :goto_85
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public onRecordingEnded()V
    .registers 7

    .line 759
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_5

    goto :goto_28

    .line 763
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingEnded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_29

    :goto_28
    return-void

    .line 769
    :cond_29
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 770
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_36
    :goto_36
    if-ge v3, v2, :cond_55

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 771
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_47

    goto :goto_55

    .line 774
    :cond_47
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getRecordingStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 775
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getRecordingStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;->onRecordingEnd()V

    goto :goto_36

    .line 778
    :cond_55
    :goto_55
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public onRecordingStarted()V
    .registers 7

    .line 735
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_5

    goto :goto_28

    .line 739
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStarted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_29

    :goto_28
    return-void

    .line 745
    :cond_29
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 746
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_36
    :goto_36
    if-ge v3, v2, :cond_55

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 747
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_47

    goto :goto_55

    .line 750
    :cond_47
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getRecordingStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 751
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getRecordingStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;->onRecordingStart()V

    goto :goto_36

    .line 754
    :cond_55
    :goto_55
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public onTakePictureEnded(Z)V
    .registers 12

    .line 645
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 648
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 650
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTakePictureEnded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v2

    .line 652
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v3

    .line 653
    const-string v4, "ms"

    const-string v5, "onTakePictureEnded, cost:"

    if-nez v3, :cond_4d

    .line 654
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 654
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 658
    :cond_4d
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v3, v6, v7}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 659
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_5a
    :goto_5a
    if-ge v7, v6, :cond_79

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 660
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v9

    if-nez v9, :cond_6b

    goto :goto_79

    .line 663
    :cond_6b
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v9

    if-eqz v9, :cond_5a

    .line 664
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->takePictureEnd(Z)V

    goto :goto_5a

    .line 667
    :cond_79
    :goto_79
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onTakePictureStarted()V
    .registers 11

    .line 675
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 678
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 680
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takePictureStart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v2

    .line 682
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v3

    .line 683
    const-string v4, "ms"

    const-string v5, "takePictureStart, cost:"

    if-nez v3, :cond_4d

    .line 684
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 688
    :cond_4d
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v3, v6, v7}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 689
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_5a
    :goto_5a
    if-ge v7, v6, :cond_79

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 690
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v9

    if-nez v9, :cond_6b

    goto :goto_79

    .line 693
    :cond_6b
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v9

    if-eqz v9, :cond_5a

    .line 694
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->takePictureStart()V

    goto :goto_5a

    .line 697
    :cond_79
    :goto_79
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 699
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 7

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_24

    return-void

    .line 297
    :cond_24
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[pause]+"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v2, :cond_4d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 300
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_4d

    .line 303
    :cond_49
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->pause()V

    goto :goto_38

    .line 305
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-eqz v1, :cond_56

    .line 306
    const-string v2, "SettingManager.pause"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->clearAllLocationRequests(Ljava/lang/String;)V

    .line 308
    :cond_56
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[pause]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public postDefaultRestriction(Ljava/util/List;)V
    .registers 5

    .line 522
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_5

    goto :goto_28

    .line 525
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRestriction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_29

    :goto_28
    return-void

    .line 531
    :cond_29
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->dispatchRestoreDefault(Ljava/util/List;)V

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 7

    .line 497
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderKey()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderValue()Ljava/lang/String;

    move-result-object v1

    .line 499
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[postRestriction], headerKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", headerValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " post relation. mInitialized:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 501
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v2, :cond_35

    goto :goto_58

    .line 504
    :cond_35
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postRestriction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v2

    .line 506
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v3

    if-nez v3, :cond_59

    :goto_58
    return-void

    .line 510
    :cond_59
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    if-eqz v3, :cond_60

    .line 511
    invoke-interface {v3, v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;->dispatchStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_60
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->dispatch(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    if-eqz p1, :cond_6c

    .line 515
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;->dispatchDone(Ljava/lang/String;)V

    .line 517
    :cond_6c
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public queryEntryValues(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 481
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryExtStatus(Ljava/lang/String;)I
    .registers 3

    .line 564
    const-string v0, "Battery"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 565
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBatteryStatus:I

    return p0

    .line 566
    :cond_b
    const-string v0, "Temperature"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 567
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTemperatureStatus:I

    return p0

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method public querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 490
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 472
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public resume()V
    .registers 7

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_24

    return-void

    .line 319
    :cond_24
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[resume]+"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v2, :cond_4d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 322
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_4d

    .line 325
    :cond_49
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->resume()V

    goto :goto_38

    .line 327
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[resume]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public screenFlip()Z
    .registers 2

    .line 584
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x7

    if-ne v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public screenPocket()Z
    .registers 2

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x6

    if-ne v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public setCameraCapabilities(Ljava/lang/String;Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 9

    .line 829
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentModeSettingGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 830
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_27

    return-void

    .line 833
    :cond_27
    const-string v0, "setCameraCapabilities"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 836
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 838
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 841
    :cond_51
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 842
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    .line 843
    const-string p1, "1"

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    goto :goto_60

    .line 845
    :cond_5e
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 847
    :goto_60
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateFacingAndOrientation()V

    .line 849
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettings:Ljava/util/List;

    .line 850
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_73
    :goto_73
    if-ge v3, v1, :cond_8e

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 851
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_84

    goto :goto_8e

    .line 854
    :cond_84
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v4

    if-eqz v4, :cond_73

    .line 856
    invoke-interface {v4, p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    goto :goto_73

    .line 859
    :cond_8e
    :goto_8e
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getSettingsKeepSavingTime(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 860
    :goto_96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_bb

    .line 861
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p2

    if-nez p2, :cond_ab

    goto :goto_b8

    .line 865
    :cond_ab
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettings:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 867
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettings:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b8
    :goto_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 871
    :cond_bb
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 872
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v1

    if-nez v1, :cond_d4

    goto :goto_d8

    .line 875
    :cond_d4
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->postRestrictionAfterInitialized()V

    goto :goto_c1

    .line 877
    :cond_d8
    :goto_d8
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 878
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setCameraCapabilities]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 879
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V
    .registers 2

    .line 551
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    return-void
.end method

.method public setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
    .registers 4

    .line 1035
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    .line 1036
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object p1

    .line 1037
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/setting/SettingManager;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unInit]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "[unInit], this method should be invoked in main thread"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    .line 264
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mAllSettingIsCreated:Z

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    if-eqz v0, :cond_40

    .line 267
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->unInit()V

    .line 269
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->startControl()V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    new-instance v1, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->forEachSettings(Ljava/util/function/Consumer;)Z

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-eqz v0, :cond_58

    .line 272
    const-string v1, "SettingManager.unInit"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->clearAllLocationRequests(Ljava/lang/String;)V

    .line 274
    :cond_58
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->removeAll()V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->stopControl()V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingFeatureHandler:Landroid/os/Handler;

    if-eqz v0, :cond_75

    const/4 v1, 0x0

    .line 278
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingFeatureHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 280
    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingFeatureHandler:Landroid/os/Handler;

    .line 282
    :cond_75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[unInit]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unbindMode(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_33

    .line 406
    iget-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindMode mPreviousSettingGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPreviousSettingGroup:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByGroup(J)Ljava/util/ArrayList;

    move-result-object p0

    .line 409
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_33
    return-void
.end method

.method public updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 6

    .line 342
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->isDifferentMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 345
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    .line 346
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p2

    .line 347
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->unbindMode(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->bindMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 349
    :cond_1d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->isCameraIdDifferent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 350
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->changeCameraId(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 353
    :cond_27
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateModeSettings([Ljava/lang/String;)V

    return-void
.end method

.method public updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 2

    .line 813
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    return-void
.end method

.method public updateModeGroup(J)V
    .registers 7

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNextModeSettings oldGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nextGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 333
    iput-wide p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCurrentModeSettingGroup:J

    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 3

    .line 140
    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenFormType:I

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/common/setting/SettingManager;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->forEachSettings(Ljava/util/function/Consumer;)Z

    return-void
.end method

.method public updateStreamIds([I)V
    .registers 5

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStreamIds:[I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->isSameStreamId([I[I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStreamIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStreamIds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 448
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStreamIds:[I

    :cond_33
    return-void
.end method
