.class public Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;
.super Lcom/transsion/camera/adapter/CameraProxy2Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;,
        Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$CaptureRequestProxy;
    }
.end annotation


# static fields
.field private static final STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDXOParameters:Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

.field private mFaceRectangles:[Landroid/graphics/Rect;

.field private final mRestoreParameters:Ljava/lang/Runnable;

.field private mStreamId:I


# direct methods
.method public static synthetic $r8$lambda$0-z5PrqcLog39elcOO1iPrJ-tr8(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDXOParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mDXOParameters:Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestoreParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mRestoreParameters:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DXOProxy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 32
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "android.statistics.faceRectangles"

    const-class v2, [Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 6

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/adapter/CameraProxy2Impl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 34
    new-instance p1, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mRestoreParameters:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mStreamId:I

    return-void
.end method

.method private isDXOParametersAlive()Z
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mDXOParameters:Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 36
    sget-object p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "run: restore parameters task."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private restoreParameters(Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;
    .registers 3

    .line 165
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    .line 166
    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionTurboFusionMode(I)V

    .line 168
    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    .line 169
    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getTfPortraitMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setTfPortraitMode(I)V

    .line 170
    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getFusionMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setFusionMode(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentRawHDRMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setBestMomentRawHDRMode(I)V

    .line 172
    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperDefinitionMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 173
    sget-object p1, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "restoreParameters: "

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void
.end method

.method public bridge synthetic addGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->addGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method public bridge synthetic autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void
.end method

.method public bridge synthetic cancelAutoFocus()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->cancelAutoFocus()V

    return-void
.end method

.method public bridge synthetic cancelTakePicture()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->cancelTakePicture()V

    return-void
.end method

.method protected checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .registers 5

    .line 94
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 96
    instance-of v0, v0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    if-eqz v0, :cond_15

    .line 97
    sget-object v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mFaceRectangles:[Landroid/graphics/Rect;

    .line 100
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 101
    array-length v0, p1

    if-lez v0, :cond_4b

    const/4 v0, 0x0

    .line 102
    aget p1, p1, v0

    .line 103
    iget v1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mStreamId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    if-eq v1, p1, :cond_4b

    .line 104
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mDXOParameters:Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    if-eqz v1, :cond_31

    .line 105
    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(I)V

    .line 107
    :cond_31
    iput p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mStreamId:I

    .line 108
    sget-object p1, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCaptureResult: mStreamId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mStreamId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public bridge synthetic clearFrameResultCallback()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->clearFrameResultCallback()V

    return-void
.end method

.method public bridge synthetic clearGenderAttributeCallback()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->clearGenderAttributeCallback()V

    return-void
.end method

.method public bridge synthetic clearStreamIdResultCallback()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->clearStreamIdResultCallback()V

    return-void
.end method

.method protected bridge synthetic createCameraParameters(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .registers 5

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->createCameraParameters(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    move-result-object p0

    return-object p0
.end method

.method protected createCameraParameters(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;
    .registers 5

    .line 128
    new-instance p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-object p0
.end method

.method createCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;
    .registers 3

    .line 133
    new-instance v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;-><init>(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-object v0
.end method

.method public bridge synthetic destroyTask()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->destroyTask()V

    return-void
.end method

.method public bridge synthetic enableVideoAutoFlash(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->enableVideoAutoFlash(Z)V

    return-void
.end method

.method public bridge synthetic getAIRawLiteMotionDetection()I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getAIRawLiteMotionDetection()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getAeExpoInfo()[I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getAeExpoInfo()[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAeStateResult()I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getAeStateResult()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getBrightnessResult()[I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getBrightnessResult()[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCameraId()[I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCameraId()[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getEVList()[I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getEVList()[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getHDRAeExpoInfo()[I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getHDRAeExpoInfo()[I

    move-result-object p0

    return-object p0
.end method

.method getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .registers 6

    .line 138
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getInnerCameraParameters(I)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInnerCameraParameters: getAppModeId() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    instance-of v1, v0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    if-eqz v1, :cond_66

    .line 141
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "val_dual_video"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4c

    .line 143
    invoke-direct {p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->isDXOParametersAlive()Z

    move-result p1

    if-nez p1, :cond_41

    .line 144
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    iput-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mDXOParameters:Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    return-object v0

    .line 146
    :cond_41
    check-cast v0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    iget-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mDXOParameters:Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->restoreParameters(Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mDXOParameters:Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    return-object p1

    .line 150
    :cond_4c
    invoke-direct {p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->isDXOParametersAlive()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 151
    move-object p1, v0

    check-cast p1, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mDXOParameters:Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->getAliveTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->setAliveTimeMillis(J)V

    return-object v0

    .line 153
    :cond_5f
    move-object p0, v0

    check-cast p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(I)V

    :cond_66
    return-object v0
.end method

.method public bridge synthetic getJpegMaxSize()I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getJpegMaxSize()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getLlsAeExpoInfo()[I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getLlsAeExpoInfo()[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getMFNRAeExpoInfo()[I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getMFNRAeExpoInfo()[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getNightAeExpoInfo()[I
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getNightAeExpoInfo()[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic init(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->init(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public bridge synthetic isMTKCaptureFlow()Z
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isMTKCaptureFlow()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isMultiCamera()Z
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isMultiCamera()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isOfflineJniSupport()Z
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isOfflineJniSupport()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isQcomCaptureFlow()Z
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isQcomCaptureFlow()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isReleased()Z
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isReleased()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isVssSupported()Z
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isVssSupported()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic offlineJniMetadata(Ljava/lang/Object;ZZ)V
    .registers 4

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->offlineJniMetadata(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public bridge synthetic onTemperatureChanged(I)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->onTemperatureChanged(I)V

    return-void
.end method

.method public bridge synthetic preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V
    .registers 3

    .line 29
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V

    return-void
.end method

.method public bridge synthetic registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .registers 3

    .line 29
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void
.end method

.method public bridge synthetic registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public bridge synthetic registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public bridge synthetic registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    return-void
.end method

.method public bridge synthetic registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method public bridge synthetic removeGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->removeGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method public bridge synthetic setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V

    return-void
.end method

.method public bridge synthetic setAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V

    return-void
.end method

.method public bridge synthetic setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    return-void
.end method

.method public bridge synthetic setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    return-void
.end method

.method public bridge synthetic setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    return-void
.end method

.method public bridge synthetic setCameraOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setCameraOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;)V

    return-void
.end method

.method public bridge synthetic setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return-void
.end method

.method public bridge synthetic setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V

    return-void
.end method

.method public bridge synthetic setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    return-void
.end method

.method public bridge synthetic setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    return-void
.end method

.method public bridge synthetic setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    return-void
.end method

.method public bridge synthetic setLowConfigReduceLoading(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setLowConfigReduceLoading(Z)V

    return-void
.end method

.method public bridge synthetic setModeThumbnailSource(I)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setModeThumbnailSource(I)V

    return-void
.end method

.method public bridge synthetic setPause(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setPause(Z)V

    return-void
.end method

.method public bridge synthetic setPictureGPSLocation(Landroid/location/Location;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setPictureGPSLocation(Landroid/location/Location;)V

    return-void
.end method

.method public bridge synthetic setPictureOrientation(I)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setPictureOrientation(I)V

    return-void
.end method

.method public bridge synthetic setSession(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setSession(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public setShot2ShotCallbackRef(Ljava/lang/ref/WeakReference;)V
    .registers 4

    if-eqz p1, :cond_16

    .line 49
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 50
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;

    new-instance v1, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$1;-><init>(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;Ljava/lang/ref/WeakReference;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;-><init>(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setShot2ShotCallbackHolder(Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;)V

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setShot2ShotCallbackHolder(Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;)V

    return-void
.end method

.method public bridge synthetic setShutterSoundEffect(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setShutterSoundEffect(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V

    return-void
.end method

.method public bridge synthetic setVideoOrientation(I)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setVideoOrientation(I)V

    return-void
.end method

.method public bridge synthetic shutterSoundPlay(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 3

    .line 29
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shutterSoundPlay(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method public bridge synthetic shutterSoundPlay(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic startFaceDetection()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->startFaceDetection()V

    return-void
.end method

.method public bridge synthetic startFaceDetection(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->startFaceDetection(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    return-void
.end method

.method public bridge synthetic startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .registers 3

    .line 29
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    return-void
.end method

.method public bridge synthetic startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .registers 3

    .line 29
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method

.method public bridge synthetic startVideoHDRInfoDetect()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->startVideoHDRInfoDetect()V

    return-void
.end method

.method public bridge synthetic stopContinuousShot()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopContinuousShot()V

    return-void
.end method

.method public bridge synthetic stopContinuousShotCount()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopContinuousShotCount()V

    return-void
.end method

.method public bridge synthetic stopFaceDetection()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopFaceDetection()V

    return-void
.end method

.method public bridge synthetic stopFaceDetection(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopFaceDetection(Z)V

    return-void
.end method

.method public bridge synthetic stopGenderAttributeDetection()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopGenderAttributeDetection()V

    return-void
.end method

.method public bridge synthetic stopPreview()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopPreview()V

    return-void
.end method

.method public bridge synthetic stopRecording()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopRecording()V

    return-void
.end method

.method public bridge synthetic stopRepeating()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopRepeating()V

    return-void
.end method

.method public bridge synthetic stopVideoHDRInfoDetect()V
    .registers 1

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopVideoHDRInfoDetect()V

    return-void
.end method

.method public bridge synthetic switchToOfflineSession(I)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->switchToOfflineSession(I)V

    return-void
.end method

.method takePicture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .registers 4

    .line 115
    sget-object v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "takePicture: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 117
    instance-of v1, v0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    if-eqz v1, :cond_16

    .line 118
    check-cast v0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    iget-object v1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->mFaceRectangles:[Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateFaceRectangles([Landroid/graphics/Rect;)V

    .line 120
    :cond_16
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-void
.end method

.method public bridge synthetic unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method public bridge synthetic unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public bridge synthetic unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public bridge synthetic unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method public bridge synthetic unregisterShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->unregisterShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    return-void
.end method

.method public bridge synthetic updateAuxSurfaceModeSupport(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method public bridge synthetic updateAuxSurfaceStatus(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateAuxSurfaceStatus(Z)V

    return-void
.end method

.method public bridge synthetic updateBackgroundSurfaceModeSupport(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateBackgroundSurfaceModeSupport(Z)V

    return-void
.end method

.method public bridge synthetic updateBackgroundSurfaceStatus(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateBackgroundSurfaceStatus(Z)V

    return-void
.end method

.method public bridge synthetic updateFocusMode(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateOfflineConfig(Ljava/util/List;)I
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateOfflineConfig(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic updateQcomPicSurface(Lcom/transsion/camera/adapter/IBGSurface;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateQcomPicSurface(Lcom/transsion/camera/adapter/IBGSurface;)V

    return-void
.end method

.method public bridge synthetic updateRecordingHint(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateRecordingHint(Z)V

    return-void
.end method

.method public bridge synthetic updateSlaveSurfaceModeSupport(Z)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateSlaveSurfaceModeSupport(Z)V

    return-void
.end method
