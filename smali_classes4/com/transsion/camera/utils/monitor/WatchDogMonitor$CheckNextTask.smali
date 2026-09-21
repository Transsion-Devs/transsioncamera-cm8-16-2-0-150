.class Lcom/transsion/camera/utils/monitor/WatchDogMonitor$CheckNextTask;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/monitor/WatchDogMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckNextTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/monitor/WatchDogMonitor;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/monitor/WatchDogMonitor;Ljava/lang/String;)V
    .registers 3

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$CheckNextTask;->this$0:Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    .line 243
    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 3

    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_11

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$CheckNextTask;->this$0:Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    invoke-static {p0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->-$$Nest$mclearNumOfSceneId(Lcom/transsion/camera/utils/monitor/WatchDogMonitor;)V

    :cond_11
    return-void
.end method
