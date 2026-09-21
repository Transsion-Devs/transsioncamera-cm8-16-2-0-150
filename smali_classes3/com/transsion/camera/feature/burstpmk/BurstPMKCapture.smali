.class Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;
.super Lcom/transsion/camera/feature/common/BaseCapture;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;
    }
.end annotation


# static fields
.field private static final PROGRESS_MAX:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

.field private final mLock:Ljava/lang/Object;

.field private mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mMoveListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

.field private final mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

.field private mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

.field private final mSupportLandscape:Z

.field private mThumbnailListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmModeStatusListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpeedListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mThumbnailListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monMoveProgressUpdate(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;Landroid/graphics/Point;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->onMoveProgressUpdate(Landroid/graphics/Point;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BurstPMKCapture"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V
    .registers 6

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/common/BaseCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 48
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    .line 62
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    .line 184
    new-instance p1, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    const/4 p2, 0x1

    .line 185
    iput p2, p1, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mDirection:I

    .line 186
    new-instance p1, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    .line 187
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKModeHelper;

    invoke-direct {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKModeHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mModeHelper:Lcom/transsion/camera/feature/common/CommonModeHelper;

    .line 188
    iget-boolean p1, p5, Lcom/transsion/camera/feature/burstpmk/BaseBurstPMKUISpec;->mSupportLandscape:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSupportLandscape:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V
    .registers 1

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;[BIII)V
    .registers 5

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/common/BaseCapture;->savePicture([BIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V
    .registers 1

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void
.end method

.method private calculateFOV()V
    .registers 12

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object v0

    if-nez v0, :cond_12

    .line 328
    sget-object p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateFOV size is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getLensFocalLengths(Ljava/lang/String;)[F

    move-result-object v1

    .line 332
    array-length v2, v1

    if-gtz v2, :cond_25

    .line 333
    sget-object p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateFOV focus is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 337
    :cond_25
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    .line 338
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    const/4 v4, 0x0

    aget v5, v1, v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    div-float/2addr v3, v5

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    double-to-float v3, v7

    iput v3, v2, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mCameraViewAngleForWidth:F

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    .line 340
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    aget v1, v1, v4

    mul-float/2addr v1, v6

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v9

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mCameraViewAngleForHeight:F

    return-void
.end method

.method private isLandscape(I)Z
    .registers 2

    .line 296
    iget-boolean p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSupportLandscape:Z

    if-eqz p0, :cond_f

    const/4 p0, -0x1

    if-eq p1, p0, :cond_f

    if-eqz p1, :cond_f

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private onMoveProgressUpdate(Landroid/graphics/Point;)V
    .registers 6

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1f

    .line 220
    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;

    if-nez v3, :cond_17

    goto :goto_1a

    .line 224
    :cond_17
    invoke-interface {v3, p1}, Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;->onMoveProgress(Landroid/graphics/Point;)V

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 226
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method private sendStopCommand()V
    .registers 4

    const/4 v0, 0x1

    .line 268
    new-array v1, v0, [B

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->process(ILandroid/util/Pair;)V

    return-void
.end method


# virtual methods
.method protected doPreCapture()V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->-$$Nest$mresetState(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;)V

    .line 255
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doPreCapture()V

    return-void
.end method

.method protected doStopCapture()Z
    .registers 2

    .line 260
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doStopCapture()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 262
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->sendStopCommand()V

    :cond_9
    return v0
.end method

.method public init(Z)V
    .registers 3

    .line 246
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->init(Z)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {v0, p1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->init(Z)Z

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V

    return-void
.end method

.method protected onDataAvailable(Landroid/util/Pair;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;III)V"
        }
    .end annotation

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->process(ILandroid/util/Pair;)V

    return-void
.end method

.method public onDirectionChange(I)V
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mDirection:I

    return-void
.end method

.method protected onStreamAvailable(III)V
    .registers 4

    .line 314
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->calculateFOV()V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mImageWidth:I

    .line 316
    iput p2, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mImageHeight:I

    .line 317
    iput p3, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mImageFormat:I

    return-void
.end method

.method public registerMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    if-nez v1, :cond_12

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_23

    :cond_12
    :goto_12
    if-eqz p1, :cond_21

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_10

    throw p0
.end method

.method setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setSpeedListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;)V
    .registers 4

    .line 198
    new-instance v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;-><init>(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mThumbnailListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    return-void
.end method

.method public setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4

    .line 303
    iget v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->isLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mThumbnailHeight:I

    .line 305
    iget p1, p2, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mThumbnailBgWidth:I

    return-void

    .line 307
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mThumbnailHeight:I

    .line 308
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mThumbnailBgWidth:I

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 274
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->unInit()V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->unInit()Z

    .line 278
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    .line 279
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mThumbnailListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_15
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    if-eqz p0, :cond_1f

    .line 282
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 284
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public unRegisterMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    if-eqz p0, :cond_11

    if-nez p1, :cond_a

    goto :goto_11

    .line 235
    :cond_a
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 233
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    .line 236
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public updateOrientation(I)V
    .registers 4

    .line 289
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateOrientation(I)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->isLandscape(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mStitchOnSensorWidthSide:Z

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    .line 292
    invoke-virtual {v1, p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mOrientation:I

    return-void
.end method
