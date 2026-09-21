.class public Lcom/transsion/camera/feature/setting/airaw/AIRaw;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAIRawLiteSupportPortraitEnhance:Z

.field private mAiRawLiteSupport:Z

.field private mFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mFullSizeSupport:Z

.field private mHeavyCaptureFlag:Z

.field private mIspHidlCaptureEscapeBV:I

.field private mIspHidlCaptureNightLimitBV:I

.field private mModeSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mPreviewStopped:Z

.field private mSatSupport:Z

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# direct methods
.method public static synthetic $r8$lambda$VDutpTTmFlqNx5dPXfDCQF1C8uA(Lcom/transsion/camera/feature/setting/airaw/AIRaw;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mStreamId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/airaw/AIRaw;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mStreamId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIRaw"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mModeSupport:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mFullSizeSupport:Z

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAIRawLiteSupportPortraitEnhance:Z

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mSatSupport:Z

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mHeavyCaptureFlag:Z

    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mStreamId:I

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mPreviewStopped:Z

    .line 150
    new-instance v0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw$1;-><init>(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 243
    new-instance v0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw$2;-><init>(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 259
    new-instance v0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 9

    .line 260
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_7c

    .line 261
    array-length p2, p1

    if-lez p2, :cond_7c

    .line 262
    invoke-interface {p3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isHeavyCapturing()Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 263
    invoke-interface {p3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getHeavyCapturingBV()I

    move-result p2

    iget v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mIspHidlCaptureNightLimitBV:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p2, v0, :cond_20

    aget p2, p1, v2

    if-ge p2, v0, :cond_1e

    goto :goto_20

    :cond_1e
    move p2, v2

    goto :goto_21

    :cond_20
    :goto_20
    move p2, v1

    :goto_21
    const/4 v0, -0x1

    .line 265
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getPostALgoBvDebug(I)I

    move-result v0

    if-lez v0, :cond_29

    goto :goto_2b

    .line 266
    :cond_29
    iget v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mIspHidlCaptureEscapeBV:I

    .line 267
    :goto_2b
    aget v3, p1, v2

    invoke-interface {p3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getHeavyCapturingBV()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v0, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    if-eqz p2, :cond_7c

    if-eqz v1, :cond_7c

    .line 269
    sget-object p2, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFrameCallback] post algo capture Bv changed:limitValue = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " brightnessResult[0] = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getHeavyCapturingBV = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-interface {p3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getHeavyCapturingBV()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    invoke-interface {p3, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHeavyCapturing(Z)V

    .line 273
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mHeavyCaptureFlag:Z

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_7c
    return-void
.end method

.method private setFrameCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 281
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mModeSupport:Z

    if-eqz v0, :cond_a

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void

    .line 284
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 3

    .line 289
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mSatSupport:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mPreviewStopped:Z

    if-nez v0, :cond_e

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void

    .line 292
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 239
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->setFrameCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 10

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    .line 209
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mSatSupport:Z

    if-eqz v2, :cond_1c

    .line 210
    iget v2, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mStreamId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isSupportedAIRawLite(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAiRawLiteSupport:Z

    .line 212
    :cond_1c
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mModeSupport:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_55

    .line 213
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAiRawLiteSupport:Z

    if-eqz v2, :cond_30

    move v2, v3

    goto :goto_31

    :cond_30
    move v2, v4

    .line 214
    :goto_31
    sget-object v5, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configParameters: AI Raw JG value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAiRawLiteSupport = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAiRawLiteSupport:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAIRawMode(I)V

    goto :goto_70

    .line 218
    :cond_55
    sget-object v0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configParameters: AI Raw off 0 mAiRawLiteSupport = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAiRawLiteSupport:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setAIRawMode(I)V

    .line 222
    :goto_70
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget v2, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mStreamId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 223
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    goto :goto_93

    :cond_91
    move v0, v4

    goto :goto_94

    :cond_93
    :goto_93
    move v0, v3

    .line 224
    :goto_94
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-interface {v1, v2, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v1

    .line 225
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setLongFocusCamera(Z)V

    .line 226
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setLongFocusBaseZoomRatio(F)V

    .line 227
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAiRawLiteSupport:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAiRawLiteSupport(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->isFullSizeMode()Z

    move-result v0

    if-nez v0, :cond_bc

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->isAIRawLiteSupportPortraitEnhance()Z

    move-result v0

    if-eqz v0, :cond_ba

    goto :goto_bc

    :cond_ba
    move v0, v4

    goto :goto_bd

    :cond_bc
    :goto_bc
    move v0, v3

    :goto_bd
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAIRawLiteSupportPortraitEnhance(Z)V

    .line 229
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mHeavyCaptureFlag:Z

    if-nez v0, :cond_c9

    .line 230
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setHeavyCapturing(Z)V

    .line 231
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mHeavyCaptureFlag:Z

    .line 233
    :cond_c9
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->notifyValueChanged(Ljava/lang/String;)V

    return v4
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

.method getCameraId()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 97
    const-string p0, "ai_raw_lite"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 92
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

    .line 102
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

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 66
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mFullSizeSupport:Z

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIRawLiteSupportPortraitEnhance:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAIRawLiteSupportPortraitEnhance:Z

    .line 68
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlCaptureEscapeBV:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mIspHidlCaptureEscapeBV:I

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlCaptureNightLimitBV:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mIspHidlCaptureNightLimitBV:I

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
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

    .line 74
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 77
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 78
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mModeSupport:Z

    const-string p2, "off"

    if-eqz p1, :cond_37

    .line 79
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "on"

    if-nez p1, :cond_33

    .line 80
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAiRawLiteSupport:Z

    if-nez p1, :cond_2e

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz p1, :cond_2f

    :cond_2e
    move-object p2, v0

    :cond_2f
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    goto :goto_3a

    .line 82
    :cond_33
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    goto :goto_3a

    .line 85
    :cond_37
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 87
    :goto_3a
    sget-object p1, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initValueAndSupport, mModeSupport:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mModeSupport:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", value:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isAIRawLiteSupportPortraitEnhance()Z
    .registers 2

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAIRawLiteSupportPortraitEnhance:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isFullSizeMode()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mFullSizeSupport:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 142
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mModeSupport:Z

    return p0
.end method

.method notifyValueChanged(Ljava/lang/String;)V
    .registers 3

    .line 172
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 173
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoSurfaceEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 174
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-nez v0, :cond_1a

    .line 175
    const-string p1, "off"

    .line 177
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_27

    .line 178
    const-string v0, "ai_raw_lite"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 134
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mModeSupport:Z

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 137
    sget-object p1, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeClosed, mModeSupport: false"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 138
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result p1

    const/16 p2, 0x67

    if-le p1, p2, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mModeSupport:Z

    .line 129
    sget-object p1, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onModeOpened, mModeSupport: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mModeSupport:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 107
    sget-object v0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 109
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
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

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 195
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mSatSupport:Z

    .line 196
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedAIRawLite()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mAiRawLiteSupport:Z

    .line 197
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v1

    const/16 v2, 0x67

    if-le v1, v2, :cond_23

    .line 200
    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_23
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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

.method public updatePreviewState(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mPreviewStopped:Z

    const/4 p1, -0x1

    .line 298
    iput p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->mStreamId:I

    return-void
.end method
