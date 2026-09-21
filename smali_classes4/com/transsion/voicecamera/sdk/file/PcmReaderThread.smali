.class public Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;
.super Lcom/transsion/voicecamera/sdk/file/ReaderThread;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCSDK-PcmReader"


# instance fields
.field private volatile isReading:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 25
    const-string v0, "VCSDK-PcmReaderThread"

    invoke-direct {p0, v0}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    return-void
.end method

.method public static byteArrayToFloatArray([B)[F
    .registers 2

    .line 40
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [F

    .line 43
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 2

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->isReading:Z

    return-void
.end method

.method public init()V
    .registers 3

    .line 30
    const-string v0, "VCSDK-PcmReader"

    const-string v1, "thread start"

    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->isReading:Z

    .line 32
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .registers 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 51
    :try_start_2
    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v2, :cond_15

    .line 52
    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onFileLoaded(Ljava/lang/String;)V

    goto :goto_15

    :catchall_10
    move-exception p0

    goto/16 :goto_86

    :catch_13
    move-exception v2

    goto :goto_76

    .line 54
    :cond_15
    :goto_15
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_13
    .catchall {:try_start_2 .. :try_end_1c} :catchall_10

    const/16 v1, 0x1180

    .line 55
    :try_start_1e
    new-array v1, v1, [B

    const-wide/16 v3, 0xc8

    .line 59
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    const-wide/16 v3, 0x0

    .line 60
    :cond_27
    :goto_27
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v0, :cond_62

    iget-boolean v6, p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->isReading:Z

    if-eqz v6, :cond_62

    .line 62
    iget-object v6, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v6, :cond_27

    .line 63
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->byteArrayToFloatArray([B)[F

    move-result-object v6

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide/16 v9, 0x14

    cmp-long v7, v7, v9

    if-gez v7, :cond_56

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_56

    :catchall_4e
    move-exception p0

    move-object v1, v2

    goto :goto_86

    :catch_51
    move-exception v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_76

    .line 67
    :cond_56
    :goto_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 68
    iget-object v7, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    div-int/lit8 v5, v5, 0x4

    invoke-interface {v7, v6, v5}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadData([FI)V

    goto :goto_27

    .line 71
    :cond_62
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->isReading:Z

    if-eqz v1, :cond_6d

    .line 72
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v1, :cond_6d

    .line 73
    invoke-interface {v1}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadEnd()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6d} :catch_51
    .catchall {:try_start_1e .. :try_end_6d} :catchall_4e

    .line 84
    :cond_6d
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    return-void

    :catch_71
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_85

    .line 77
    :goto_76
    :try_start_76
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz p0, :cond_80

    .line 79
    invoke-interface {p0, v0}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadError(I)V
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_10

    :cond_80
    if-eqz v1, :cond_85

    .line 84
    :try_start_82
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_71

    :cond_85
    :goto_85
    return-void

    :goto_86
    if-eqz v1, :cond_90

    :try_start_88
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    :cond_90
    :goto_90
    throw p0
.end method
