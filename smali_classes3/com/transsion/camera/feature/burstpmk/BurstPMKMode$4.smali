.class Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/common/I3AController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z
    .registers 2

    if-eqz p1, :cond_9

    .line 181
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public lock3A(Z)V
    .registers 3

    if-eqz p1, :cond_1e

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$2200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fputmAeAfLockState(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmAeAfLockState(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    const/4 p1, 0x1

    # invokes: Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$2300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Z)V

    return-void

    .line 192
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmAeAfLockState(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    const/4 p1, 0x0

    # invokes: Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$2400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Z)V

    :cond_30
    return-void
.end method
