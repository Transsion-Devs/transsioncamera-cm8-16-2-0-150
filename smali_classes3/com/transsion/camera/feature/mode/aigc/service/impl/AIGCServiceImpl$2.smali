.class Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;
.super Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->initLocked(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mResultReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

.field final synthetic val$callback:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;


# direct methods
.method public static synthetic $r8$lambda$Y0oVHQn1mNyEh1asxJVn5XGy39s(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 437
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;->onResult()V

    :cond_5
    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;)V
    .registers 3

    .line 412
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->val$callback:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl-IA;)V

    .line 414
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->mResultReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 5

    .line 418
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "initResult"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->mResultReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmLockGuard(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_31

    .line 422
    :try_start_1c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmInitialized(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 423
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "initResult bundle is null"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_5e

    :catchall_2f
    move-exception p0

    goto :goto_86

    .line 425
    :cond_31
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmInitialized(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 426
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initResult mInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmInitialized(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 428
    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_1c .. :try_end_5f} :catchall_2f

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmInitialized(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->val$callback:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;

    if-eqz p0, :cond_72

    .line 432
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;->onResult()V

    :cond_72
    return-void

    .line 435
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2;->val$callback:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$ICallback;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 428
    :goto_86
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_2f

    throw p0

    .line 442
    :cond_88
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "initResult error multiple callbacks!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
