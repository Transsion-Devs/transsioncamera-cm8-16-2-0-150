.class Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setBGServiceCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventCompleted(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V
    .registers 3

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDied()V
    .registers 7

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->-$$Nest$fgetmBgCaptureSurfaceList(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->-$$Nest$fgetmBgCaptureSurfaceList(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Ljava/util/List;

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

    .line 94
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceDied, surface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {v3}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_11

    :catchall_44
    move-exception p0

    goto :goto_51

    .line 97
    :cond_46
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BGServiceController$1;->this$0:Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->-$$Nest$fgetmBgCaptureSurfaceList(Lcom/transsion/camera/app/common/bgservice/BGServiceController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 98
    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_44

    throw p0
.end method
