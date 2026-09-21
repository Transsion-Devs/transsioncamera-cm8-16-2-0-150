.class Lcom/transsion/camera/feature/common/BaseCapture$IdleState;
.super Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field private mStreamCreated:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .registers 4

    .line 464
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    .line 465
    const-string v0, "IdleState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture-IA;)V

    return-void
.end method


# virtual methods
.method protected createStream()V
    .registers 2

    .line 470
    monitor-enter p0

    const/4 v0, 0x1

    .line 471
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->mStreamCreated:Z

    .line 472
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method protected destroyStream()V
    .registers 2

    .line 488
    monitor-enter p0

    const/4 v0, 0x0

    .line 489
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->mStreamCreated:Z

    .line 490
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method protected onEntry()V
    .registers 3

    .line 495
    monitor-enter p0

    const/4 v0, 0x0

    .line 498
    :try_start_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->mStreamCreated:Z

    .line 499
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_16

    .line 501
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmPendingCreate(Lcom/transsion/camera/feature/common/BaseCapture;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 502
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fputmPendingCreate(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    .line 503
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->createStream()V

    :cond_15
    return-void

    :catchall_16
    move-exception v0

    .line 499
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected onStreamAvailable()V
    .registers 3

    .line 477
    monitor-enter p0

    .line 478
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->mStreamCreated:Z

    if-nez v0, :cond_12

    .line 479
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "stream has already destroyed!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 480
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    goto :goto_1d

    .line 482
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCaptureEnableState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    .line 483
    monitor-exit p0

    return-void

    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_10

    throw v0
.end method
