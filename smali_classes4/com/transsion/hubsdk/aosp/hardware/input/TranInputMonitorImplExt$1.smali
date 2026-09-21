.class Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;-><init>(Ljava/lang/Object;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 33
    monitor-enter p0

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    # getter for: Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;
    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    if-eqz v0, :cond_54

    const/4 v0, 0x0

    .line 37
    :try_start_a
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    # getter for: Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;
    invoke-static {v1}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInputChannel"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    # getter for: Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;
    invoke-static {v2}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_28} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_28} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_28} :catch_2b
    .catchall {:try_start_a .. :try_end_28} :catchall_29

    goto :goto_42

    :catchall_29
    move-exception v0

    goto :goto_56

    :catch_2b
    move-exception v1

    .line 41
    :try_start_2c
    const-string v2, "TranInputMonitorImplExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInputChannel fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/hubsdk/util/TranLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_42
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    new-instance v2, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    check-cast v0, Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;-><init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;Landroid/view/InputChannel;Landroid/os/Looper;)V

    # setter for: Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mReceiver:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;
    invoke-static {v1, v2}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$102(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    .line 45
    :cond_54
    monitor-exit p0

    return-void

    :goto_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_2c .. :try_end_57} :catchall_29

    throw v0
.end method
