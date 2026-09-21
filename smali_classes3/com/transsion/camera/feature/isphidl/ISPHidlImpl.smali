.class public Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/isphidl/IISPHidlService;


# static fields
.field private static final CUS_DEFER_REQUEST_MODE:I = 0x2

.field private static final POSTALGO_CAMERA_MODE:Ljava/lang/String; = "com.transsion.cameraMode"

.field private static final POSTALGO_ISP_RAW_SIZE:Ljava/lang/String; = "com.mediatek.control.capture.ispMetaSizeForRaw"

.field private static final POSTALGO_PICTURE_SIZE:Ljava/lang/String; = "postalgo.picturesize"

.field private static final POSTALGO_PREVIEW_SIZE:Ljava/lang/String; = "postalgo.previewsize"

.field private static final POSTALGO_SENSOR_LOGICAL_ID:Ljava/lang/String; = "postalgo.sensor.logicalId"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mCallBack:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

.field mCallback:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

.field private mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

.field private mCameraCaptureState:Lcom/transsion/camera/adapter/CameraCaptureState;

.field private mReceiveFraming:Z

.field private mSettingShot2ShotCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

.field private final mStorageReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mTZCallback:Lcom/transsion/campostalgo/ITZCaptureCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraCaptureState(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Lcom/transsion/camera/adapter/CameraCaptureState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCameraCaptureState:Lcom/transsion/camera/adapter/CameraCaptureState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiveFraming(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mReceiveFraming:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingShot2ShotCallback(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mSettingShot2ShotCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShot2ShotCallback(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraCaptureState(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;Lcom/transsion/camera/adapter/CameraCaptureState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCameraCaptureState:Lcom/transsion/camera/adapter/CameraCaptureState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceiveFraming(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mReceiveFraming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetJpegData(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;Landroid/os/ParcelFileDescriptor;)[B
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->getJpegData(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetCaptureState(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->resetCaptureState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mStorageReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 276
    new-instance v1, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$2;-><init>(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mTZCallback:Lcom/transsion/campostalgo/ITZCaptureCallback;

    .line 59
    sget-object v1, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "ISPHidlImpl create"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    if-nez v1, :cond_34

    .line 61
    new-instance v1, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    invoke-direct {v1}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->init(Landroid/content/Context;Z)Z

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mTZCallback:Lcom/transsion/campostalgo/ITZCaptureCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->setTZCaptureCallback(Lcom/transsion/campostalgo/ITZCaptureCallback;)V

    :cond_34
    return-void
.end method

.method private configFeatureParam(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;Lcom/transsion/campostalgo/FeatureParam;II)V
    .registers 7

    .line 158
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    .line 159
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 160
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    filled-new-array {p2, p3}, [I

    move-result-object p2

    .line 161
    const-string p3, "postalgo.previewsize"

    invoke-virtual {p4, p3, p0}, Lcom/transsion/campostalgo/FeatureParam;->appendIntArray(Ljava/lang/String;[I)V

    .line 162
    const-string p0, "postalgo.picturesize"

    invoke-virtual {p4, p0, p1}, Lcom/transsion/campostalgo/FeatureParam;->appendIntArray(Ljava/lang/String;[I)V

    .line 163
    const-string p0, "com.mediatek.control.capture.ispMetaSizeForRaw"

    invoke-virtual {p4, p0, p2}, Lcom/transsion/campostalgo/FeatureParam;->appendIntArray(Ljava/lang/String;[I)V

    .line 164
    const-string p0, "postalgo.sensor.logicalId"

    invoke-virtual {p4, p0, p5}, Lcom/transsion/campostalgo/FeatureParam;->appendInt(Ljava/lang/String;I)V

    .line 165
    const-string p0, "com.transsion.cameraMode"

    invoke-virtual {p4, p0, p6}, Lcom/transsion/campostalgo/FeatureParam;->appendInt(Ljava/lang/String;I)V

    return-void
.end method

.method private getJpegData(Landroid/os/ParcelFileDescriptor;)[B
    .registers 7

    const/4 p0, 0x0

    .line 336
    :try_start_1
    invoke-static {p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_62

    .line 337
    :try_start_5
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    new-array p0, v2, [B

    .line 339
    sget-object v2, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getJpegData: remaining = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v3, 0x400

    if-le v1, v3, :cond_56

    .line 342
    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getJpegData: content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_54

    goto :goto_56

    :catchall_54
    move-exception v1

    goto :goto_64

    .line 345
    :cond_56
    :goto_56
    :try_start_56
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_62

    if-eqz p1, :cond_61

    :try_start_5b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Landroid/system/ErrnoException; {:try_start_5b .. :try_end_5e} :catch_5f

    return-object p0

    :catch_5f
    move-exception p1

    goto :goto_7a

    :cond_61
    return-object p0

    :catchall_62
    move-exception v0

    goto :goto_6f

    :goto_64
    if-eqz v0, :cond_6e

    .line 335
    :try_start_66
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    throw v1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_62

    :goto_6f
    if-eqz p1, :cond_79

    :try_start_71
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception p1

    :try_start_76
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_79
    :goto_79
    throw v0
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7a} :catch_5f
    .catch Landroid/system/ErrnoException; {:try_start_76 .. :try_end_7a} :catch_5f

    .line 346
    :goto_7a
    sget-object v0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJpegData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private resetCaptureState()V
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_c

    .line 258
    new-instance v1, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 260
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mSettingShot2ShotCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mSettingShot2ShotCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    new-instance v1, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 263
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_2d

    .line 264
    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->flush()V

    .line 266
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mSettingShot2ShotCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mSettingShot2ShotCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->flush()V

    :cond_42
    return-void
.end method


# virtual methods
.method public configCaptureParam()V
    .registers 2

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mReceiveFraming:Z

    return-void
.end method

.method public flush([J)V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mReceiveFraming:Z

    if-eqz p0, :cond_b

    .line 243
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->flush([J)V

    :cond_b
    return-void
.end method

.method public hasISPHidlService()Z
    .registers 1

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->supportService()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onServiceDied()V
    .registers 4

    .line 249
    iget-boolean v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mReceiveFraming:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mReceiveFraming:Z

    .line 251
    sget-object v0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onServiceDied] flush mShot2ShotCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->resetCaptureState()V

    :cond_22
    return-void
.end method

.method public onStorageReady()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mStorageReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->setTZCaptureCallback()V

    return-void
.end method

.method public pause(I)V
    .registers 5

    .line 227
    iget-boolean v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mReceiveFraming:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mReceiveFraming:Z

    .line 229
    sget-object v0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pause] flush mShot2ShotCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_26

    .line 231
    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->flush()V

    .line 233
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mSettingShot2ShotCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mSettingShot2ShotCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->flush()V

    .line 237
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->stop(I)V

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setIISPHidlServiceCallback(Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;)V
    .registers 3

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCallBack:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    if-eqz v0, :cond_b

    .line 200
    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCallback:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    .line 201
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->setISPHidlServiceCallback(Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;)V

    :cond_b
    return-void
.end method

.method public setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public setSettingShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 3

    .line 217
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mSettingShot2ShotCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-void
.end method

.method public setTZCapConfig(JII)I
    .registers 5

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    if-eqz p0, :cond_7

    .line 171
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->setTZCapConfig(JII)V

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public setTZCaptureCallback()V
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    if-eqz v0, :cond_9

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mTZCallback:Lcom/transsion/campostalgo/ITZCaptureCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->setTZCaptureCallback(Lcom/transsion/campostalgo/ITZCaptureCallback;)V

    :cond_9
    return-void
.end method

.method public startPostAlgo(Landroid/view/Surface;Landroid/util/Size;Landroid/util/Size;Ljava/util/List;Landroid/util/Size;III)[Lcom/transsion/camera/app/common/mode/SurfaceInfo;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            "III)[",
            "Lcom/transsion/camera/app/common/mode/SurfaceInfo;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 73
    sget-object p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[startPostAlgo] mCamPostAlgo: null return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_d
    const/4 v2, 0x2

    .line 76
    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->stop(I)V

    .line 77
    sget-object v0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startPostAlgo] + rawSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " tuningDataSize:"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p4, "x"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " pictureSize: "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " imageFormat:"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p4, p6

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " previewSize = "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " appModeId = "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 77
    invoke-static {v0, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    new-instance p4, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    new-instance v2, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {v2}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    invoke-direct {p4, v2}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;-><init>(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    invoke-virtual {p4}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->build()Lcom/transsion/camera/adapter/CameraCaptureState;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCameraCaptureState:Lcom/transsion/camera/adapter/CameraCaptureState;

    .line 83
    new-instance v7, Lcom/transsion/campostalgo/FeatureParam;

    invoke-direct {v7}, Lcom/transsion/campostalgo/FeatureParam;-><init>()V

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move/from16 v8, p7

    .line 84
    invoke-direct/range {v3 .. v9}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->configFeatureParam(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;Lcom/transsion/campostalgo/FeatureParam;II)V

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_94

    .line 87
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_94
    new-instance p1, Lcom/transsion/campostalgo/FeatureConfig;

    invoke-direct {p1}, Lcom/transsion/campostalgo/FeatureConfig;-><init>()V

    filled-new-array {p1}, [Lcom/transsion/campostalgo/FeatureConfig;

    move-result-object p3

    .line 90
    invoke-virtual {p1, p2}, Lcom/transsion/campostalgo/FeatureConfig;->addSurface(Ljava/util/List;)V

    .line 91
    invoke-virtual {p1, v7}, Lcom/transsion/campostalgo/FeatureConfig;->addInterfaceParams(Lcom/transsion/campostalgo/FeatureParam;)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    new-instance p2, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;-><init>(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)V

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->start([Lcom/transsion/campostalgo/FeatureConfig;Lcom/transsion/campostalgo/ICamPostAlgoCallback;)Lcom/transsion/campostalgo/FeatureResult;

    move-result-object p1

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[startPostAlgo] result = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCamPostAlgo:Lcom/transsion/camera/feature/isphidl/TranPostAlgo;

    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mTZCallback:Lcom/transsion/campostalgo/ITZCaptureCallback;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/feature/isphidl/TranPostAlgo;->setTZCaptureCallback(Lcom/transsion/campostalgo/ITZCaptureCallback;)V

    if-nez p1, :cond_d1

    .line 144
    const-string p0, "[startPostAlgo] error -"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 147
    :cond_d1
    invoke-virtual {p1}, Lcom/transsion/campostalgo/FeatureResult;->getStreams()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p2, p0, [Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    const/4 p3, 0x0

    :goto_dc
    if-ge p3, p0, :cond_fd

    .line 149
    invoke-virtual {p1}, Lcom/transsion/campostalgo/FeatureResult;->getStreams()Ljava/util/Vector;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/campostalgo/Stream;

    .line 150
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-virtual {p4}, Lcom/transsion/campostalgo/Stream;->getmSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {p4}, Lcom/transsion/campostalgo/Stream;->getmSensorId()I

    move-result v5

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;I)V

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_dc

    .line 152
    :cond_fd
    sget-object p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[startPostAlgo] - surfaces = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2
.end method
