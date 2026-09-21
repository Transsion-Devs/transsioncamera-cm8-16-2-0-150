.class Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/threads/HandlerThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecycleHandlerThread"
.end annotation


# instance fields
.field private final mQuitRunnable:Ljava/lang/Runnable;

.field private final mQuitting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 150
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance p1, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;)V

    iput-object p1, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->mQuitRunnable:Ljava/lang/Runnable;

    .line 147
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->mQuitting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getQuitRunnable()Ljava/lang/Runnable;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->mQuitRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public isQuitting()Z
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->mQuitting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public quit()Z
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->mQuitting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result p0

    return p0
.end method

.method public quitSafely()Z
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->mQuitting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    invoke-super {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result p0

    return p0
.end method
