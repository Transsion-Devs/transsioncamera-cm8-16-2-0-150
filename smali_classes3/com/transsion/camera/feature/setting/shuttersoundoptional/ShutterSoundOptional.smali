.class public Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final SHUTTER_SOUND_EFFECT_LIST:[Ljava/lang/String;

.field private static final SHUTTER_SOUND_EFFECT_NAME_LIST:[I


# instance fields
.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mIsModeSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 49
    const-string v6, "short_shutter_sound.ogg"

    const-string v7, "technological.ogg"

    const-string v0, "bubble.ogg"

    const-string v1, "camera_click.ogg"

    const-string v2, "cartoon.ogg"

    const-string v3, "elfish.ogg"

    const-string v4, "liquid.ogg"

    const-string v5, "long_shutter_sound.ogg"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->SHUTTER_SOUND_EFFECT_LIST:[Ljava/lang/String;

    .line 60
    sget v1, Lcom/transsion/camera/feature/setting/shuttersoundoptional/R$string;->shutter_sound_effect_1:I

    sget v2, Lcom/transsion/camera/feature/setting/shuttersoundoptional/R$string;->shutter_sound_effect_2:I

    sget v3, Lcom/transsion/camera/feature/setting/shuttersoundoptional/R$string;->shutter_sound_effect_3:I

    sget v4, Lcom/transsion/camera/feature/setting/shuttersoundoptional/R$string;->shutter_sound_effect_4:I

    sget v5, Lcom/transsion/camera/feature/setting/shuttersoundoptional/R$string;->shutter_sound_effect_5:I

    sget v6, Lcom/transsion/camera/feature/setting/shuttersoundoptional/R$string;->shutter_sound_effect_6:I

    sget v7, Lcom/transsion/camera/feature/setting/shuttersoundoptional/R$string;->shutter_sound_effect_7:I

    sget v8, Lcom/transsion/camera/feature/setting/shuttersoundoptional/R$string;->shutter_sound_effect_8:I

    filled-new-array/range {v1 .. v8}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->SHUTTER_SOUND_EFFECT_NAME_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterSoundOptional"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->mIsModeSupport:Z

    .line 196
    new-instance v0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional$1;-><init>(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private updateShutterSoundAssetSetting()V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getShutterSoundResource()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_shutter_sound_asset_file_name"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getShutterSoundResource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shutterSoundAssetFileName"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global_scope_secure"

    invoke-virtual {p0, v2, v0, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 7

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_shutter_sound"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configCommand] enableShutterSound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", enableShutterOptional: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 244
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getShutterSoundResource()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "video_record.ogg"

    const-string/jumbo v2, "video_stop.ogg"

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/transsion/camera/adapter/CameraProxy;->setShutterSoundEffect(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

    const/4 p0, -0x1

    return p0
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

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 109
    const-string p0, "key_shutter_sound_optional"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 104
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getShutterSoundEffectList()[Ljava/lang/String;
    .registers 1

    .line 188
    sget-object p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->SHUTTER_SOUND_EFFECT_LIST:[Ljava/lang/String;

    return-object p0
.end method

.method public getShutterSoundNameResIds()[I
    .registers 1

    .line 193
    sget-object p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->SHUTTER_SOUND_EFFECT_NAME_LIST:[I

    return-object p0
.end method

.method protected getShutterSoundResource()Ljava/lang/String;
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 252
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 251
    const-string v2, "key_shutter_sound_optional"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 255
    :try_start_19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_26

    .line 257
    :catch_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[getShutterSoundResource] NumberFormatException"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v1

    .line 259
    :goto_26
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setShutterSoundOptional(I)V

    .line 261
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getShutterSoundEffectList()[Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_51

    packed-switch v0, :pswitch_data_56

    .line 286
    aget-object p0, p0, v1

    goto :goto_54

    :pswitch_39
    const/4 v0, 0x7

    .line 282
    aget-object p0, p0, v0

    goto :goto_54

    :pswitch_3d
    const/4 v0, 0x6

    .line 279
    aget-object p0, p0, v0

    goto :goto_54

    :pswitch_41
    const/4 v0, 0x5

    .line 276
    aget-object p0, p0, v0

    goto :goto_54

    :pswitch_45
    const/4 v0, 0x4

    .line 273
    aget-object p0, p0, v0

    goto :goto_54

    :pswitch_49
    const/4 v0, 0x3

    .line 270
    aget-object p0, p0, v0

    goto :goto_54

    :pswitch_4d
    const/4 v0, 0x2

    .line 267
    aget-object p0, p0, v0

    goto :goto_54

    :cond_51
    const/4 v0, 0x0

    .line 264
    aget-object p0, p0, v0

    :goto_54
    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
    .end packed-switch
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

    .line 119
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

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_13

    .line 77
    const-string p2, "key_shutter_sound_update"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_shutter_sound_optional"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_13
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

    .line 84
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 87
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->mIsModeSupport:Z

    if-eqz p1, :cond_13

    .line 88
    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    goto :goto_18

    .line 90
    :cond_13
    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 92
    :goto_18
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->updateShutterSoundAssetSetting()V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 150
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 130
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->mIsModeSupport:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 132
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 125
    const-string p1, "key_shutter_sound_optional"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->mIsModeSupport:Z

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_shutter_sound_optional"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "key_shutter_sound_update"

    if-nez v0, :cond_3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_6c

    .line 168
    :cond_14
    const-string p1, "shutter_sound_value_change"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 171
    :cond_25
    const-string p1, "shutter_sound_value_ready"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_6c

    .line 173
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getShutterSoundResource()Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-virtual {p1, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_3d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    const-string p1, "off"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 158
    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 160
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_6c

    .line 163
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    .line 164
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->getShutterSoundResource()Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-virtual {p1, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/shuttersoundoptional/ShutterSoundOptional;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

    .line 141
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_13

    .line 143
    const-string v1, "key_shutter_sound_optional"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_sound_update"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_13
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
