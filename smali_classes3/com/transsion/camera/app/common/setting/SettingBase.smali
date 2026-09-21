.class public abstract Lcom/transsion/camera/app/common/setting/SettingBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting;
.implements Lcom/transsion/camera/app/common/setting/ISetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;,
        Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;
    }
.end annotation


# static fields
.field protected static final SCREEN_POCKET_KEY_PREFIX:Ljava/lang/String; = "screen_pocket_"


# instance fields
.field protected mCameraIdBeforeSAT:Ljava/lang/String;

.field protected mDefaultValue:Ljava/lang/String;

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mModeKey:Ljava/lang/String;

.field private mOriginalValueBeforeOverride:Ljava/lang/String;

.field private mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

.field protected mSatNewStreamId:I

.field protected mScreenFormType:I

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field protected mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field protected mSettingGroup:J

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mSupportedEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPlatformValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;

.field private mValueInDataStore:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    .line 39
    new-instance v1, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;-><init>(Lcom/transsion/camera/app/common/setting/SettingBase;Lcom/transsion/camera/app/common/setting/SettingBase-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mScreenFormType:I

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingGroup:J

    return-void
.end method

.method private restoreValue()V
    .registers 3

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOriginalValueBeforeOverride:Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private switchToOverridesValue(Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;)V
    .registers 4

    if-nez p1, :cond_6

    .line 480
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreValue()V

    return-void

    .line 484
    :cond_6
    iget-object v0, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    goto :goto_2f

    .line 489
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 490
    iget-object v0, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 492
    :goto_2f
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public beforeUnInit()V
    .registers 1

    return-void
.end method

.method protected cacheValueForScreenPocket(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getKeyForScreenPocket()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public getCameraFacing()Ljava/lang/String;
    .registers 1

    .line 571
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraIdBeforeSAT()Ljava/lang/String;
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mCameraIdBeforeSAT:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .registers 1

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentStreamIds()[I
    .registers 1

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStreamIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getEntryValues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 290
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getGlobalScope()Ljava/lang/String;
    .registers 1

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getISetting()Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    return-object p0
.end method

.method public getInitGender()Ljava/lang/String;
    .registers 4

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "0"

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 241
    const-string v2, "key_gender_attribute_value"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getKeyForScreenPocket()Ljava/lang/String;
    .registers 3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen_pocket_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeKey()Ljava/lang/String;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecordingStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecondKey()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecondSettingValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;
    .registers 1

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 3

    .line 628
    iget-wide v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingGroup:J

    return-wide v0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 285
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getShutterSoundEffectList()[Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    .line 589
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getShutterSoundNameResIds()[I
    .registers 1

    const/4 p0, 0x0

    .line 594
    new-array p0, p0, [I

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getSupportedPlatformValues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected getValueForScreenPocket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getKeyForScreenPocket()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected goingToChangeValue(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 158
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 159
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 160
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 161
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method public initializedRestrictionDone()V
    .registers 1

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isOverrideAllShouldReset()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isPlatformSupportedValue(Ljava/lang/String;)Z
    .registers 2

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isVideoMode()Z
    .registers 2

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isVipMode()Z
    .registers 1

    .line 584
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->isVipMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraStable(Z)V
    .registers 2

    return-void
.end method

.method public notifyGroupCaptureIconHide()V
    .registers 1

    return-void
.end method

.method public notifyGroupCaptureIconShow()V
    .registers 1

    return-void
.end method

.method public onCameraClosedBefore()V
    .registers 1

    return-void
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onExtraValueChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 230
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->-$$Nest$mindexOf(Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_14

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_16

    .line 234
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_12

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 224
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    return-void
.end method

.method public onModeUpdate([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSatCameraChanged(I)V
    .registers 2

    .line 280
    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSatNewStreamId:I

    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .registers 2

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

    .line 307
    monitor-enter p0

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-nez p2, :cond_2f

    if-nez p3, :cond_2f

    .line 311
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->remove(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_15

    .line 313
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    goto/16 :goto_b8

    .line 315
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isOverrideAllShouldReset()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->size()I

    move-result p1

    if-lez p1, :cond_25

    .line 316
    monitor-exit p0

    return-void

    .line 318
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->getFirst()Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    move-result-object p1

    .line 319
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->switchToOverridesValue(Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;)V

    goto :goto_9b

    .line 321
    :cond_2f
    new-instance v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;-><init>(Lcom/transsion/camera/app/common/setting/SettingBase;Lcom/transsion/camera/app/common/setting/SettingBase-IA;)V

    .line 322
    iput-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->headerKey:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isOverrideAllShouldReset()Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOriginalValueBeforeOverride:Ljava/lang/String;

    if-eqz p1, :cond_42

    goto :goto_44

    .line 324
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    :goto_44
    iput-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    .line 326
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->retainPlatformSupportedValues(Ljava/util/List;)V

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_56

    .line 331
    monitor-exit p0

    return-void

    .line 337
    :cond_56
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->isPlatformSupportedValue(Ljava/lang/String;)Z

    move-result p3

    const/4 v2, 0x0

    if-nez p3, :cond_63

    .line 338
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 341
    :cond_63
    iput-object p2, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    .line 342
    iput-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->add(Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;)V

    .line 345
    iget-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 346
    iget-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p2, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    :goto_81
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v2, p1, :cond_9b

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->get(I)Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    move-result-object p1

    .line 353
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 356
    :cond_9b
    :goto_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_1 .. :try_end_9c} :catchall_12

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p1, :cond_b7

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-eqz p1, :cond_b7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b7

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOriginalValueBeforeOverride:Ljava/lang/String;

    :cond_b7
    return-void

    .line 356
    :goto_b8
    :try_start_b8
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_12

    throw p1
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->storeCameraIdBeforeSAT(Ljava/lang/String;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 1

    return-void
.end method

.method public querySupportedEntryValue(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 545
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 540
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized removeOverride(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 475
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->remove(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 476
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public restoreToSupportedPlatformValue()V
    .registers 4

    .line 437
    monitor-enter p0

    .line 438
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->-$$Nest$mclearAll(Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;)V

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreValue()V

    .line 444
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2a

    .line 445
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v1, :cond_29

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_29

    if-nez v0, :cond_29

    .line 446
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    return-void

    :catchall_2a
    move-exception v0

    .line 444
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method protected retainPlatformSupportedValues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public screenFlip()Z
    .registers 1

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenFlip()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public screenPocket()Z
    .registers 1

    .line 598
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenPocket()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setEntryValues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    .line 452
    monitor-exit p0

    return-void

    .line 454
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    .line 456
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
    .registers 2

    return-void
.end method

.method public setScreenFromType(I)V
    .registers 2

    .line 166
    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mScreenFormType:I

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-void
.end method

.method public setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method public setSettingGroup(J)V
    .registers 3

    .line 623
    iput-wide p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingGroup:J

    return-void
.end method

.method public declared-synchronized setSupportedEntryValues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    .line 460
    monitor-exit p0

    return-void

    .line 462
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    .line 464
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public declared-synchronized setSupportedPlatformValues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    .line 468
    monitor-exit p0

    return-void

    .line 470
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    .line 472
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4

    .line 400
    monitor-enter p0

    .line 401
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :catchall_d
    move-exception p1

    goto :goto_26

    :cond_f
    const/4 v0, 0x0

    .line 402
    :goto_10
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    .line 403
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 404
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 405
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_d

    .line 406
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    .line 407
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_25
    return-void

    .line 405
    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_d

    throw p1
.end method

.method public setValueOnly(Ljava/lang/String;)V
    .registers 2

    .line 413
    monitor-enter p0

    .line 414
    :try_start_1
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    .line 415
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 416
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 417
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public shouldSetFPSToNull()Z
    .registers 3

    .line 549
    const-string v0, "key_video_effect"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "key_video_portrait"

    .line 550
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "key_video_spot"

    .line 551
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "key_video_preisp"

    .line 552
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "key_video_filter"

    .line 553
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "key_video_frame"

    .line 554
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4c

    const/4 p0, 0x1

    return p0

    :cond_4c
    const/4 p0, 0x0

    return p0
.end method

.method public storeCameraIdBeforeSAT(Ljava/lang/String;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mCameraIdBeforeSAT:Ljava/lang/String;

    return-void
.end method

.method public turnOnSwitch(Z)V
    .registers 2

    return-void
.end method

.method public unInit()V
    .registers 1

    return-void
.end method
