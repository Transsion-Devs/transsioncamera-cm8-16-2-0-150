.class public Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;


# direct methods
.method public static synthetic $r8$lambda$Q4yiZm4thKlGCtqOepN-6fhKcTE(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 3

    .line 221
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updateTranssionCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WWh78wZTjsEwO64vuihjLote67A(ILcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 227
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updateTranssionCameraModeId(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZeanYpE7GmAF9fLYi4OC1jG7XTM(Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 233
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updateThumbnailUri(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$beylGasqufqYHC3nSUGYGMohptg(JLcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 3

    .line 314
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onCaptureFailed(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$cqOpVM0gd94RFGXFkbk_gUnTZAk(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 388
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onLivePhotoStateChanged(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fCpw_YTm_LviMKWCnB4_U5FRyO0(ZLcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 281
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onThumbnailPendingClicked(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$g3aKwdh2Sg_aU9KME12P6IPilBA(JIILcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 5

    .line 331
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->setTapCapConfig(JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDlmK7Svt3f6KxCiBsUuBTLPTcs(IILcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 3

    .line 337
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->setAppIOOperationStart(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$musbNTpMoKsUTNMCZRBgSFpfMvM(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 4

    .line 302
    invoke-virtual {p3, p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wM_fV_9HbBafYVpPc5pzMzwYGAQ(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 308
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onCaptureProgressed(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wWPPlDbXVHHZUEIAAuVWVmUg8OY(Ljava/util/function/UnaryOperator;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 2

    .line 320
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onCaptureProgressed(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xzuKhk7y_Dp5s8lw3lkZw02OulM(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 3

    .line 179
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->removeCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2sVyd4zDkK1nBJuNJTwYI1bPAw(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)V
    .registers 3

    .line 173
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->addCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BSMProxy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;
    .registers 1

    .line 37
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$Holder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    return-object v0
.end method

.method private varargs getLifecycleObserver([Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;)Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;
    .registers 5

    if-eqz p1, :cond_12

    .line 59
    array-length p0, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p0, :cond_12

    aget-object v1, p1, v0

    .line 60
    invoke-interface {v1}, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static writeXMPMetadata([BLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Z)[B
    .registers 6

    .line 410
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 411
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_1f

    .line 412
    :try_start_a
    invoke-static {v1, v0, p1, p2, p3}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Z)Z

    move-result p1

    if-nez p1, :cond_25

    .line 413
    sget-object p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "writeXMPMetadata: failed to write XMP metadata"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_23

    .line 418
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_21

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p1

    goto :goto_45

    :catchall_21
    move-exception p1

    goto :goto_3c

    :catchall_23
    move-exception p1

    goto :goto_33

    .line 416
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 417
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_23

    .line 418
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_21

    :try_start_2f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_1f

    return-object p1

    .line 411
    :goto_33
    :try_start_33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception p2

    :try_start_38
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw p1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_21

    :goto_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p2

    :try_start_41
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw p1
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_1f

    .line 419
    :goto_45
    sget-object p2, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "writeXMPMetadata failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public static writeXMPMetadata([BLcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Z)[B
    .registers 7

    .line 392
    const-string/jumbo v0, "writeXMPMetadata"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 394
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 397
    invoke-static {p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->parseXMPMeta([B)Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;

    move-result-object v2

    .line 400
    invoke-static {p0, v2, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->writeXMPMetadata([BLcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Z)[B

    move-result-object p0

    .line 401
    sget-object p1, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeXMPMetadata: cost = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_32

    .line 404
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object p0

    :catchall_32
    move-exception p0

    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 405
    throw p0
.end method


# virtual methods
.method public addCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)V
    .registers 4

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)V

    .line 173
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getAppUserID()I
    .registers 2

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getAppUserID()I

    move-result p0

    return p0

    .line 207
    :cond_9
    sget-object p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "StorageManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/transsion/camera/utils/FileUtil;->getUserId()I

    move-result p0

    return p0
.end method

.method public getBackgroundServiceType()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 1

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBackgroundServiceType()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object p0

    return-object p0

    .line 239
    :cond_9
    sget-object p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    return-object p0
.end method

.method public getBackgroundServiceType(I)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 2

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBackgroundServiceType(I)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object p0

    return-object p0

    .line 245
    :cond_9
    sget-object p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    return-object p0
.end method

.method public getBackgroundShot2ShotSkipPolicy()Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBackgroundShot2ShotSkipPolicy()Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getBaseSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-nez p0, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBaseSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryCapacity()I
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getBatteryCapacity()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 251
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0

    .line 253
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_18

    return-object p0

    .line 254
    :cond_18
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getLastPostViewInfo()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLastPostViewInfo()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$PostViewInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLowQualityMediaForProcessProvider(Landroid/content/Context;)Landroid/content/ContentValues;
    .registers 2

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaForProcessProvider(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLowQualityMediaSaverListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getLowQualityMediaSaverListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public getPostViewJpeg(J)[B
    .registers 3

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getPostViewJpeg(J)[B

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQualityInfo(Landroid/content/ContentValues;)Lcom/transsion/camera/app/common/taps/entity/QualityInfo;
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getQualityInfo(Landroid/content/ContentValues;)Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemUserID()I
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getSystemUserID()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getTopPackageName()Ljava/lang/String;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->getTopPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public varargs init(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;[Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;)Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;
    .registers 7

    .line 45
    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_29

    aget-object v2, p3, v1

    .line 46
    invoke-interface {v2}, Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 47
    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getLifecycleObserver([Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;)Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    const/4 p1, 0x0

    .line 48
    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->start()V

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->resume()V

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 54
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    return-object p0
.end method

.method public isLowQualityJpeg(Landroid/net/Uri;)Z
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isLowQualityJpeg(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedASDShot2ShotSkipPolicy()Z
    .registers 1

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isNeedASDShot2ShotSkipPolicy()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMuSlimeBodyShot2ShotSkipPolicy()Z
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isNeedMuSlimeBodyShot2ShotSkipPolicy()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedPortraitModeEnhanceShot2ShotSkipPolicy()Z
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isNeedPortraitModeEnhanceShot2ShotSkipPolicy()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedShotSkipByCTSTest()Z
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isNeedShotSkipByCTSTest()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isReady()Z
    .registers 1

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isReady()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isShutterEnable()Z
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isShutterEnable()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public isSupport()Z
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDefer()Z
    .registers 1

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->isSupportDefer()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityPause()V
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_7

    .line 156
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onActivityPause()V

    :cond_7
    return-void
.end method

.method public onActivityResume()V
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_7

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onActivityResume()V

    :cond_7
    return-void
.end method

.method public onAllHighQualityJpegCompleted()V
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_7

    .line 127
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onAllHighQualityJpegCompleted()V

    :cond_7
    return-void
.end method

.method public onCaptureFailed(J)V
    .registers 4

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda11;-><init>(J)V

    .line 314
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCaptureProgressed(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 308
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCaptureProgressed(Ljava/util/function/UnaryOperator;)V
    .registers 3

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/UnaryOperator;)V

    .line 320
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 5

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda1;-><init>(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 302
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onHighQualityJpegAvailable([BJLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz v0, :cond_f

    if-eqz p4, :cond_7

    goto :goto_c

    .line 97
    :cond_7
    new-instance p4, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$1;

    invoke-direct {p4, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$1;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;)V

    :goto_c
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onHighQualityJpegAvailable([BJLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    :cond_f
    return-void
.end method

.method public onHighQualityJpegFailed(JLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    .registers 4

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_7

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onHighQualityJpegFailed(JLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    :cond_7
    return-void
.end method

.method public onLivePhotoStateChanged(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V
    .registers 3

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V

    .line 388
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onThumbnailClicked()V
    .registers 2

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onThumbnailPendingClicked(Z)V
    .registers 3

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda10;-><init>(Z)V

    .line 281
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V
    .registers 4

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda2;-><init>(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    .line 179
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setAppIOOperationStart(II)V
    .registers 4

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda7;-><init>(II)V

    .line 337
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setBackgroundService(Lcom/transsion/camera/app/common/taps/IBackgroundController;)V
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_7

    .line 71
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->setBackgroundService(Lcom/transsion/camera/app/common/taps/IBackgroundController;)V

    :cond_7
    return-void
.end method

.method public setGoToGalleryMediaStoreId(J)V
    .registers 3

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_7

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->setGoToGalleryMediaStoreId(J)V

    :cond_7
    return-void
.end method

.method public setTapCapConfig(JII)V
    .registers 6

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda6;-><init>(JII)V

    .line 331
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setThumbnailController(Lcom/transsion/camera/app/common/taps/IThumbnailController;)V
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_7

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->setThumbnailController(Lcom/transsion/camera/app/common/taps/IThumbnailController;)V

    :cond_7
    return-void
.end method

.method public updatePostViewPicture(J[BLandroid/graphics/Bitmap;Z)V
    .registers 6

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    if-eqz p0, :cond_7

    .line 120
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->updatePostViewPicture(J[BLandroid/graphics/Bitmap;Z)V

    :cond_7
    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;)V
    .registers 3

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/Uri;)V

    .line 233
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateTranssionCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .registers 4

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 221
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateTranssionCameraModeId(I)V
    .registers 3

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->mStorageManager:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy$$ExternalSyntheticLambda9;-><init>(I)V

    .line 227
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
