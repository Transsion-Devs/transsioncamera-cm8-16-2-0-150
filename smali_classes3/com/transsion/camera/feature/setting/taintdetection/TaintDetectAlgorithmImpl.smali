.class public Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;
.super Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;
.source "SourceFile"

# interfaces
.implements Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;
    }
.end annotation


# static fields
.field private static final DEBUG_DUMP:Z

.field private static final IMG_FORMAT_BGR:I

.field private static final IN_SIZE:I = 0xe0

.field private static final OUTPUT_DIR:Ljava/lang/String; = "/sdcard/DCIM/"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mEffectLicenseProvider:Lcom/effecttaint/labcv/core/license/EffectLicenseProvider;

.field protected mResourceProvider:Lcom/effecttaint/labcv/core/lens/ImageQualityResourceProvider;

.field private final mTaintDetCallback:Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectionCallback;

.field protected mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

.field private final mUnzipTask:Lcom/effecttaint/labcv/demo/task/UnzipTask;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TaintDetAlgoImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 37
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isOpenTaintDumpSupport()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->DEBUG_DUMP:Z

    .line 39
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->BGR888:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;

    invoke-virtual {v0}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$PixlFormat;->getValue()I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->IMG_FORMAT_BGR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectionCallback;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectionCallback;)V

    .line 45
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->IDLE:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetCallback:Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectionCallback;

    .line 61
    new-instance p1, Lcom/effecttaint/labcv/core/lens/ImageQualityResourceHelper;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/effecttaint/labcv/core/lens/ImageQualityResourceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mResourceProvider:Lcom/effecttaint/labcv/core/lens/ImageQualityResourceProvider;

    .line 62
    new-instance p1, Lcom/effecttaint/labcv/core/license/EffectLicenseProviderImp;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/effecttaint/labcv/core/license/EffectLicenseProviderImp;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mEffectLicenseProvider:Lcom/effecttaint/labcv/core/license/EffectLicenseProvider;

    .line 63
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 64
    new-instance p1, Lcom/effecttaint/labcv/demo/task/UnzipTask;

    invoke-direct {p1, p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask;-><init>(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mUnzipTask:Lcom/effecttaint/labcv/demo/task/UnzipTask;

    .line 65
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private checkResourceReady()V
    .registers 6

    .line 161
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->RESOURCE_CHECKING:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Lcom/effecttaint/labcv/demo/model/UserData;->getInstance(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/effecttaint/labcv/demo/model/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/effecttaint/labcv/demo/model/UserData;->getVersion()I

    move-result v0

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->getVersionCode()I

    move-result v1

    .line 164
    sget-object v2, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkResourceReady] savedVersionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", currentVersionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ge v0, v1, :cond_39

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mUnzipTask:Lcom/effecttaint/labcv/demo/task/UnzipTask;

    const-string v0, "resource"

    invoke-virtual {p0, v0}, Lcom/effecttaint/labcv/demo/task/UnzipTask;->execute(Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method private static dumpFile(ILjava/nio/ByteBuffer;III)V
    .registers 6

    if-nez p1, :cond_a

    .line 269
    sget-object p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "image data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_a
    invoke-static {p0, p2, p3, p4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->getDumpFileName(IIII)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_19

    .line 274
    sget-object p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "unknown image format."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 277
    :cond_19
    :try_start_19
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_4e

    .line 278
    :try_start_1e
    sget-object p3, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[dumpFile] fileName: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    new-array p0, p0, [B

    .line 280
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 281
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_44

    .line 282
    :try_start_40
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4e

    return-void

    :catchall_44
    move-exception p0

    .line 277
    :try_start_45
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p1

    :try_start_4a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p0

    .line 283
    sget-object p1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "file write exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static dumpFile(I[BIII)V
    .registers 6

    if-nez p1, :cond_a

    .line 251
    sget-object p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "image data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_a
    invoke-static {p0, p2, p3, p4}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->getDumpFileName(IIII)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_19

    .line 256
    sget-object p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "unknow iamge format."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_19
    :try_start_19
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_45

    .line 260
    :try_start_1e
    sget-object p3, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[dumpFile] fileName: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_3b

    .line 262
    :try_start_37
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_45

    return-void

    :catchall_3b
    move-exception p0

    .line 259
    :try_start_3c
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p1

    :try_start_41
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw p0
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_45

    :catch_45
    move-exception p0

    .line 263
    sget-object p1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "file write exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static getDumpFileName(IIII)Ljava/lang/String;
    .registers 6

    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int p0, v0

    :cond_8
    const/16 v0, 0x2008

    .line 304
    const-string v1, "/sdcard/DCIM/"

    if-ne p3, v0, :cond_36

    .line 305
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "frame_%05d_I420_%dx%d.i420"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    const/16 v0, 0x11

    if-ne p3, v0, :cond_62

    .line 307
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "frame_%05d_NV21_%dx%d.nv21"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_62
    const/16 v0, 0x100

    if-ne p3, v0, :cond_8e

    .line 309
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "frame_%05d_JPG_%dx%d.jpg"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 310
    :cond_8e
    sget v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->IMG_FORMAT_BGR:I

    if-ne p3, v0, :cond_ba

    .line 311
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "frame_%05d_BGR_%dx%d.bgr"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ba
    if-nez p3, :cond_e4

    .line 313
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "frame_%05d_RGBA_%dx%d.rgba"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e4
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVersionCode()I
    .registers 3

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 173
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 175
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[getVersionCode] err = "

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method private initTaintDetect()I
    .registers 10

    .line 202
    const-string v1, "[initTaintDetect] err = "

    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->INIT_STARTING:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 204
    :try_start_6
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->start(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    .line 206
    sget-object v2, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v2, v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    :goto_16
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mResourceProvider:Lcom/effecttaint/labcv/core/lens/ImageQualityResourceProvider;

    invoke-interface {v0}, Lcom/effecttaint/labcv/core/lens/ImageQualityResourceProvider;->getTaintModelPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_2b

    .line 209
    sget-object p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "TaintModelPath is NULL !!!!!!!!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 212
    :cond_2b
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mResourceProvider:Lcom/effecttaint/labcv/core/lens/ImageQualityResourceProvider;

    .line 213
    invoke-interface {v0}, Lcom/effecttaint/labcv/core/lens/ImageQualityResourceProvider;->getTaintModelPath()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;->IMAGE_QUALITY_BACKEND_CPU:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;

    invoke-virtual {v0}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$ImageQulityBackendType;->getType()I

    move-result v7

    const/4 v8, 0x2

    const/4 v4, 0x1

    const-string v6, ""

    invoke-direct/range {v3 .. v8}, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    if-nez v0, :cond_4b

    .line 215
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    invoke-direct {v0}, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    :cond_4b
    const/4 v4, 0x0

    .line 220
    :try_start_4c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mEffectLicenseProvider:Lcom/effecttaint/labcv/core/license/EffectLicenseProvider;

    .line 221
    invoke-interface {v6}, Lcom/effecttaint/labcv/core/license/EffectLicenseProvider;->getLicensePath()Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-virtual {v0, v5, v3, v6, v4}, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;->init(Landroid/content/Context;Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;Ljava/lang/String;Z)I

    move-result v2
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5a} :catch_5b

    goto :goto_65

    :catch_5b
    move-exception v0

    .line 223
    sget-object v3, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->ERROR:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 224
    sget-object v3, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v3, v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_65
    if-eqz v2, :cond_72

    .line 229
    const-string v0, "init taint detect"

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->checkResult(Ljava/lang/String;I)Z

    move-result v4

    .line 230
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->ERROR:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    goto :goto_76

    .line 232
    :cond_72
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->INIT_SUCCESS:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 234
    :goto_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initTaintDetect] code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rlt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", modelPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mResourceProvider:Lcom/effecttaint/labcv/core/lens/ImageQualityResourceProvider;

    invoke-interface {v1}, Lcom/effecttaint/labcv/core/lens/ImageQualityResourceProvider;->getTaintModelPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", licensePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mEffectLicenseProvider:Lcom/effecttaint/labcv/core/license/EffectLicenseProvider;

    .line 235
    invoke-interface {p0}, Lcom/effecttaint/labcv/core/license/EffectLicenseProvider;->getLicensePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-static {p0}, Lcom/effecttaint/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    return v2
.end method

.method public static writeFile([B)V
    .registers 4

    const/16 v0, 0xe0

    .line 288
    sget v1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->IMG_FORMAT_BGR:I

    const/4 v2, -0x1

    invoke-static {v2, v0, v0, v1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->getDumpFileName(IIII)Ljava/lang/String;

    move-result-object v0

    .line 289
    :try_start_9
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_2e

    .line 290
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 291
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p0, 0x1

    .line 292
    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 293
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_24

    .line 294
    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2e

    return-void

    :catchall_24
    move-exception p0

    .line 289
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v0

    :try_start_2a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception p0

    .line 295
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[writeFile] err = "

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected checkResult(Ljava/lang/String;I)Z
    .registers 4

    const/4 p0, 0x1

    if-eqz p2, :cond_23

    const/16 v0, -0xb

    if-eq p2, v0, :cond_23

    if-eq p2, p0, :cond_23

    .line 241
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    sget-object p1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_23
    return p0
.end method

.method public detectTaint([BIIZ)Z
    .registers 18

    move/from16 v4, p3

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    const/4 v9, 0x0

    if-eqz v0, :cond_a4

    .line 102
    sget-boolean v10, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->DEBUG_DUMP:Z

    const/4 v11, -0x1

    if-eqz v10, :cond_11

    const/16 v0, 0x11

    .line 103
    invoke-static {v11, p1, p2, v4, v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->dumpFile(I[BIII)V

    :cond_11
    const v0, 0x31000

    .line 106
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    if-eqz p4, :cond_35

    .line 108
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v2, 0x7

    const/16 v5, 0xe0

    const/16 v6, 0xe0

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v8}, Lcom/effecttaint/labcv/effectsdk/YUVUtils;->YUV2RGBA([B[BIIIIIIZ)V

    move/from16 v4, p3

    goto :goto_47

    .line 110
    :cond_35
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x7

    const/16 v5, 0xe0

    const/16 v6, 0xe0

    move-object v0, p1

    move v3, p2

    move/from16 v4, p3

    invoke-static/range {v0 .. v8}, Lcom/effecttaint/labcv/effectsdk/YUVUtils;->YUV2RGBA([B[BIIIIIIZ)V

    :goto_47
    const/16 p1, 0xe0

    if-eqz v10, :cond_4e

    .line 113
    invoke-static {v11, v12, p1, p1, v9}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->dumpFile(ILjava/nio/ByteBuffer;III)V

    :cond_4e
    const v0, 0x24c00

    .line 117
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    sget v5, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->IMG_FORMAT_BGR:I

    invoke-static {v1, v2, v5, p1, p1}, Lcom/effecttaint/labcv/effectsdk/YUVUtils;->RGBA2BGR([B[BIII)V

    if-eqz v10, :cond_76

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->writeFile([B)V

    .line 124
    :cond_76
    const-string p1, "TaintDetect"

    invoke-static {p1}, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;->RECORD(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    invoke-virtual {v1, v0}, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;->process(Ljava/nio/ByteBuffer;)F

    move-result v0

    .line 126
    invoke-static {p1}, Lcom/effecttaint/labcv/core/util/timer_record/LogTimerRecord;->STOP(Ljava/lang/String;)V

    .line 128
    new-instance p1, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;

    invoke-direct {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;-><init>()V

    .line 129
    invoke-virtual {p1, p2}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->setWidth(I)V

    .line 130
    invoke-virtual {p1, v4}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->setHeight(I)V

    .line 131
    invoke-virtual {p1, v0}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->setScore(F)V

    .line 132
    invoke-static {}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->getInstance()Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->isDeviceJitter()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->setDeviceJitter(Z)V

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetCallback:Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectionCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/setting/taintdetection/ITaintDetectionCallback;->onTaintDetected(Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;)V

    const/4 p0, 0x1

    return p0

    :cond_a4
    return v9
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public initTaint()Z
    .registers 4

    .line 70
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initTaint] mAlgorithmState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    sget-object v1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->ERROR:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    if-ne v0, v1, :cond_21

    .line 72
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->unInitTaint()V

    .line 74
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    sget-object v1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->IDLE:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    if-ne v0, v1, :cond_2a

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->checkResourceReady()V

    .line 78
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    sget-object v1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->RESOURCE_READY:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    if-ne v0, v1, :cond_35

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->initTaintDetect()I

    move-result p0

    goto :goto_36

    :cond_35
    const/4 p0, -0x1

    :goto_36
    if-nez p0, :cond_3a

    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method public onEndTask(Z)V
    .registers 4

    .line 192
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onEndTask]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_e

    .line 194
    sget-object p1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->RESOURCE_READY:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    goto :goto_12

    .line 196
    :cond_e
    sget-object p1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->IDLE:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    .line 198
    :goto_12
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mUnzipTask:Lcom/effecttaint/labcv/demo/task/UnzipTask;

    invoke-virtual {p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask;->shutdown()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 148
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onPause] -- "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mUnzipTask:Lcom/effecttaint/labcv/demo/task/UnzipTask;

    invoke-virtual {p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 142
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onResume] ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mUnzipTask:Lcom/effecttaint/labcv/demo/task/UnzipTask;

    invoke-virtual {p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask;->onResume()V

    return-void
.end method

.method public onStartTask()V
    .registers 3

    .line 186
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onStartTask]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->RESOURCE_CHECKING:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    return-void
.end method

.method public setSwitchScene(Z)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    if-eqz v0, :cond_1e

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setSwitchScene]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/effecttaint/labcv/core/util/LogUtils;->i(Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;->setSwitchScene(Z)V

    :cond_1e
    return-void
.end method

.method public unInitTaint()V
    .registers 4

    .line 86
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInitTaint]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/AccelerometerManager;->stop(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception v0

    .line 90
    sget-object v1, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[unInitTaint] err = "

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :goto_19
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    if-eqz v0, :cond_23

    .line 93
    invoke-virtual {v0}, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;->release()I

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mTaintDetectTask:Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;

    .line 96
    :cond_23
    sget-object v0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;->IDLE:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl;->mAlgorithmState:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetectAlgorithmImpl$AlgorithmState;

    return-void
.end method
