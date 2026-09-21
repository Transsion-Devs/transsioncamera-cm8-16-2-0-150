.class public abstract Lcom/transsion/camera/ui/setting/BaseRunnableController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;


# instance fields
.field protected expectedValue:I

.field protected volatile isRunning:Z

.field protected final mUIHandler:Landroid/os/Handler;

.field protected originalValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$h2a5fkMcvd3KYlTFrlu8fr50zwA(Lcom/transsion/camera/ui/setting/BaseRunnableController;Landroid/os/Handler;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->lambda$stopControlLoop$1(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uXw9yOMp3tghx2sB_Ft6LaaQK24(Lcom/transsion/camera/ui/setting/BaseRunnableController;Landroid/os/Handler;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->lambda$startControlLoop$0(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->isRunning:Z

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$startControlLoop$0(Landroid/os/Handler;)V
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->getControlRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$stopControlLoop$1(Landroid/os/Handler;)V
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->getControlRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected abstract applyNewValue(Ljava/lang/Object;)V
.end method

.method protected abstract calculateStepParameters(I)V
.end method

.method protected getControlRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/ui/setting/BaseRunnableController$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/BaseRunnableController$1;-><init>(Lcom/transsion/camera/ui/setting/BaseRunnableController;)V

    return-object v0
.end method

.method protected abstract getCurrentValue()Ljava/lang/Object;
.end method

.method protected getNewValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public onValueChanged(II)V
    .registers 4

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    .line 40
    iput p1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    .line 41
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->calculateStepParameters(I)V

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->startControlLoop()V

    return-void
.end method

.method protected abstract shouldContinue()Z
.end method

.method protected startControlLoop()V
    .registers 3

    .line 26
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->isRunning:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->isRunning:Z

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/BaseRunnableController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/BaseRunnableController$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/BaseRunnableController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_15
    return-void
.end method

.method protected stopControlLoop()V
    .registers 3

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->isRunning:Z

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/BaseRunnableController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/BaseRunnableController$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/BaseRunnableController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
