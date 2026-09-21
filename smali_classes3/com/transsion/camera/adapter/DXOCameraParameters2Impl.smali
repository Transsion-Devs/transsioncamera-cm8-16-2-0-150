.class public Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;
.super Lcom/transsion/camera/adapter/CameraParameters2Impl;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAliveTimeMillis:J

.field private mFaceRectanglesState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DxoParameters"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    const-wide/16 p1, -0x1

    .line 30
    iput-wide p1, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->mAliveTimeMillis:J

    return-void
.end method

.method private updateAliveState(II)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 172
    const-string/jumbo v2, "updateAliveState: state = "

    if-eq p1, v0, :cond_42

    if-eq p1, v1, :cond_23

    const-wide/16 v0, -0x1

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->setAliveTimeMillis(J)V

    .line 185
    sget-object p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x7d0

    add-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->setAliveTimeMillis(J)V

    .line 181
    sget-object p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_42
    if-ne p2, v1, :cond_5d

    const-wide/16 v0, 0x0

    .line 175
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->setAliveTimeMillis(J)V

    .line 176
    sget-object p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5d
    return-void
.end method

.method private updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 4

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    if-eq p2, v0, :cond_10

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    .line 94
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_f
    return-void

    .line 88
    :cond_10
    sget-object p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "updateRequestAeLock, lockAe: true"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 98
    :cond_20
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clearAll()V
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clearAll()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    return-object p0
.end method

.method public varargs createBurstRequest(IIZ[Landroid/view/Surface;)Ljava/util/ArrayList;
    .registers 6

    const/4 v0, 0x1

    .line 157
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(II)V

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createBurstRequest(IIZ[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public varargs createMultiFrameRequest(ILandroid/view/Surface;Landroid/view/Surface;Lcom/transsion/camera/adapter/CameraParameters2Impl;[Landroid/view/Surface;)Ljava/util/ArrayList;
    .registers 7

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(II)V

    .line 164
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createMultiFrameRequest(ILandroid/view/Surface;Landroid/view/Surface;Lcom/transsion/camera/adapter/CameraParameters2Impl;[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createMultiFrameRequestQcom(IZZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;[Landroid/view/Surface;)Ljava/util/ArrayList;
    .registers 8

    .line 24
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createMultiFrameRequestQcom(IZZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 3

    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(II)V

    .line 140
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method varargs createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 4

    const/4 v0, 0x1

    .line 145
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(II)V

    .line 146
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method varargs createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 5

    const/4 v0, 0x1

    .line 151
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(II)V

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get2XRemosaicMode()Z
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->get2XRemosaicMode()Z

    move-result p0

    return p0
.end method

.method public getAliveTimeMillis()J
    .registers 3

    .line 204
    iget-wide v0, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->mAliveTimeMillis:J

    return-wide v0
.end method

.method public bridge synthetic getDeviceID()Ljava/lang/String;
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->getDeviceID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAlive()Z
    .registers 6

    .line 191
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->getAliveTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_15

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    if-eqz p0, :cond_2e

    .line 194
    sget-object v2, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlive: result = true, timeMillis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2e
    return p0
.end method

.method public bridge synthetic isFlashOn()Z
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isFlashOn()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic replaceSuperNightToSWMFNR()Z
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->replaceSuperNightToSWMFNR()Z

    move-result p0

    return p0
.end method

.method public resetFaceRectangles()V
    .registers 3

    .line 208
    sget-object v0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetFaceRectangles: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->mFaceRectanglesState:I

    return-void
.end method

.method public setAliveTimeMillis(J)V
    .registers 3

    .line 200
    iput-wide p1, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->mAliveTimeMillis:J

    return-void
.end method

.method setTagValue(Ljava/lang/String;)V
    .registers 4

    .line 42
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setTagValue(Ljava/lang/String;)V

    .line 43
    sget-object p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DxoParameters_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method

.method protected updateAliveState(I)V
    .registers 3

    const/4 v0, -0x1

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(II)V

    return-void
.end method

.method public updateFaceRectangles([Landroid/graphics/Rect;)V
    .registers 4

    .line 213
    iget v0, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->mFaceRectanglesState:I

    if-nez v0, :cond_24

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x2

    .line 214
    :goto_9
    iput p1, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->mFaceRectanglesState:I

    .line 215
    sget-object p1, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFaceRectangles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->mFaceRectanglesState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 4

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    if-eq p2, v0, :cond_10

    const/4 v0, 0x2

    if-eq p2, v0, :cond_25

    .line 70
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void

    .line 61
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_25

    .line 63
    sget-object p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "updateRequestAWBLockStatus lockAWB: true"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_25
    return-void

    .line 74
    :cond_26
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic updateRequestAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method protected updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 13

    const/4 v0, 0x0

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "val_asd"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashFacade()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b3

    iget v1, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->mFaceRectanglesState:I

    const/4 v9, 0x2

    if-eq v1, v9, :cond_b3

    const/4 v10, 0x1

    .line 105
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v2

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    if-ne v2, v3, :cond_3c

    .line 111
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3a

    goto :goto_3c

    :cond_3a
    move-object v6, v1

    goto :goto_45

    .line 114
    :cond_3c
    :goto_3c
    sget-object v1, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "updateRequestAEMode to CONTROL_AE_MODE_OFF"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v6, v7

    .line 117
    :goto_45
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_55

    .line 119
    sget-object v1, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "updateRequestFlashMode to FLASH_MODE_OFF"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    :cond_55
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRingScreenLight()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v8

    const-string v4, "off"

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->forceUpdateRequestFlashMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)[Ljava/lang/Integer;

    move-result-object v1

    .line 124
    aget-object v0, v1, v0

    .line 125
    aget-object v1, v1, v10

    .line 127
    sget-object v2, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateRequestFlashMode], aeMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , flashMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mFaceRectangles is null, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_a2

    .line 128
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v9, :cond_a2

    const/16 p0, 0x6d

    goto :goto_a4

    :cond_a2
    const/16 p0, 0x6e

    :goto_a4
    const/4 v2, 0x0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    .line 130
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 131
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_b3
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public bridge synthetic updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V
    .registers 4

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    return-void
.end method

.method public bridge synthetic updateRequestTFEVCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTFEVCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public bridge synthetic updateRequestTranssionTurboFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 3

    .line 24
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionTurboFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    const/4 v0, 0x1

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 48
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSpecialKey(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_1d

    if-ne p2, v0, :cond_1d

    .line 51
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 52
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method
