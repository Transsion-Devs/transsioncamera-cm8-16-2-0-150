.class public Lcom/transsion/camera/feature/setting/makeup/VipStereo;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_vip_stereo"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mDefaultValue:Ljava/lang/String;

.field private mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mDualCameraLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mEnableRTDof:Z

.field private mFeatureValue:Ljava/lang/String;

.field private mIsCapturing:Z

.field private mIsModeSupport:Z

.field private mIsStereoLevelSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStereoSensorRect:Landroid/graphics/Rect;

.field private mWarningType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/makeup/VipStereo;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRTDofValue(Lcom/transsion/camera/feature/setting/makeup/VipStereo;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateRTDofValue(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VipStereo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    .line 33
    iput v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDefaultValue:Ljava/lang/String;

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsStereoLevelSupport:Z

    .line 139
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo$1;-><init>(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 153
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;-><init>(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 233
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo$3;-><init>(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDualCameraLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private is2xBlurCamera(Ljava/lang/String;)Z
    .registers 2

    .line 226
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isBlurCamera(Ljava/lang/String;)Z
    .registers 2

    .line 230
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private updateBWLensCoveredValue(I)V
    .registers 4

    const/4 v0, 0x1

    .line 201
    const-string v1, "key_bw_camera_lens_covered"

    if-ne p1, v0, :cond_d

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "bw_lens_covered"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 204
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "bw_lens_not_covered"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRTDofValue(I)V
    .registers 3

    .line 194
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 197
    :goto_a
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

    return-void
.end method

.method private updateRTDofValue(Z)V
    .registers 4

    .line 183
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 187
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

    return-void

    .line 189
    :cond_c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 297
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->ismIsModeSupport()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDualCameraLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xb

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void

    .line 300
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDualCameraLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 6

    .line 268
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsStereoLevelSupport:Z

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->ismIsModeSupport()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_7a

    .line 272
    :cond_f
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsStereoLevelSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsStereoLevelSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    const-string v1, "f0.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 276
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 277
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setVsdofModeLevel(Ljava/lang/String;)V

    goto :goto_55

    .line 280
    :cond_50
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setVsdofModeLevel(Ljava/lang/String;)V

    .line 282
    :goto_55
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->isRTDofEnable()Z

    move-result v0

    .line 283
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setRTDofEnable(Z)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_74

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_74

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_74

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->overrideSensorRect(Landroid/graphics/Rect;)V

    goto :goto_78

    :cond_74
    const/4 p0, 0x0

    .line 289
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->overrideSensorRect(Landroid/graphics/Rect;)V

    :goto_78
    const/4 p0, 0x0

    return p0

    :cond_7a
    :goto_7a
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

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    if-eqz v0, :cond_7

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 96
    const-string p0, "key_vip_stereo"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 91
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

    .line 131
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

.method public goingToChangeValue(Ljava/lang/String;)V
    .registers 7

    .line 116
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 123
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "f0.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mFeatureValue:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v1, v0

    :goto_1b
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mFeatureValue:Ljava/lang/String;

    .line 125
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goingToChangeValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "key_vip_stereo_feature"

    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 45
    const-string p1, "f0.0"

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDefaultValue:Ljava/lang/String;

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_bw_camera_lens_covered"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    if-nez p2, :cond_d

    .line 54
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDefaultValue:Ljava/lang/String;

    .line 55
    :cond_d
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    .line 59
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateRTDofValue(Z)V

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateBWLensCoveredValue(I)V

    return-void
.end method

.method public isRTDofEnable()Z
    .registers 1

    .line 218
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

    return p0
.end method

.method public ismIsModeSupport()Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    return p0
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 79
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 72
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 75
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    return-void
.end method

.method public onModeUpdate([Ljava/lang/String;)V
    .registers 3

    .line 85
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeUpdate([Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 106
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 108
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->sendSettingChangeRequest()V

    :cond_34
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method protected refreshToUI(I)V
    .registers 3

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 244
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_a
    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 255
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVsdofLevel()Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getStereoSensorCropRegion()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    .line 257
    sget-object p1, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities] supportedSizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stereoSensorRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsStereoLevelSupport:Z

    .line 260
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    const-string v0, "f0.0"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method

.method protected updateWarningTypeAndSendRequest(I)V
    .registers 3

    .line 209
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    if-eq v0, p1, :cond_19

    .line 210
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    .line 211
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateRTDofValue(I)V

    .line 212
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateBWLensCoveredValue(I)V

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_19
    return-void
.end method
