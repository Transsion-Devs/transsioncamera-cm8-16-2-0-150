.class abstract Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractState"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;)V
    .registers 3

    .line 389
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p2, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected captureFail()V
    .registers 4

    .line 441
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureFail at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected captureSuccess()V
    .registers 4

    .line 449
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureSuccess at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected createStream()V
    .registers 4

    .line 416
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStream at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected destroyStream()V
    .registers 1

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmIdleState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method final entry()V
    .registers 5

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmStateSwitchLock(Lcom/transsion/camera/feature/common/BaseCapture;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 395
    :try_start_7
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    goto :goto_2a

    :catchall_26
    move-exception p0

    goto :goto_61

    :cond_28
    const-string v3, ""

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v1

    if-eq v1, p0, :cond_5f

    .line 398
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 399
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->onLeave()V

    .line 401
    :cond_57
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1, p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fputmCurrentState(Lcom/transsion/camera/feature/common/BaseCapture;Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;)V

    .line 402
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->onEntry()V

    .line 404
    :cond_5f
    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_26

    throw p0
.end method

.method protected onAeLocked()V
    .registers 1

    return-void
.end method

.method protected onEntry()V
    .registers 1

    return-void
.end method

.method protected onLeave()V
    .registers 1

    return-void
.end method

.method protected onStreamAvailable()V
    .registers 4

    .line 420
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamAvailable at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected shouldEmitData()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected shutterClick()V
    .registers 4

    .line 424
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutterClick at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected startSaving()V
    .registers 4

    .line 445
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSaving at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected stopCapture()Z
    .registers 4

    .line 436
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
