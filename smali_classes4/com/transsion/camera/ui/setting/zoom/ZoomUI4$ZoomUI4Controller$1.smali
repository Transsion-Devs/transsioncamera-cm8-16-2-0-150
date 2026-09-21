.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->getControlRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;)V
    .registers 2

    .line 3136
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3139
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->-$$Nest$fgetisValueIncreasing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3140
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    # getter for: Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->access$100(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->-$$Nest$fgetdiffValue(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->access$002(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 3142
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    # getter for: Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->access$300(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->-$$Nest$fgetdiffValue(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->access$202(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    :goto_3d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    # getter for: Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->access$400(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->applyNewValue(Ljava/lang/Integer;)V

    .line 3145
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->shouldContinue()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 3146
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    # getter for: Lcom/transsion/camera/ui/setting/BaseRunnableController;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->access$500(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3148
    :cond_5c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller$1;->this$1:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    # invokes: Lcom/transsion/camera/ui/setting/BaseRunnableController;->stopControlLoop()V
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;->access$600(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;)V

    return-void
.end method
