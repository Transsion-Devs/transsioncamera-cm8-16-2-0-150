.class Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/tzservice/TZServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureAllDone()V
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/app/common/tzservice/TZEvent;)V
    .registers 3

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDied()V
    .registers 7

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmCaptureSurfaceList(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 389
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {v1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmCaptureSurfaceList(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 390
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceDied, surface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {v3}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_11

    :catchall_44
    move-exception p0

    goto :goto_51

    .line 393
    :cond_46
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmCaptureSurfaceList(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 394
    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_44

    throw p0
.end method
