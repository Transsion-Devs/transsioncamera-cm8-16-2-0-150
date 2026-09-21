.class public final Lcom/transsion/aicore/nexusflow/utils/Streamer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final flowId:Ljava/lang/String;

.field private final flowManager:Lcom/transsion/aicore/nexusflow/a;

.field private final outputStream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

.field private final pipe:[Landroid/os/ParcelFileDescriptor;

.field private final readPfd:Landroid/os/ParcelFileDescriptor;

.field private final streamExecutor:Ljava/util/concurrent/ExecutorService;

.field private final writePfd:Landroid/os/ParcelFileDescriptor;


# direct methods
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


# virtual methods
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
