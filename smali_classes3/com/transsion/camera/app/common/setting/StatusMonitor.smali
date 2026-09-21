.class public Lcom/transsion/camera/app/common/setting/StatusMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;,
        Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    }
.end annotation


# instance fields
.field private final mResponderCreateDestroyLock:Ljava/lang/Object;

.field private final mResponders:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponderCreateDestroyLock:Ljava/lang/Object;

    return-void
.end method

.method private getStatusResponderSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponderCreateDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-nez v1, :cond_1b

    .line 74
    new-instance v1, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor-IA;)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 77
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-object v1

    .line 78
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method private removeStatusResponderSync(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponderCreateDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_13

    .line 85
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->-$$Nest$mremoveListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 87
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method


# virtual methods
.method public getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponderSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    return-object p0
.end method

.method public registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponderSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 58
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->-$$Nest$maddListener(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public registerValueChangedListenerToFirst(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponderSync(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 52
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->-$$Nest$maddListenerToFirst(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->removeStatusResponderSync(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
