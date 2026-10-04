.class public final Lcom/transsion/aicore/nexusflow/utils/Streamer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final flowId:Ljava/lang/String;

.field private final flowManager:Lcom/transsion/aicore/nexusflow/a;

.field private volatile isClosed:Z

.field private final outputStream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

.field private final pipe:[Landroid/os/ParcelFileDescriptor;

.field private final readPfd:Landroid/os/ParcelFileDescriptor;

.field private final streamExecutor:Ljava/util/concurrent/ExecutorService;

.field private final writePfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static synthetic $r8$lambda$9q4wSTOJhsqFvfHXY41EdKRE6No(Lcom/transsion/aicore/nexusflow/utils/Streamer;[B)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/aicore/nexusflow/utils/Streamer;->write$lambda$0(Lcom/transsion/aicore/nexusflow/utils/Streamer;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$rSgLi5OWj6DITTEFoTCFOtxEATg(Lcom/transsion/aicore/nexusflow/utils/Streamer;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/utils/Streamer;->close$lambda$1(Lcom/transsion/aicore/nexusflow/utils/Streamer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;)V
    .registers 4

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->flowId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->flowManager:Lcom/transsion/aicore/nexusflow/a;

    .line 5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->pipe:[Landroid/os/ParcelFileDescriptor;

    const/4 p2, 0x1

    .line 6
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->writePfd:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    .line 7
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->readPfd:Landroid/os/ParcelFileDescriptor;

    .line 8
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->outputStream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->streamExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static final close$lambda$1(Lcom/transsion/aicore/nexusflow/utils/Streamer;)V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->outputStream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_12
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 4
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->streamExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_b
    move-exception v0

    .line 5
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->streamExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    .line 6
    :catch_12
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->streamExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private static final write$lambda$0(Lcom/transsion/aicore/nexusflow/utils/Streamer;[B)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->outputStream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->outputStream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->flowId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException during write for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", closing."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Streamer"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/utils/Streamer;->close()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->isClosed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->isClosed:Z

    .line 3
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->flowId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing stream for flowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Streamer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->streamExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/aicore/nexusflow/utils/Streamer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/aicore/nexusflow/utils/Streamer$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/aicore/nexusflow/utils/Streamer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final transportPipeToServer$ipc_business_v2Release()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->flowId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transporting PFD to server for flowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Streamer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->flowManager:Lcom/transsion/aicore/nexusflow/a;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->flowId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->readPfd:Landroid/os/ParcelFileDescriptor;

    const-string v2, "readPfd"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->isClosed:Z

    if-eqz v0, :cond_a

    return-void

    .line 2
    :cond_a
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;->streamExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/aicore/nexusflow/utils/Streamer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/aicore/nexusflow/utils/Streamer$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/aicore/nexusflow/utils/Streamer;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
