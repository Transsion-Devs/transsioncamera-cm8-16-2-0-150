.class public Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final CAM_FILE_NAME:Ljava/lang/String; = "_camFile"

.field private static final GYRO_FILE_NAME:Ljava/lang/String; = "_gyroFile"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCamFile:Ljava/io/File;

.field private mCamFileWriter:Ljava/io/BufferedWriter;

.field private final mFrameIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGyroFile:Ljava/io/File;

.field private mGyroFileWriter:Ljava/io/BufferedWriter;

.field private final mVideoSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveFrameInfoTxtWriter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;Landroid/util/Size;)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mFrameIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    .line 39
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    .line 40
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mVideoSize:Landroid/util/Size;

    .line 41
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    .line 42
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance p3, Ljava/io/FileWriter;

    invoke-direct {p3, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    return-void
.end method

.method public static create(JLjava/io/File;Landroid/util/Size;)Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;
    .registers 9

    .line 47
    const-string v0, ".txt"

    const/4 v1, 0x0

    if-nez p3, :cond_6

    return-object v1

    .line 50
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return-object v1

    .line 55
    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_camFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_gyroFile"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    new-instance p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    invoke-direct {p0, v2, v3, p3}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;-><init>(Ljava/io/File;Ljava/io/File;Landroid/util/Size;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_56} :catch_57

    return-object p0

    :catch_57
    move-exception p0

    .line 59
    sget-object p1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "create: failed to create frame info writer"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 7

    .line 134
    const-string v0, " ,mGyroFile :"

    const-string v1, "close: frame info saved at mCamFile :"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    if-eqz v2, :cond_aa

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    if-nez v3, :cond_e

    goto/16 :goto_aa

    :cond_e
    const/4 v3, 0x0

    .line 139
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 140
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 141
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 142
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_4e
    .catchall {:try_start_f .. :try_end_21} :catchall_4c

    .line 146
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    .line 147
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    .line 148
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_4c
    move-exception v2

    goto :goto_7f

    :catch_4e
    move-exception v2

    .line 144
    :try_start_4f
    sget-object v4, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "close: failed to close writer"

    invoke-static {v4, v5, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    .line 146
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    .line 147
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 146
    :goto_7f
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    .line 147
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    .line 148
    sget-object v3, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    throw v2

    :cond_aa
    :goto_aa
    return-void
.end method

.method public flush()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    if-nez v1, :cond_9

    goto :goto_1a

    .line 111
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 114
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "flush: failed"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public getCamFilePath()Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGyroFilePath()Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 129
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logFrame(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 65
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    if-eqz v2, :cond_e0

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    if-nez v2, :cond_11

    goto/16 :goto_e0

    .line 69
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getGyroTimeStampValues()Ljava/util/List;

    move-result-object v9

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getExposureTime()J

    move-result-wide v2

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getRollingShutterTime()J

    move-result-wide v5

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getTimestamp()J

    move-result-wide v7

    .line 74
    iget-object v10, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mFrameIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    .line 75
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 77
    :try_start_48
    iget-object v12, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%s,%d,%d,%d,%d,%d,%d"

    .line 79
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v5, v4

    move-object v8, v4

    move-object v6, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v2

    move-object v2, v11

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 77
    invoke-static {v13, v14, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    if-eqz v9, :cond_d0

    .line 83
    :goto_73
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d0

    .line 84
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;

    .line 85
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d,%f,%f,%f,%f,%f,%f"

    .line 87
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 88
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGSensorX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 89
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGSensorY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 90
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGSensorZ()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    .line 91
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGyroX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    .line 92
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGyroY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 93
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGyroZ()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    .line 85
    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 98
    :cond_d0
    rem-int/lit8 v10, v10, 0xa

    if-nez v10, :cond_e0

    .line 99
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->flush()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_d7} :catch_d8

    return-void

    :catch_d8
    move-exception v0

    .line 102
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "logFrame: failed to write"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e0
    :goto_e0
    return-void
.end method
