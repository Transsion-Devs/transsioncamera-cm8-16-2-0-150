.class abstract Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseState"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Ljava/lang/String;)V
    .registers 3

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public capturing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method final entry()V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmStateSwitchLock(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 176
    :try_start_7
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->mName:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object v1

    if-eq v1, p0, :cond_5f

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 180
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->onLeave()V

    .line 182
    :cond_57
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fputmCurrentState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;)V

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->onEntry()V

    .line 185
    :cond_5f
    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_26

    throw p0
.end method

.method protected onEntry()V
    .registers 1

    return-void
.end method

.method protected onLeave()V
    .registers 1

    return-void
.end method

.method public onShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;[B[B[B)V
    .registers 5

    .line 0
    return-void
.end method

.method public onShot([B)V
    .registers 2

    .line 0
    return-void
.end method

.method public shutterClick()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
