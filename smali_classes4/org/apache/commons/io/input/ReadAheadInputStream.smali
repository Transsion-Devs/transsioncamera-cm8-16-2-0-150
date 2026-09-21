.class public Lorg/apache/commons/io/input/ReadAheadInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final oneByte:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private activeBuffer:Ljava/nio/ByteBuffer;

.field private final asyncReadComplete:Ljava/util/concurrent/locks/Condition;

.field private endOfStream:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isClosed:Z

.field private isReading:Z

.field private isUnderlyingInputStreamBeingClosed:Z

.field private final isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private readAborted:Z

.field private readAheadBuffer:Ljava/nio/ByteBuffer;

.field private readException:Ljava/lang/Throwable;

.field private readInProgress:Z

.field private final shutdownExecutorService:Z

.field private final stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final underlyingInputStream:Ljava/io/InputStream;


# direct methods
.method public static synthetic $r8$lambda$EagunuiLVtf-WSNj5mJA4M2d4_g(Lorg/apache/commons/io/input/ReadAheadInputStream;[B)V
    .registers 8

    .line 303
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 303
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 305
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 306
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 313
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_12
    move-exception p1

    goto/16 :goto_c0

    :cond_15
    const/4 v0, 0x1

    .line 311
    :try_start_16
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isReading:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_12

    .line 313
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    array-length v2, p1

    move v3, v1

    move v4, v3

    .line 332
    :cond_20
    :try_start_20
    iget-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->underlyingInputStream:Ljava/io/InputStream;

    invoke-virtual {v5, p1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_29

    goto :goto_38

    :cond_29
    add-int/2addr v3, v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_38

    .line 338
    iget-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_36

    if-eqz v5, :cond_20

    goto :goto_38

    :catchall_36
    move-exception p1

    goto :goto_5c

    .line 347
    :cond_38
    :goto_38
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 349
    :try_start_3d
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-ltz v4, :cond_45

    goto :goto_47

    .line 351
    :cond_45
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    .line 356
    :goto_47
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    .line 357
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->signalAsyncReadComplete()V
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_55

    .line 359
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 361
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->closeUnderlyingInputStreamIfNecessary()V

    return-void

    :catchall_55
    move-exception p1

    .line 359
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    throw p1

    .line 341
    :goto_5c
    :try_start_5c
    instance-of v2, p1, Ljava/lang/Error;
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_92

    if-nez v2, :cond_8e

    .line 347
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 349
    :try_start_65
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-ltz v4, :cond_78

    .line 350
    instance-of v2, p1, Ljava/io/EOFException;

    if-eqz v2, :cond_71

    goto :goto_78

    .line 353
    :cond_71
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    .line 354
    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    goto :goto_7a

    :catchall_76
    move-exception p1

    goto :goto_88

    .line 351
    :cond_78
    :goto_78
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    .line 356
    :goto_7a
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    .line 357
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->signalAsyncReadComplete()V
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_76

    .line 359
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 361
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->closeUnderlyingInputStreamIfNecessary()V

    return-void

    .line 359
    :goto_88
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    throw p1

    .line 344
    :cond_8e
    :try_start_8e
    move-object v2, p1

    check-cast v2, Ljava/lang/Error;

    throw v2
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v2

    .line 347
    iget-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 349
    :try_start_98
    iget-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-ltz v4, :cond_aa

    .line 350
    instance-of v3, p1, Ljava/io/EOFException;

    if-nez v3, :cond_aa

    .line 353
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    .line 354
    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    goto :goto_ac

    :catchall_a8
    move-exception p1

    goto :goto_ba

    .line 351
    :cond_aa
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    .line 356
    :goto_ac
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    .line 357
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->signalAsyncReadComplete()V
    :try_end_b1
    .catchall {:try_start_98 .. :try_end_b1} :catchall_a8

    .line 359
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 361
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->closeUnderlyingInputStreamIfNecessary()V

    .line 362
    throw v2

    .line 359
    :goto_ba
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    throw p1

    .line 313
    :goto_c0
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    throw p1
.end method

.method public static synthetic $r8$lambda$R4v1j2uQDpOUUxjGAI66sT4gXFU(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    .line 0
    invoke-static {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dRKCR0FIr6ksDvZjC7hp1sOgPMQ()[B
    .registers 1

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [B

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/ReadAheadInputStream;->oneByte:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    .line 122
    invoke-static {}, Lorg/apache/commons/io/input/ReadAheadInputStream;->newExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;)V
    .registers 5

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V
    .registers 8

    .line 146
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 105
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->asyncReadComplete:Ljava/util/concurrent/locks/Condition;

    if-lez p2, :cond_43

    .line 151
    const-string v0, "executorService"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 152
    const-string p3, "inputStream"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->underlyingInputStream:Ljava/io/InputStream;

    .line 153
    iput-boolean p4, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->shutdownExecutorService:Z

    .line 154
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 155
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    .line 156
    iget-object p1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 157
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    .line 148
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bufferSizeInBytes should be greater than 0, but the value is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkReadException()V
    .registers 3

    .line 172
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    if-eqz v0, :cond_15

    .line 173
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_d

    .line 174
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 176
    :cond_d
    new-instance v0, Ljava/io/IOException;

    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_15
    return-void
.end method

.method private closeUnderlyingInputStreamIfNecessary()V
    .registers 3

    .line 217
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 219
    :try_start_6
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isReading:Z

    .line 220
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isUnderlyingInputStreamBeingClosed:Z
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    if-nez v1, :cond_14

    const/4 v0, 0x1

    goto :goto_14

    :catchall_12
    move-exception v0

    goto :goto_21

    .line 225
    :cond_14
    :goto_14
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_20

    .line 229
    :try_start_1b
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->underlyingInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    return-void

    .line 225
    :goto_21
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 226
    throw v0
.end method

.method private isEndOfStream()Z
    .registers 2

    .line 237
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private static newExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 54
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "commons-io-read-ahead"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private readAsync()V
    .registers 4

    .line 288
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 291
    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 292
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    if-eqz v1, :cond_14

    goto :goto_37

    .line 295
    :cond_14
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->checkReadException()V

    .line 296
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v1, 0x1

    .line 298
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_35

    .line 300
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 302
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/ReadAheadInputStream;[B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_35
    move-exception v0

    goto :goto_3d

    .line 300
    :cond_37
    :goto_37
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3d
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 301
    throw v0
.end method

.method private signalAsyncReadComplete()V
    .registers 2

    .line 367
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 369
    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->asyncReadComplete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 371
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 372
    throw v0
.end method

.method private skipInternal(J)J
    .registers 7

    .line 404
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->waitForAsyncReadComplete()V

    .line 405
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 p0, 0x0

    return-wide p0

    .line 408
    :cond_c
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_39

    long-to-int v0, p1

    .line 412
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    sub-int/2addr v0, v2

    .line 414
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 415
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 416
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 417
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->swapBuffers()V

    .line 419
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V

    return-wide p1

    .line 422
    :cond_39
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->available()I

    move-result v0

    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 424
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 425
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 426
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 427
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 428
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->underlyingInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 429
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V

    add-long/2addr v2, p1

    return-wide v2
.end method

.method private swapBuffers()V
    .registers 3

    .line 437
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 438
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 439
    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private waitForAsyncReadComplete()V
    .registers 5

    .line 443
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 445
    :try_start_6
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 448
    :goto_c
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    if-eqz v1, :cond_1a

    .line 449
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->asyncReadComplete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_15} :catch_18
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    goto :goto_c

    :catchall_16
    move-exception v1

    goto :goto_35

    :catch_18
    move-exception v1

    goto :goto_28

    .line 456
    :cond_1a
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 457
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 459
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->checkReadException()V

    return-void

    .line 452
    :goto_28
    :try_start_28
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 454
    throw v2
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_16

    .line 456
    :goto_35
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 457
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 458
    throw v1
.end method


# virtual methods
.method public available()I
    .registers 5

    .line 162
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 165
    :try_start_5
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_22

    long-to-int v0, v0

    .line 167
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_22
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 168
    throw v0
.end method

.method public close()V
    .registers 6

    .line 183
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 185
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_19

    if-eqz v0, :cond_f

    .line 196
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 188
    :try_start_10
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z

    .line 189
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isReading:Z

    if-nez v1, :cond_1b

    .line 193
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isUnderlyingInputStreamBeingClosed:Z
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_19

    goto :goto_1c

    :catchall_19
    move-exception v0

    goto :goto_57

    :cond_1b
    const/4 v0, 0x0

    .line 196
    :goto_1c
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->shutdownExecutorService:Z

    if-eqz v1, :cond_56

    .line 201
    :try_start_25
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 202
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_36} :catch_40
    .catchall {:try_start_25 .. :try_end_36} :catchall_3e

    if-eqz v0, :cond_56

    .line 209
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->underlyingInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_3e
    move-exception v1

    goto :goto_4e

    :catch_40
    move-exception v1

    .line 204
    :try_start_41
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 206
    throw v2
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_3e

    :goto_4e
    if-eqz v0, :cond_55

    .line 209
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->underlyingInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_55
    throw v1

    :cond_56
    return-void

    .line 196
    :goto_57
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    throw v0
.end method

.method public read()I
    .registers 4

    .line 242
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 244
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    :goto_e
    and-int/lit16 p0, p0, 0xff

    return p0

    .line 246
    :cond_11
    sget-object v0, Lorg/apache/commons/io/input/ReadAheadInputStream;->oneByte:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/io/input/ReadAheadInputStream;->read([BII)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_23

    return v1

    :cond_23
    aget-byte p0, v0, v2

    goto :goto_e
.end method

.method public read([BII)I
    .registers 5

    if-ltz p2, :cond_5b

    if-ltz p3, :cond_5b

    .line 252
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_5b

    if-nez p3, :cond_c

    const/4 p0, 0x0

    return p0

    .line 259
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 261
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 263
    :try_start_19
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->waitForAsyncReadComplete()V

    .line 264
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_39

    .line 266
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V

    .line 267
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->waitForAsyncReadComplete()V

    .line 268
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->isEndOfStream()Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_37

    if-eqz v0, :cond_39

    .line 277
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p0, -0x1

    return p0

    :catchall_37
    move-exception p1

    goto :goto_45

    .line 273
    :cond_39
    :try_start_39
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->swapBuffers()V

    .line 275
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_37

    .line 277
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4b

    :goto_45
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    throw p1

    .line 280
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 281
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    .line 253
    :cond_5b
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public skip(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    .line 380
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1e

    .line 382
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    long-to-int v0, p1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1

    .line 385
    :cond_1e
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 388
    :try_start_23
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/ReadAheadInputStream;->skipInternal(J)J

    move-result-wide p1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_2d

    .line 390
    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide p1

    :catchall_2d
    move-exception p1

    iget-object p0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 391
    throw p1
.end method
