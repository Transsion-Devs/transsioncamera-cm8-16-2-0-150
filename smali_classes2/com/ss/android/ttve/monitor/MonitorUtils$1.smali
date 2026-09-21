.class Lcom/ss/android/ttve/monitor/MonitorUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/monitor/MonitorUtils;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deviceid:Ljava/lang/String;

.field final synthetic val$userid:Ljava/lang/String;

.field final synthetic val$versionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 81
    iput-object p1, p0, Lcom/ss/android/ttve/monitor/MonitorUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ss/android/ttve/monitor/MonitorUtils$1;->val$deviceid:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/ttve/monitor/MonitorUtils$1;->val$userid:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/ttve/monitor/MonitorUtils$1;->val$versionCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 84
    # getter for: Lcom/ss/android/ttve/monitor/MonitorUtils;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 85
    :try_start_5
    iget-object v1, p0, Lcom/ss/android/ttve/monitor/MonitorUtils$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ss/android/ttve/monitor/MonitorUtils$1;->val$deviceid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ttve/monitor/MonitorUtils$1;->val$userid:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ttve/monitor/MonitorUtils$1;->val$versionCode:Ljava/lang/String;

    invoke-static {v1, v2, v3, p0}, Lcom/ss/android/ttve/monitor/ColCompat;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 86
    # setter for: Lcom/ss/android/ttve/monitor/MonitorUtils;->sMonitorHasInited:Z
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->access$102(Z)Z

    .line 87
    # getter for: Lcom/ss/android/ttve/monitor/MonitorUtils;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->access$000()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p0
.end method
