.class public Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;
    }
.end annotation


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_setting_smart_denoise"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected static mDefaultValue:Ljava/lang/String;


# instance fields
.field private isAsdMode:Z

.field private mAINREnable:Z

.field private mISO:I

.field private mIsMacroMode:Z

.field private mIsMagicSkyMode:Z

.field private mIsModeSupport:Z

.field private mIsProMode:Z

.field private mIsSupportMagicSkyMultiFrame:Z

.field private mNeedCloseMfnr:Z

.field private mPlatformMfnrSupport:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mSmartDenoiseDefaultOn:Z

.field private mSuperAiRawSupport:Z

.field private final mThermalThrottleListener:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;

.field private mTranssionAINRSupport:Z

.field private mTurboFusionSupport:Z

.field private mUserTranssionFilter:Z


# direct methods
.method public static synthetic $r8$lambda$m45q94_zozEKQMLHxgDcrSdALdI(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsModeSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTranssionAINRSupport(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mTranssionAINRSupport:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SmartDenoise"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 47
    const-string v0, "off"

    sput-object v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsModeSupport:Z

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mPlatformMfnrSupport:Z

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isAsdMode:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsProMode:Z

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsMacroMode:Z

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mSmartDenoiseDefaultOn:Z

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mNeedCloseMfnr:Z

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mTurboFusionSupport:Z

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mSuperAiRawSupport:Z

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mUserTranssionFilter:Z

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mTranssionAINRSupport:Z

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mAINREnable:Z

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mISO:I

    .line 66
    new-instance v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mThermalThrottleListener:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;

    .line 259
    new-instance v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$1;-><init>(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 313
    new-instance v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method private isAsdEnable()Z
    .registers 5

    .line 295
    const-string v0, "key_asd"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_18

    const-string v1, "0"

    .line 297
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v3

    goto :goto_19

    :cond_18
    move v0, v2

    .line 298
    :goto_19
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mTurboFusionSupport:Z

    if-nez v1, :cond_30

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mSuperAiRawSupport:Z

    if-eqz v1, :cond_22

    goto :goto_30

    :cond_22
    if-eqz v0, :cond_2f

    .line 301
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mUserTranssionFilter:Z

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isFilterOn()Z

    move-result p0

    if-nez p0, :cond_2f

    :cond_2e
    return v3

    :cond_2f
    return v2

    :cond_30
    :goto_30
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 314
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_b

    return-void

    .line 318
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->updateIso(I)V

    return-void
.end method

.method private setFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 306
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsModeSupport:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mTranssionAINRSupport:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsProMode:Z

    if-eqz v0, :cond_12

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 309
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private transsionAINRModeEnable()Z
    .registers 4

    .line 331
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsModeSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mTranssionAINRSupport:Z

    if-nez v0, :cond_a

    goto :goto_1a

    .line 335
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRLimitISO:I

    .line 337
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsProMode:Z

    if-eqz v2, :cond_1a

    .line 338
    iget p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mISO:I

    if-le p0, v0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    return v1
.end method

.method private updateIso(I)V
    .registers 3

    .line 322
    iput p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mISO:I

    .line 323
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRLimitISO:I

    if-le p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 324
    :goto_d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mAINREnable:Z

    if-eq v0, p1, :cond_20

    .line 325
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mAINREnable:Z

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 277
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->setFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 6

    .line 199
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isAsdEnable()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsSupportMagicSkyMultiFrame:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsMagicSkyMode:Z

    if-nez v0, :cond_17

    .line 200
    :cond_f
    sget-object p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "configParameters, isAsdEnable return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 204
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isModeSupport()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    return v2

    .line 208
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v3, "on"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 211
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->getPlatformMfnrSupport()Z

    move-result v3

    if-nez v3, :cond_33

    .line 212
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    return v2

    :cond_33
    const/4 v3, 0x1

    if-nez v0, :cond_49

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->transsionAINRModeEnable()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsProMode:Z

    if-nez p0, :cond_41

    goto :goto_42

    :cond_41
    move v3, v2

    :goto_42
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAINRMode(I)V

    .line 218
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    return v2

    .line 222
    :cond_49
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->transsionAINRModeEnable()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 223
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAINRMode(I)V

    .line 224
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    .line 225
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    .line 226
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    return v2

    .line 230
    :cond_5c
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mTurboFusionSupport:Z

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsMacroMode:Z

    if-eqz v0, :cond_6f

    const/4 v0, 0x4

    .line 231
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    .line 232
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAINRMode(I)V

    .line 233
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    goto :goto_78

    .line 235
    :cond_6f
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    .line 236
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAINRMode(I)V

    .line 237
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    .line 240
    :goto_78
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMacroSupportSuperAiRaw:Z

    if-eqz v0, :cond_92

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mSuperAiRawSupport:Z

    if-eqz v0, :cond_92

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsMacroMode:Z

    if-eqz p0, :cond_92

    .line 243
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    .line 244
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAINRMode(I)V

    .line 245
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    goto :goto_9b

    .line 247
    :cond_92
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperAIRawMode(I)V

    .line 248
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAINRMode(I)V

    .line 249
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    :goto_9b
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

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 143
    const-string p0, "key_setting_smart_denoise"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPlatformMfnrSupport()Z
    .registers 1

    .line 172
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mPlatformMfnrSupport:Z

    return p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 138
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 159
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

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformMfnrSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mPlatformMfnrSupport:Z

    .line 73
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSmartDenoiseDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mSmartDenoiseDefaultOn:Z

    .line 74
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mTimelapseThermalWaringSupport:Z

    if-eqz p1, :cond_24

    .line 75
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mThermalThrottleListener:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->addThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 77
    :cond_24
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mTurboFusionSupport:Z

    .line 78
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mSuperAiRawSupport:Z

    .line 79
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mUserTranssionFilter:Z

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mTranssionAINRSupport:Z

    .line 81
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportMagicSkyMultiFrame()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsSupportMagicSkyMultiFrame:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
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

    .line 95
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isFilterOn()Z
    .registers 2

    .line 176
    const-string v0, "key_filter"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isAsdMode:Z

    if-eqz p0, :cond_1c

    const-string p0, "0"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const-string p0, "-1"

    .line 179
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 164
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsModeSupport:Z

    return p0
.end method

.method public isSmartDenoiseOn()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsProMode:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mSmartDenoiseDefaultOn:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .registers 2

    .line 116
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isAsdMode:Z

    .line 118
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsProMode:Z

    .line 119
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mAINREnable:Z

    .line 120
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsMagicSkyMode:Z

    .line 121
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->sendSettingChangeRequest()V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 5

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 106
    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isAsdMode:Z

    .line 107
    const-string p2, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_24

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isAsdMode:Z

    if-nez p3, :cond_24

    if-eqz p2, :cond_22

    goto :goto_24

    :cond_22
    const/4 p2, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p2, 0x1

    :goto_25
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsModeSupport:Z

    .line 109
    const-string p2, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsProMode:Z

    .line 110
    const-string p2, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsMacroMode:Z

    .line 111
    const-string p2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mIsMagicSkyMode:Z

    return-void
.end method

.method public onThermalThrottleChangedConfig(I)V
    .registers 5

    .line 281
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->getPlatformMfnrSupport()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    if-eq p1, v1, :cond_1e

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 282
    :cond_1e
    :goto_1e
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mNeedCloseMfnr:Z

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_2b

    .line 287
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 289
    :cond_2b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->sendSettingChangeRequest()V

    .line 291
    :cond_2e
    sget-object v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThermalThrottleChanged: needCloseMfnr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mNeedCloseMfnr:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", status = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
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

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 132
    sget-object p3, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "headerKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " overrideValues, SmartDenoise getValue: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentValue:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v1, "off"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isSmartDenoiseOn()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    sput-object v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mDefaultValue:Ljava/lang/String;

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 2

    .line 153
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 86
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTimelapseThermalWaringSupport:Z

    if-eqz v0, :cond_14

    .line 88
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mThermalThrottleListener:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->removeThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    :cond_14
    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->mAINREnable:Z

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
