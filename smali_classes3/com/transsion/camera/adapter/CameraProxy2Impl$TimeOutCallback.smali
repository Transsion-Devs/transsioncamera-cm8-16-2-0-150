.class abstract Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TimeOutCallback"
.end annotation


# instance fields
.field private final mCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 4

    .line 2309
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2307
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->mCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2310
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRequestHandler(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;J)V
    .registers 6

    .line 2313
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2307
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->mCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2314
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRequestHandler(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;JLcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;J)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    return-void
.end method


# virtual methods
.method protected final removeTimeOutCallback()V
    .registers 2

    .line 2318
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRequestHandler(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 2

    .line 2323
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->shouldTriggerCallBack()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2324
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->triggerTimeOutCallBack()V

    :cond_9
    return-void
.end method

.method protected final shouldTriggerCallBack()Z
    .registers 3

    .line 2329
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->mCallbackTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method protected abstract triggerTimeOutCallBack()V
.end method
