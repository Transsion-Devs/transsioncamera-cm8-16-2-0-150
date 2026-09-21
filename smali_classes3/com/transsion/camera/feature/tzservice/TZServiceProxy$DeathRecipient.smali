.class Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/tzservice/TZServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied()V
    .registers 4

    .line 162
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "serviceDied."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-static {v0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$fgetmTZServiceLock(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_10
    iget-object v1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$fputmTZAIDLService(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;Lcom/transsion/camera/feature/tzservice/TZService;)V

    .line 165
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_3c

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-static {v0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$fgetmTZServiceCallback(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;->onServiceDied()V

    const/4 v0, 0x0

    :cond_21
    :goto_21
    if-nez v0, :cond_3b

    const-wide/16 v1, 0xc8

    .line 169
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 170
    iget-object v1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-static {v1}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$mgetTZAidlService(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/feature/tzservice/TZService;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 171
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "retry TZAIDLService success."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_21

    :cond_3b
    return-void

    :catchall_3c
    move-exception p0

    .line 165
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method
