.class public Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;
.super Lcom/ss/android/ttvecamera/framework/TECameraModeBase;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEVideo2Mode"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;-><init>(Lcom/ss/android/ttvecamera/TECamera2;Landroid/content/Context;Landroid/os/Handler;)V

    .line 34
    iput-object p3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 35
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRefactorFocusAndMeter:Z

    if-eqz p1, :cond_13

    .line 36
    new-instance p1, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocusAndMeterStrategy;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocusAndMeterStrategy;-><init>(Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    return-void

    .line 38
    :cond_13
    new-instance p1, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/focusmanager/TEVideoFocus;-><init>(Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;)Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    return-object p0
.end method


# virtual methods
.method protected getContinuousFocusMode()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public startPreview()I
    .registers 9

    .line 45
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_163

    if-nez v0, :cond_e

    goto/16 :goto_163

    .line 51
    :cond_e
    invoke-super {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->prepareProvider()I

    move-result v1

    if-eqz v1, :cond_15

    return v1

    .line 56
    :cond_15
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v2, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_3c

    .line 57
    :cond_20
    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v2, "enablePreviewTemplate"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 58
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    goto :goto_3c

    .line 60
    :cond_33
    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 63
    :cond_3c
    :goto_3c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getType()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_59

    .line 65
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPreviewSurfaces()[Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7f

    .line 66
    :cond_59
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getType()I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_78

    .line 67
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->getRecorderSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 70
    :cond_78
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_7f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :cond_86
    :goto_86
    if-ge v5, v0, :cond_9d

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/view/Surface;

    .line 76
    iget-object v7, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 77
    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_86

    move v4, v3

    goto :goto_86

    .line 82
    :cond_9d
    new-instance v0, Landroid/util/Range;

    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v5, v5, Lcom/ss/android/ttvecamera/TEFrameRateRange;->min:I

    iget-object v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v6, v6, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v6, v6, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v5, v6

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFpsRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v6, v6, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    iget-object v7, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v7, v7, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v7, v7, Lcom/ss/android/ttvecamera/TEFrameRateRange;->fpsUnitFactor:I

    div-int/2addr v6, v7

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->configFps(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 86
    iget-object v5, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v4, :cond_d4

    .line 89
    sget-object v0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->TAG:Ljava/lang/String;

    const-string v4, "start preview may be failed, surface invalid..."

    invoke-static {v0, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_d4
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCreateSessionStartTimestamp:J

    .line 94
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v0, :cond_e7

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_e9

    :cond_e7
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    .line 95
    :goto_e9
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    if-nez v4, :cond_f8

    const/4 v3, 0x0

    .line 96
    iput-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 97
    iget-object v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p0, v1, v3, v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->createSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_15b

    .line 99
    :cond_f8
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_121

    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSurfaceReady:Z

    if-nez v0, :cond_121

    move v0, v2

    .line 100
    :goto_105
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_121

    .line 101
    iget-object v4, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 102
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSurfaceReady:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_105

    .line 105
    :cond_121
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_15b

    .line 106
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mOutputConfigurations:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    .line 107
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsSessionFinalized:Z

    .line 108
    sget-object v0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->TAG:Ljava/lang/String;

    const-string v1, "finalizeOutputConfigurations in startPreview"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_135
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updateCapture()I

    move-result v0

    if-eqz v0, :cond_15b

    .line 113
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCameraLock()V

    .line 115
    new-instance v1, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode$1;

    invoke-direct {v1, p0, v0}, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode$1;-><init>(Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;I)V

    .line 121
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v0, :cond_151

    .line 122
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15b

    :catch_14f
    move-exception v0

    goto :goto_155

    .line 124
    :cond_151
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_154} :catch_14f

    goto :goto_15b

    .line 128
    :goto_155
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCameraLock()V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    :cond_15b
    :goto_15b
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_162

    .line 134
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->waitCameraTaskDoneOrTimeout()V

    :cond_162
    return v2

    .line 47
    :cond_163
    :goto_163
    sget-object p0, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->TAG:Ljava/lang/String;

    const-string v0, "CameraDevice or ProviderManager is null!"

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public startRecording()I
    .registers 1

    .line 142
    invoke-super {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->startRecording()I

    move-result p0

    return p0
.end method

.method public stopRecording()I
    .registers 1

    .line 148
    invoke-super {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->stopRecording()I

    move-result p0

    return p0
.end method

.method public switchFlashMode(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 159
    iget-object v4, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x0

    if-nez v4, :cond_6d

    .line 160
    sget-object v3, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->TAG:Ljava/lang/String;

    const-string v4, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -100. Reason: mCaptureRequestBuilder is null"

    invoke-static {v3, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchFlashMode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "CaptureRequest.Builder is null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v4, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchFlashMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v10, -0x64

    invoke-interface {v3, v4, v10, v7, v9}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    iget-object v11, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v12, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-nez v1, :cond_53

    move v14, v5

    goto :goto_54

    :cond_53
    move v14, v2

    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v13, -0x64

    move-object/from16 v16, v0

    invoke-interface/range {v11 .. v16}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6d
    if-eqz v1, :cond_cb

    const/4 v6, 0x2

    if-eq v1, v6, :cond_ba

    .line 178
    sget-object v2, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -100. Reason: not support flash mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video Mode not support this mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v5, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v6, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v7, -0x64

    const/4 v8, -0x1

    invoke-interface/range {v5 .. v10}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 174
    :cond_ba
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v7, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 175
    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_db

    .line 170
    :cond_cb
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v6, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 171
    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 184
    :goto_db
    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput v1, v3, Lcom/ss/android/ttvecamera/TECameraSettings;->mFlashMode:I

    .line 185
    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera2 will change flash mode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x68

    const/4 v7, 0x0

    invoke-interface {v3, v6, v5, v4, v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 186
    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object v3

    .line 187
    iget-object v4, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "camera2 did change flash mode "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x69

    invoke-interface {v4, v8, v5, v6, v7}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_17a

    .line 189
    sget-object v4, Lcom/ss/android/ttvecamera/camera2/TEVideo2Mode;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -418. Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v4, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switch flash failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v9, -0x1a2

    .line 190
    invoke-interface {v4, v9, v9, v6, v8}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    iget-object v10, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v4, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v11, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-nez v1, :cond_15e

    move v13, v5

    goto :goto_15f

    :cond_15e
    move v13, v2

    :goto_15f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v12, -0x1a2

    invoke-interface/range {v10 .. v15}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 194
    :cond_17a
    iget-object v3, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v4, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v4, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-nez v1, :cond_183

    move v2, v5

    :cond_183
    move v1, v4

    const-string v4, "torch success"

    iget-object v5, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move-object v0, v3

    move v3, v2

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onTorchSuccess(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
