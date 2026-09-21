.class public Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;,
        Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranInputMonitorImplExt"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputMonitor:Ljava/lang/Object;

.field private mReceiver:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

.field private final mTouchEventHandler:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mTouchEventHandler:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;

    .line 29
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    .line 30
    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;-><init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Ljava/lang/Object;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mReceiver:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mTouchEventHandler:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .registers 6

    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 54
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "dispose"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 56
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_19} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_19} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_19} :catch_1c
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    goto :goto_33

    :catchall_1a
    move-exception v0

    goto :goto_40

    :catch_1c
    move-exception v0

    .line 58
    :try_start_1d
    const-string v2, "TranInputMonitorImplExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispose fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/hubsdk/util/TranLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_33
    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    .line 62
    :cond_35
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mReceiver:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    if-eqz v0, :cond_3e

    .line 63
    invoke-virtual {v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;->dispose()V

    .line 64
    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mReceiver:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    .line 66
    :cond_3e
    monitor-exit p0

    return-void

    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_1a

    throw v0
.end method

.method public pilferPointers()V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    if-eqz v0, :cond_30

    .line 72
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pilferPointers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 74
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_18} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pilferPointers fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranInputMonitorImplExt"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/util/TranLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method
