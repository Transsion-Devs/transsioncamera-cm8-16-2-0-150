.class Lcom/transsion/camera/ui/setting/BaseRunnableController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/BaseRunnableController;->getControlRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/BaseRunnableController;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController$1;->this$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController$1;->this$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->getNewValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController$1;->this$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->applyNewValue(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController$1;->this$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->shouldContinue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController$1;->this$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 54
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController$1;->this$0:Lcom/transsion/camera/ui/setting/BaseRunnableController;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->stopControlLoop()V

    return-void
.end method
