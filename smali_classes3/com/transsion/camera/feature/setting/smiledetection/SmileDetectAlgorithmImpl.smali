.class public Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;
.super Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_MODEL:Ljava/lang/String; = "M_FaceAttribute_RGB_Smile_2_1.2.22.model"

.field private static final SMILE_FRAME_LIMIT_COUNT:I = 0x1

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAttribute:Lcom/stmobile/facebasejni/FaceAttribute;

.field private mAttributeData:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;",
            ">;"
        }
    .end annotation
.end field

.field private mHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAttributing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSmileCount:I

.field private mTracker:Lcom/stmobile/facebasejni/FaceTracker;

.field private resizeConfig:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SmileDetectAlgorithmImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mIsAttributing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mAttributeData:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method private static copyFileIfNeed(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    .line 229
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_58
    .catchall {:try_start_1 .. :try_end_12} :catchall_53

    .line 231
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_4e
    .catchall {:try_start_12 .. :try_end_1a} :catchall_49

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-nez p1, :cond_26

    .line 245
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 246
    :goto_22
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-void

    .line 234
    :cond_26
    :try_start_26
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_4e
    .catchall {:try_start_26 .. :try_end_2b} :catchall_49

    const/16 v0, 0x400

    .line 235
    :try_start_2d
    new-array v0, v0, [B

    .line 236
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_33
    if-lez v1, :cond_42

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 239
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_33

    :catchall_3e
    move-exception v0

    goto :goto_60

    :catch_40
    move-exception v0

    goto :goto_5c

    .line 241
    :cond_42
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_45} :catch_40
    .catchall {:try_start_2d .. :try_end_45} :catchall_3e

    .line 245
    :goto_45
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_22

    :catchall_49
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_60

    :catch_4e
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_5c

    :catchall_53
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_60

    :catch_58
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    .line 243
    :goto_5c
    :try_start_5c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_3e

    goto :goto_45

    .line 245
    :goto_60
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 246
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 247
    throw v0
.end method

.method private static copyModelFile(Landroid/content/Context;)V
    .registers 2

    .line 222
    const-string v0, "M_FaceAttribute_RGB_Smile_2_1.2.22.model"

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->copyFileIfNeed(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private correctFaceOrientationForScreenFlip(Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;)Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;
    .registers 2

    .line 120
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$1;->$SwitchMap$com$stmobile$facebasejni$common$FaceCommon$FaceOrientation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_20

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1a

    const/4 p1, 0x4

    if-eq p0, p1, :cond_17

    .line 134
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->UNKNOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 131
    :cond_17
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->LEFT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 128
    :cond_1a
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->RIGHT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 125
    :cond_1d
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->UP:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 122
    :cond_20
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->DOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0
.end method

.method private correctFaceOrientationForScreenPocket(Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;)Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;
    .registers 2

    .line 97
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$1;->$SwitchMap$com$stmobile$facebasejni$common$FaceCommon$FaceOrientation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_20

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1a

    const/4 p1, 0x4

    if-eq p0, p1, :cond_17

    .line 111
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->UNKNOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 108
    :cond_17
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->RIGHT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 105
    :cond_1a
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->LEFT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 102
    :cond_1d
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->UP:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0

    .line 99
    :cond_20
    sget-object p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->DOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0
.end method

.method private getOldestFace([Lcom/stmobile/facebasejni/common/FaceInfo;)Lcom/stmobile/facebasejni/common/FaceInfo;
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 262
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_32

    .line 268
    :cond_7
    array-length v1, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v1, :cond_32

    aget-object v5, p1, v4

    .line 269
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v7, v5, Lcom/stmobile/facebasejni/common/FaceInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;

    if-nez v6, :cond_20

    return-object v5

    .line 274
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->getLastUpdateTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v6, v7, v2

    if-lez v6, :cond_2f

    move-object v0, v5

    move-wide v2, v7

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_32
    :goto_32
    return-object v0
.end method

.method private isValid(Lcom/stmobile/facebasejni/common/FaceInfo;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 288
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/stmobile/facebasejni/common/FaceInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;

    const/4 p1, 0x1

    if-nez p0, :cond_16

    return p1

    .line 292
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->getLastUpdateTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long p0, v1, v3

    if-lez p0, :cond_26

    return p1

    :cond_26
    return v0
.end method

.method private postAttribute([Lcom/stmobile/facebasejni/common/FaceInfo;[BII)V
    .registers 8

    .line 251
    sget-object v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faces = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsAttributing.get() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mIsAttributing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_45

    .line 252
    array-length v0, p1

    if-lez v0, :cond_45

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mIsAttributing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_45

    .line 253
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->getOldestFace([Lcom/stmobile/facebasejni/common/FaceInfo;)Lcom/stmobile/facebasejni/common/FaceInfo;

    move-result-object p1

    .line 254
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->isValid(Lcom/stmobile/facebasejni/common/FaceInfo;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 255
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;-><init>(Lcom/stmobile/facebasejni/common/FaceInfo;[BII)V

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mAttributeData:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_45
    return-void
.end method


# virtual methods
.method public detectSmile([BII)Z
    .registers 16

    .line 143
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 144
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 145
    :goto_1d
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->getFaceOrientation(Z)Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    move-result-object v3

    .line 146
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenPocket()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 147
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->correctFaceOrientationForScreenPocket(Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;)Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    move-result-object v3

    :cond_2d
    :goto_2d
    move-object v9, v3

    goto :goto_3c

    .line 148
    :cond_2f
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenFlip()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 149
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->correctFaceOrientationForScreenFlip(Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;)Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    move-result-object v3

    goto :goto_2d

    .line 151
    :goto_3c
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mTracker:Lcom/stmobile/facebasejni/FaceTracker;

    if-eqz v4, :cond_4a

    .line 152
    sget-object v6, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->NV21:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    move-object v5, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/stmobile/facebasejni/FaceTracker;->track([BLcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;IILcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;)[Lcom/stmobile/facebasejni/common/FaceInfo;

    move-result-object p1

    goto :goto_4e

    :cond_4a
    move-object v5, p1

    move v7, p2

    move v8, p3

    const/4 p1, 0x0

    .line 154
    :goto_4e
    invoke-direct {p0, p1, v5, v7, v8}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->postAttribute([Lcom/stmobile/facebasejni/common/FaceInfo;[BII)V

    .line 155
    sget-object p1, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "attribute FACING_FRONT = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " faceOrientation = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->getValue()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mAttributeData:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;

    if-nez p2, :cond_83

    .line 160
    const-string p0, " attributeData == null"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 164
    :cond_83
    iget-object p3, p2, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->faceInfo:Lcom/stmobile/facebasejni/common/FaceInfo;

    filled-new-array {p3}, [Lcom/stmobile/facebasejni/common/FaceInfo;

    move-result-object v8

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 166
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mIsAttributing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mAttribute:Lcom/stmobile/facebasejni/FaceAttribute;

    if-nez v3, :cond_97

    return v1

    .line 170
    :cond_97
    iget-object v4, p2, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->nv21:[B

    sget-object v5, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->NV21:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    iget v6, p2, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->width:I

    iget v7, p2, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->height:I

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/stmobile/facebasejni/FaceAttribute;->detectAttribute([BLcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;II[Lcom/stmobile/facebasejni/common/FaceInfo;I)[Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    move-result-object p3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attributeResults = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mAttributeData:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mIsAttributing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p3, :cond_c5

    return v1

    .line 179
    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attributeResults length = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " issmile = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, v1

    iget-boolean v3, v3, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->isSmile:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasMask:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, v1

    iget-boolean v3, v3, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->hasMask:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    aget-object p1, p3, v1

    iget-boolean p1, p1, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->hasMask:Z

    if-eqz p1, :cond_f9

    return v1

    .line 183
    :cond_f9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p2, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->faceInfo:Lcom/stmobile/facebasejni/common/FaceInfo;

    iget v0, v0, Lcom/stmobile/facebasejni/common/FaceInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;

    if-nez p1, :cond_12b

    .line 186
    new-instance p1, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;-><init>()V

    .line 187
    aget-object v0, p3, v1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->addAttr(Lcom/stmobile/facebasejni/common/FaceAttrInfo;)V

    .line 188
    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->setAttributeTime(J)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, p2, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->faceInfo:Lcom/stmobile/facebasejni/common/FaceInfo;

    iget p2, p2, Lcom/stmobile/facebasejni/common/FaceInfo;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_133

    .line 191
    :cond_12b
    aget-object p2, p3, v1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->addAttr(Lcom/stmobile/facebasejni/common/FaceAttrInfo;)V

    .line 192
    invoke-virtual {p1, v3, v4}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->setAttributeTime(J)V

    .line 194
    :goto_133
    aget-object p1, p3, v1

    iget-boolean p1, p1, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->isSmile:Z

    if-eqz p1, :cond_144

    .line 195
    iget p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mSmileCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mSmileCount:I

    if-ge p1, v2, :cond_141

    return v1

    .line 198
    :cond_141
    iput v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mSmileCount:I

    return v2

    .line 201
    :cond_144
    iput v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mSmileCount:I

    return v1
.end method

.method public initSmile()Z
    .registers 8

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mContext:Landroid/content/Context;

    const-string v1, "face_license.lic"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/FileUtil;->getAssertData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/stmobile/facebasejni/FaceAPI;->initLicense(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 54
    invoke-static {v1}, Lcom/stmobile/facebasejni/common/FaceConfig;->pointConfigFromInt(I)Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;

    move-result-object v2

    const/4 v3, 0x0

    .line 55
    invoke-static {v3}, Lcom/stmobile/facebasejni/common/FaceConfig;->resizeConfigFromInt(I)Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->resizeConfig:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    .line 56
    new-instance v4, Lcom/stmobile/facebasejni/FaceTracker;

    invoke-direct {v4}, Lcom/stmobile/facebasejni/FaceTracker;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mTracker:Lcom/stmobile/facebasejni/FaceTracker;

    .line 57
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->resizeConfig:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    sget-object v6, Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;->DEFAULT_CONFIG:Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;

    invoke-virtual {v4, v5, v2, v6, v3}, Lcom/stmobile/facebasejni/FaceTracker;->createHandle(Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;Lcom/stmobile/facebasejni/common/FaceConfig$TrackThreadCount;Z)Lcom/stmobile/facebasejni/common/StatusCode;

    move-result-object v2

    .line 58
    sget-object v4, Lcom/stmobile/facebasejni/common/StatusCode;->STM_OK:Lcom/stmobile/facebasejni/common/StatusCode;

    if-ne v2, v4, :cond_b5

    .line 59
    sget-object v2, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v4, "track createHandle ok."

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    const-string v5, "M_FaceAttribute_RGB_Smile_2_1.2.22.model"

    if-eqz v4, :cond_54

    .line 66
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_73

    :cond_52
    const/4 v4, 0x0

    goto :goto_73

    .line 71
    :cond_54
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->copyModelFile(Landroid/content/Context;)V

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    :goto_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attribute modelPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    new-instance v5, Lcom/stmobile/facebasejni/FaceAttribute;

    invoke-direct {v5}, Lcom/stmobile/facebasejni/FaceAttribute;-><init>()V

    iput-object v5, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mAttribute:Lcom/stmobile/facebasejni/FaceAttribute;

    .line 77
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->resizeConfig:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    invoke-virtual {v5, v4, v6}, Lcom/stmobile/facebasejni/FaceAttribute;->createHandle(Ljava/lang/String;Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;)Lcom/stmobile/facebasejni/common/StatusCode;

    move-result-object v4

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attributeStatusCode ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/stmobile/facebasejni/common/StatusCode;->getValue()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->start(Landroid/content/Context;)V

    if-ltz v0, :cond_b4

    return v1

    :cond_b4
    return v3

    .line 61
    :cond_b5
    sget-object p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "track createHandle statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/stmobile/facebasejni/common/StatusCode;->getDescription(Lcom/stmobile/facebasejni/common/StatusCode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3
.end method

.method public onPause()V
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mAttribute:Lcom/stmobile/facebasejni/FaceAttribute;

    if-eqz v0, :cond_7

    .line 213
    invoke-virtual {v0}, Lcom/stmobile/facebasejni/FaceAttribute;->destoryHandle()V

    .line 215
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mTracker:Lcom/stmobile/facebasejni/FaceTracker;

    if-eqz p0, :cond_e

    .line 216
    invoke-virtual {p0}, Lcom/stmobile/facebasejni/FaceTracker;->destoryHandle()V

    .line 218
    :cond_e
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->stop()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->start(Landroid/content/Context;)V

    return-void
.end method

.method public unInitSmile()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mAttribute:Lcom/stmobile/facebasejni/FaceAttribute;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {v0}, Lcom/stmobile/facebasejni/FaceAttribute;->destoryHandle()V

    .line 88
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;->mTracker:Lcom/stmobile/facebasejni/FaceTracker;

    if-eqz p0, :cond_e

    .line 89
    invoke-virtual {p0}, Lcom/stmobile/facebasejni/FaceTracker;->destoryHandle()V

    .line 91
    :cond_e
    invoke-static {}, Lcom/transsion/camera/feature/setting/smiledetection/AccelerometerManager;->stop()V

    return-void
.end method
