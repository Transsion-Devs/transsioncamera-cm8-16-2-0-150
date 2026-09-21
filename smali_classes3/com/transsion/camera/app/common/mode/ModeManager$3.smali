.class Lcom/transsion/camera/app/common/mode/ModeManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IAeAfLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 2

    .line 730
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-nez v0, :cond_b

    .line 750
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 752
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0
.end method

.method public performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V
    .registers 4

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 744
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    return-void
.end method

.method public supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 2

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-nez v0, :cond_b

    .line 734
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 736
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0
.end method
