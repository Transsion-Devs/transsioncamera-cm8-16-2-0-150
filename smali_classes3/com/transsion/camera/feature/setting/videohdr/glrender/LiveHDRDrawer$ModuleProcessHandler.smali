.class final Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModuleProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;Landroid/os/Looper;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;->this$0:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;

    .line 108
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;-><init>(Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 113
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x101

    if-eq p1, v0, :cond_b

    return-void

    .line 120
    :cond_b
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->-$$Nest$sfgetmProcessLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 121
    :try_start_10
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer$ModuleProcessHandler;->this$0:Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->-$$Nest$minitModel(Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;)V

    .line 122
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0

    .line 115
    :cond_1a
    invoke-static {}, Lcom/transsion/camera/feature/setting/videohdr/glrender/LiveHDRDrawer;->-$$Nest$sfgetmProcessLock()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 116
    :try_start_1f
    invoke-static {}, Lcom/aiworks/android/livehdr/JniInterface;->getInstance()Lcom/aiworks/android/livehdr/JniInterface;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aiworks/android/livehdr/JniInterface;->processModule(Z)V

    .line 117
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw p1
.end method
