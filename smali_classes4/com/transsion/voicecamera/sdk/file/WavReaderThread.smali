.class public Lcom/transsion/voicecamera/sdk/file/WavReaderThread;
.super Lcom/transsion/voicecamera/sdk/file/ReaderThread;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCSDK-WavReader"


# instance fields
.field private volatile isReading:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 22
    const-string v0, "VCSDK-WavReaderThread"

    invoke-direct {p0, v0}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public byteToFloat([B)[F
    .registers 5

    .line 37
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 39
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    .line 43
    :goto_f
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lez v1, :cond_23

    .line 44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    int-to-float v1, v1

    const v2, 0x46fffe00    # 32767.0f

    div-float/2addr v1, v2

    .line 46
    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    return-object p1
.end method

.method public deInit()V
    .registers 2

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->isReading:Z

    return-void
.end method

.method public init()V
    .registers 3

    .line 27
    const-string v0, "VCSDK-WavReader"

    const-string v1, "thread start"

    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->isReading:Z

    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 56
    :try_start_2
    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v2, :cond_16

    .line 57
    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onFileLoaded(Ljava/lang/String;)V

    goto :goto_16

    :catchall_10
    move-exception p0

    goto/16 :goto_b1

    :catch_13
    move-exception v2

    goto/16 :goto_a1

    .line 59
    :cond_16
    :goto_16
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_13
    .catchall {:try_start_2 .. :try_end_1d} :catchall_10

    const/16 v1, 0x8c0

    .line 60
    :try_start_1f
    new-array v1, v1, [B

    .line 64
    monitor-enter p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_7a
    .catchall {:try_start_1f .. :try_end_22} :catchall_77

    const-wide/16 v3, 0xc8

    .line 65
    :try_start_24
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 66
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_9e

    .line 67
    :try_start_28
    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 68
    const-string v5, "VCSDK-WavReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x2c

    .line 69
    invoke-virtual {v2, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    const-wide/16 v3, 0x0

    .line 70
    :cond_4b
    :goto_4b
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v0, :cond_8a

    iget-boolean v5, p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->isReading:Z

    if-eqz v5, :cond_8a

    .line 72
    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v5, :cond_4b

    .line 73
    invoke-virtual {p0, v1}, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->byteToFloat([B)[F

    move-result-object v5

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/16 v8, 0x14

    cmp-long v6, v6, v8

    if-gez v6, :cond_7f

    .line 75
    monitor-enter p0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_69} :catch_7a
    .catchall {:try_start_28 .. :try_end_69} :catchall_77

    .line 76
    :try_start_69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    sub-long/2addr v8, v6

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 77
    monitor-exit p0

    goto :goto_7f

    :catchall_74
    move-exception v1

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_69 .. :try_end_76} :catchall_74

    :try_start_76
    throw v1

    :catchall_77
    move-exception p0

    move-object v1, v2

    goto :goto_b1

    :catch_7a
    move-exception v1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_a1

    .line 79
    :cond_7f
    :goto_7f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 80
    iget-object v6, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    array-length v7, v5

    invoke-interface {v6, v5, v7}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadData([FI)V

    goto :goto_4b

    .line 83
    :cond_8a
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->isReading:Z

    if-eqz v1, :cond_95

    .line 84
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v1, :cond_95

    .line 85
    invoke-interface {v1}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadEnd()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_95} :catch_7a
    .catchall {:try_start_76 .. :try_end_95} :catchall_77

    .line 96
    :cond_95
    :try_start_95
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    return-void

    :catch_99
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b0

    :catchall_9e
    move-exception v1

    .line 66
    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw v1
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a1} :catch_7a
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_77

    .line 89
    :goto_a1
    :try_start_a1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz p0, :cond_ab

    .line 91
    invoke-interface {p0, v0}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadError(I)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_10

    :cond_ab
    if-eqz v1, :cond_b0

    .line 96
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_99

    :cond_b0
    :goto_b0
    return-void

    :goto_b1
    if-eqz v1, :cond_bb

    :try_start_b3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_bb

    :catch_b7
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    :cond_bb
    :goto_bb
    throw p0
.end method
