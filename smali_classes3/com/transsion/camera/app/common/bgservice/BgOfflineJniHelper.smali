.class public Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;
.super Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

.field private final mHeight:I

.field private volatile mIsOfflineJniEnable:Z

.field private final mOfflineJniListener:Lcom/transsion/camera/adapter/platformcamera/OfflineImageAvaliableListener;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BgOfflineJniHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    .line 28
    new-instance p1, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper$1;-><init>(Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mOfflineJniListener:Lcom/transsion/camera/adapter/platformcamera/OfflineImageAvaliableListener;

    .line 55
    iput p2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mWidth:I

    .line 56
    iput p3, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mHeight:I

    return-void
.end method

.method private acquireImageQcom(Landroid/media/ImageReader;)V
    .registers 11

    const/4 v0, 0x0

    .line 132
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_b1
    .catchall {:try_start_1 .. :try_end_4} :catchall_ae

    .line 133
    :try_start_4
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mIsReleased:Z

    if-eqz v2, :cond_15

    .line 134
    sget-object p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ImageReader is release, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    monitor-exit v1

    return-void

    :catchall_11
    move-exception p0

    move-object p1, v0

    goto/16 :goto_a0

    .line 137
    :cond_15
    sget-object v2, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[acquireImageQcom] ++ "

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_11

    if-nez p1, :cond_34

    .line 141
    :try_start_22
    const-string p0, "[acquireImageQcom] image is null"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2e

    if-eqz p1, :cond_c0

    .line 171
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :catchall_2e
    move-exception p0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto/16 :goto_a0

    .line 144
    :cond_34
    :try_start_34
    invoke-virtual {p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_49

    .line 146
    const-string p0, "[acquireImageQcom] imageHardwareBuffer is null"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_2e

    if-eqz v0, :cond_45

    .line 168
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 171
    :cond_45
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    .line 149
    :cond_49
    :try_start_49
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getInstance()Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getCopiedHwBuffer(Landroid/hardware/HardwareBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v3, :cond_9e

    if-nez v2, :cond_58

    goto :goto_9e

    .line 153
    :cond_58
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getRawPictureSize()Ljava/util/List;

    move-result-object v3

    .line 154
    iget-object v4, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraProxy;->isMultiCamera()Z

    move-result v4

    .line 156
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-le v5, v6, :cond_8f

    if-eqz v4, :cond_8f

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 157
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 158
    iget v4, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mWidth:I

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_8e

    iget p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mHeight:I

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-eq p0, v3, :cond_8d

    goto :goto_8e

    :cond_8d
    move v6, v7

    :cond_8e
    :goto_8e
    move v7, v6

    .line 162
    :cond_8f
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getInstance()Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    move-result-object p0

    invoke-virtual {p0, v2, v7}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->offlineJniHwBuffer(Landroid/hardware/HardwareBuffer;Z)V

    .line 163
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_49 .. :try_end_97} :catchall_2e

    .line 168
    :goto_97
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 171
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    .line 151
    :cond_9e
    :goto_9e
    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_2e

    goto :goto_97

    .line 163
    :goto_a0
    :try_start_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_ac

    :try_start_a1
    throw p0
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a2} :catch_a7
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception p0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_c2

    :catch_a7
    move-exception p0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_b3

    :catchall_ac
    move-exception p0

    goto :goto_a0

    :catchall_ae
    move-exception p0

    move-object p1, v0

    goto :goto_c2

    :catch_b1
    move-exception p0

    move-object p1, v0

    .line 165
    :goto_b3
    :try_start_b3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_c1

    if-eqz v0, :cond_bb

    .line 168
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_bb
    if-eqz p1, :cond_c0

    .line 171
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_c0
    return-void

    :catchall_c1
    move-exception p0

    :goto_c2
    if-eqz v0, :cond_c7

    .line 168
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_c7
    if-eqz p1, :cond_cc

    .line 171
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 173
    :cond_cc
    throw p0
.end method


# virtual methods
.method protected disableBGEnable()V
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->disableBGEnable()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    return-void
.end method

.method protected getImageAvailableListener(Ljava/lang/String;)Landroid/media/ImageReader$OnImageAvailableListener;
    .registers 3

    .line 83
    const-string v0, "QcomJpegPic"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mOfflineJniListener:Lcom/transsion/camera/adapter/platformcamera/OfflineImageAvaliableListener;

    return-object p0

    .line 86
    :cond_b
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getImageAvailableListener(Ljava/lang/String;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object p0

    return-object p0
.end method

.method protected isEnable()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    return p0
.end method

.method protected isNeedReleaseAfterCheckNum()Z
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedReleaseAfterCheckNum: mIsOfflineJniEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->isNeedReleaseAfterCheckNum()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method protected isUnnecessaryChangeCaptureCount()Z
    .registers 2

    .line 92
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->isUnnecessaryChangeCaptureCount()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected isUnnecessaryChangePictureCount()Z
    .registers 2

    .line 97
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->isUnnecessaryChangePictureCount()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected onProcessSerialImage(Landroid/media/ImageReader;)V
    .registers 3

    .line 117
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->isOfflineJniSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 119
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->acquireImageQcom(Landroid/media/ImageReader;)V

    return-void

    .line 121
    :cond_18
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->acquireImage(Landroid/media/ImageReader;)V

    return-void

    .line 124
    :cond_1c
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->onProcessSerialImage(Landroid/media/ImageReader;)V

    return-void
.end method

.method protected resetBGEnable(ZZ)V
    .registers 3

    .line 71
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->resetBGEnable(ZZ)V

    .line 72
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    return-void
.end method

.method public setCameraProxy(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    return-void
.end method

.method protected setCustomEnable(ZZ)V
    .registers 3

    .line 60
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->setCustomEnable(ZZ)V

    .line 61
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    return-void
.end method

.method protected shouldReleaseSurface()Z
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldReleaseSurface: mIsOfflineJniEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;->mIsOfflineJniEnable:Z

    if-eqz v0, :cond_1e

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_1e
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->shouldReleaseSurface()Z

    move-result p0

    return p0
.end method
