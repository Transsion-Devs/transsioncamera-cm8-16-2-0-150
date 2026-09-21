.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 133
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 10

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 258
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    .line 259
    iput-wide p4, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    .line 260
    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    .line 262
    invoke-static {p8}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 265
    iput-object p3, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 266
    invoke-interface {p3, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 267
    iput-boolean p7, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 268
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .registers 5

    const-wide/16 v0, 0x3e8

    .line 181
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 191
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .registers 13

    const/16 v6, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 202
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v7, p6

    .line 228
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .registers 15

    const/16 v7, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 215
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 17

    .line 242
    sget-object v2, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public static create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 17

    .line 318
    new-instance v0, Lorg/apache/commons/io/input/Tailer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 319
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 320
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 321
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .registers 5

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    .line 375
    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .registers 5

    const/4 v0, 0x0

    .line 363
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .registers 11

    const/16 v5, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 336
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v6, p5

    .line 283
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .registers 13

    const/16 v6, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 351
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 15

    .line 300
    sget-object v1, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .registers 15

    .line 516
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 517
    :try_start_7
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const/4 v3, 0x0

    move-wide v4, v1

    move v6, v3

    .line 521
    :goto_e
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v7

    if-eqz v7, :cond_74

    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {p1, v7}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_74

    move v8, v3

    :goto_1e
    if-ge v8, v7, :cond_6f

    .line 523
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v9, v9, v8

    const/16 v10, 0xa

    const-wide/16 v11, 0x1

    if-eq v9, v10, :cond_55

    const/16 v10, 0xd

    if-eq v9, v10, :cond_4e

    if-eqz v6, :cond_4a

    .line 540
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    int-to-long v1, v8

    add-long/2addr v1, v4

    add-long/2addr v1, v11

    move v6, v3

    goto :goto_4a

    :catchall_48
    move-exception p0

    goto :goto_86

    .line 544
    :cond_4a
    :goto_4a
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6c

    :cond_4e
    if-eqz v6, :cond_53

    .line 533
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_53
    const/4 v6, 0x1

    goto :goto_6c

    .line 527
    :cond_55
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    int-to-long v1, v8

    add-long/2addr v1, v4

    add-long/2addr v1, v11

    move v6, v3

    :goto_6c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 547
    :cond_6f
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    goto :goto_e

    .line 550
    :cond_74
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 552
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    instance-of p1, p0, Lorg/apache/commons/io/input/TailerListenerAdapter;

    if-eqz p1, :cond_82

    .line 553
    check-cast p0, Lorg/apache/commons/io/input/TailerListenerAdapter;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/TailerListenerAdapter;->endOfFileReached()V
    :try_end_82
    .catchall {:try_start_7 .. :try_end_82} :catchall_48

    .line 557
    :cond_82
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-wide v1

    .line 516
    :goto_86
    :try_start_86
    throw p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception p1

    .line 557
    :try_start_88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_90
    throw p1
.end method


# virtual methods
.method public getDelay()J
    .registers 3

    .line 403
    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    .line 384
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object p0
.end method

.method protected getRun()Z
    .registers 1

    .line 394
    iget-boolean p0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    return p0
.end method

.method public run()V
    .registers 14

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    .line 416
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v7
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_9} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_1b
    .catchall {:try_start_5 .. :try_end_9} :catchall_18

    const-string v8, "r"

    if-eqz v7, :cond_45

    if-nez v0, :cond_45

    .line 418
    :try_start_f
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-direct {v7, v9, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_16} :catch_21
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_1b
    .catchall {:try_start_f .. :try_end_16} :catchall_18

    move-object v0, v7

    goto :goto_26

    :catchall_18
    move-exception v1

    goto/16 :goto_110

    :catch_1b
    move-exception v1

    goto/16 :goto_f8

    :catch_1e
    move-exception v1

    goto/16 :goto_100

    .line 420
    :catch_21
    :try_start_21
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    :goto_26
    if-nez v0, :cond_2e

    .line 423
    iget-wide v7, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_5

    .line 426
    :cond_2e
    iget-boolean v3, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_3b

    :cond_3a
    move-wide v5, v1

    .line 427
    :goto_3b
    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->lastModified(Ljava/io/File;)J

    move-result-wide v3

    .line 428
    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_5

    .line 431
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v7

    if-eqz v7, :cond_e8

    .line 432
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v7, v3, v4}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v7

    .line 434
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-gez v9, :cond_a5

    .line 437
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_60} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_60} :catch_1b
    .catchall {:try_start_21 .. :try_end_60} :catchall_18

    .line 441
    :try_start_60
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-direct {v7, v9, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_8b

    .line 445
    :try_start_67
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6d
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_73

    :catchall_6b
    move-exception v9

    goto :goto_8d

    :catch_6d
    move-exception v9

    .line 447
    :try_start_6e
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v10, v9}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_6b

    :goto_73
    if-eqz v0, :cond_88

    .line 450
    :try_start_75
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_78} :catch_85
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_78} :catch_81
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_7d
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_88

    :catchall_79
    move-exception v1

    move-object v0, v7

    goto/16 :goto_110

    :catch_7d
    move-exception v1

    move-object v0, v7

    goto/16 :goto_f8

    :catch_81
    move-exception v1

    move-object v0, v7

    goto/16 :goto_100

    :catch_85
    move-wide v5, v1

    :catch_86
    move-object v0, v7

    goto :goto_9a

    :cond_88
    :goto_88
    move-wide v5, v1

    :goto_89
    move-object v0, v7

    goto :goto_45

    :catchall_8b
    move-exception v9

    move-object v7, v0

    .line 440
    :goto_8d
    :try_start_8d
    throw v9
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v10

    if-eqz v0, :cond_99

    .line 450
    :try_start_91
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v0

    :try_start_96
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    throw v10
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_9a} :catch_86
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_9a} :catch_81
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9a} :catch_7d
    .catchall {:try_start_96 .. :try_end_9a} :catchall_79

    .line 452
    :goto_9a
    :try_start_9a
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    .line 453
    iget-wide v9, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_45

    :cond_a5
    if-lez v9, :cond_b5

    .line 461
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v3

    .line 462
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v5}, Lorg/apache/commons/io/FileUtils;->lastModified(Ljava/io/File;)J

    move-result-wide v5

    :goto_b1
    move-wide v11, v5

    move-wide v5, v3

    move-wide v3, v11

    goto :goto_c5

    :cond_b5
    if-eqz v7, :cond_c5

    .line 469
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 472
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v3

    .line 473
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v5}, Lorg/apache/commons/io/FileUtils;->lastModified(Ljava/io/File;)J

    move-result-wide v5

    goto :goto_b1

    .line 475
    :cond_c5
    :goto_c5
    iget-boolean v7, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v7, :cond_ce

    if-eqz v0, :cond_ce

    .line 476
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 478
    :cond_ce
    iget-wide v9, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 479
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v7

    if-eqz v7, :cond_45

    iget-boolean v7, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v7, :cond_45

    .line 480
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-direct {v7, v9, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_e4} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_e4} :catch_1b
    .catchall {:try_start_9a .. :try_end_e4} :catchall_18

    .line 481
    :try_start_e4
    invoke-virtual {v7, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_e7
    .catch Ljava/lang/InterruptedException; {:try_start_e4 .. :try_end_e7} :catch_81
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_7d
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_79

    goto :goto_89

    :cond_e8
    if-eqz v0, :cond_f4

    .line 492
    :goto_ea
    :try_start_ea
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee

    goto :goto_f4

    :catch_ee
    move-exception v0

    .line 495
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 497
    :cond_f4
    :goto_f4
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->stop()V

    goto :goto_10f

    .line 488
    :goto_f8
    :try_start_f8
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    if-eqz v0, :cond_f4

    goto :goto_ea

    .line 485
    :goto_100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 486
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_10c
    .catchall {:try_start_f8 .. :try_end_10c} :catchall_18

    if-eqz v0, :cond_f4

    goto :goto_ea

    :goto_10f
    return-void

    :goto_110
    if-eqz v0, :cond_11c

    .line 492
    :try_start_112
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116

    goto :goto_11c

    :catch_116
    move-exception v0

    .line 495
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 497
    :cond_11c
    :goto_11c
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->stop()V

    .line 498
    throw v1
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    return-void
.end method
