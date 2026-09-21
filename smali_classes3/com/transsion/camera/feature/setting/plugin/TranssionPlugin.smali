.class public Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_tran_plugin"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAntiVideoPlugInValue:I

.field private mIsModeSupport:Z

.field mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

.field private mSuperAntiVideoPlugInValue:I

.field private mTranPluginSupportInMode:Z

.field private mVideoEnhancePlugInValue:I

.field private mVideoFilterSupportAntiVideo:Z

.field private mVideoFilterSupportVideoQuality:[Ljava/lang/String;

.field private mVideoMakeUpSupportVideoQuality:[Ljava/lang/String;

.field private mVideoQualityPlugInValue:I


# direct methods
.method static bridge synthetic -$$Nest$fputmAntiVideoPlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSuperAntiVideoPlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mSuperAntiVideoPlugInValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoEnhancePlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoQualityPlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mnoFeatureForceEnableAntiVideoPlugin(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->noFeatureForceEnableAntiVideoPlugin()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnoFeatureForceEnablePlugin(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->noFeatureForceEnablePlugin(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TranssionPlugin"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mTranPluginSupportInMode:Z

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoFilterSupportAntiVideo:Z

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    .line 54
    iput v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mSuperAntiVideoPlugInValue:I

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    .line 56
    new-instance v1, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    .line 57
    iput v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    return-void
.end method

.method private isSupportPreIspCamera()Z
    .registers 2

    .line 347
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private noFeatureForceEnableAntiVideoPlugin()Z
    .registers 3

    .line 291
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoFilterSupportAntiVideo:Z

    if-eqz v0, :cond_21

    const-string v0, "key_transsion_filter"

    .line 292
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "key_video_filter"

    .line 293
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method private noFeatureForceEnablePlugin(Ljava/lang/String;)Z
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    const-string v1, "on"

    if-eqz v0, :cond_28

    .line 282
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "key_transsion_filter"

    .line 283
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "key_video_filter"

    .line 284
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoMakeUpSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 286
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, "key_video_makeup"

    .line 287
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_45

    :cond_43
    const/4 p0, 0x0

    return p0

    :cond_45
    :goto_45
    const/4 p0, 0x1

    return p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updatePluginValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 249
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_26

    .line 250
    const-string v1, "ai"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 251
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "super"

    .line 252
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 253
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 254
    :cond_26
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->noFeatureForceEnableAntiVideoPlugin()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 255
    iput v3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    .line 256
    iput v3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mSuperAntiVideoPlugInValue:I

    goto :goto_35

    .line 258
    :cond_31
    iput v2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    .line 259
    iput v2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mSuperAntiVideoPlugInValue:I

    .line 262
    :goto_35
    const-string p1, "key_video_enhance"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 263
    iput v3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    goto :goto_46

    .line 265
    :cond_44
    iput v2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    .line 268
    :goto_46
    const-string p1, "key_video_quality"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->noFeatureForceEnablePlugin(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_75

    const-string p2, "8"

    .line 270
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_72

    const-string p2, "11"

    .line 271
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_72

    const-string p2, "6_60"

    .line 272
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_72

    const-string p2, "8_60"

    .line 273
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 274
    :cond_72
    iput v3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    return-void

    .line 276
    :cond_75
    iput v2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 7

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->isTranPluginSupport()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 80
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getPlugInValue()I

    move-result p0

    .line 81
    sget-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters], mode not supported. state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_29

    .line 83
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionPluginEnable(I)V

    return v2

    :cond_29
    if-nez p0, :cond_2f

    .line 86
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionPluginEnable(I)V

    return v2

    :cond_2f
    return v1

    .line 91
    :cond_30
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_37

    return v1

    .line 94
    :cond_37
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 96
    sget-object p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,force close plugin in monkey scenarios"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    const-string p0, "0"

    .line 99
    :cond_4a
    sget-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionPluginEnable(I)V

    return v2
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

    .line 213
    const-string p0, "key_tran_plugin"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPlugInValue()I
    .registers 5

    .line 317
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mTranPluginSupportInMode:Z

    if-eqz v0, :cond_13

    .line 318
    const-string v0, "key_anti_video"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_super_anti_video"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->updatePluginValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_13
    const-string v0, "key_dxo_scene_detection"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    return v2

    .line 323
    :cond_23
    const-string v0, "key_video_asd"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v2

    .line 326
    :cond_30
    const-string v0, "key_video_preisp"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    if-ne v0, v2, :cond_47

    .line 328
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->isSupportPreIspCamera()Z

    move-result v0

    if-eqz v0, :cond_47

    return v2

    .line 331
    :cond_47
    iget v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    if-eqz v0, :cond_64

    iget v1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    if-eqz v1, :cond_64

    iget v3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mSuperAntiVideoPlugInValue:I

    if-eqz v3, :cond_64

    iget p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    if-nez p0, :cond_58

    goto :goto_64

    :cond_58
    if-eq v1, v2, :cond_63

    if-eq v3, v2, :cond_63

    if-eq p0, v2, :cond_63

    if-ne v0, v2, :cond_61

    goto :goto_63

    :cond_61
    const/4 p0, -0x1

    return p0

    :cond_63
    :goto_63
    return v2

    :cond_64
    :goto_64
    const/4 p0, 0x0

    return p0
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

    .line 208
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 232
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

    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 171
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoSupportVideoFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoFilterSupportAntiVideo:Z

    .line 172
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoMakeUpSupportVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoMakeUpSupportVideoQuality:[Ljava/lang/String;

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_33

    .line 175
    const-string p1, "key_video_enhance"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 176
    const-string p1, "key_video_quality"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 177
    const-string p1, "key_anti_video"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 178
    const-string p1, "key_super_anti_video"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
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

    .line 195
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    sget-object p2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne p1, p2, :cond_32

    .line 202
    const-string p1, "key_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_super_anti_video"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->updatePluginValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 309
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    return p0
.end method

.method public isTranPluginSupport()Z
    .registers 1

    .line 313
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mTranPluginSupportInMode:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 298
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    .line 300
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mTranPluginSupportInMode:Z

    const/4 p1, -0x1

    .line 301
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    .line 302
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mSuperAntiVideoPlugInValue:I

    .line 303
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    .line 304
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 305
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 6

    .line 237
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    .line 239
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 240
    const-string p1, "key_tran_plugin_mode_can_support"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mTranPluginSupportInMode:Z

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p2, "key_anti_video"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p3

    const-string v0, "off"

    invoke-virtual {p1, p2, v0, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 243
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p3, "key_super_anti_video"

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->updatePluginValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 223
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 224
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_24
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

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const-string v0, "0"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "1"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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
    .registers 2

    .line 184
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1b

    .line 186
    const-string v0, "key_video_enhance"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 187
    const-string v0, "key_video_quality"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 188
    const-string v0, "key_anti_video"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 189
    const-string v0, "key_super_anti_video"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
