.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/common/I3AController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z
    .registers 2

    if-eqz p1, :cond_9

    .line 192
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

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fputmAeAfLockState(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmAeAfLockState(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    const/4 p1, 0x1

    # invokes: Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;Z)V

    return-void

    .line 203
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmAeAfLockState(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    const/4 p1, 0x0

    # invokes: Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;Z)V

    :cond_30
    return-void
.end method
