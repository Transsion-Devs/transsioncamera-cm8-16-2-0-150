.class Lcom/ss/android/ttvecamera/TECameraServer$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->createHandler(ZLjava/lang/String;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MAX_LAG_EDGE:I = 0x3e8

.field private static final TASK_END_PREFIX:Ljava/lang/String; = "<<<<< Finished to Handler"

.field private static final TASK_START_PREFIX:Ljava/lang/String; = ">>>>> Dispatching to Handler"


# instance fields
.field private maxLagMillis:J

.field private startWorkTimeMillis:J

.field private taskTimeOutCount:I

.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;)V
    .registers 4

    .line 2158
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2162
    iput-wide v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->startWorkTimeMillis:J

    const/4 p1, 0x0

    .line 2163
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->taskTimeOutCount:I

    .line 2164
    iput-wide v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->maxLagMillis:J

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 8

    .line 2168
    const-string v0, ">>>>> Dispatching to Handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->startWorkTimeMillis:J

    return-void

    .line 2170
    :cond_f
    const-string v0, "<<<<< Finished to Handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->startWorkTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_60

    .line 2173
    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->taskTimeOutCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->taskTimeOutCount:I

    .line 2174
    const-string v3, "te_record_camera_task_time_out_count"

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 2175
    iget-wide v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->maxLagMillis:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_60

    .line 2176
    iput-wide v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$45;->maxLagMillis:J

    .line 2177
    const-string p0, "te_record_camera_max_lag_task_cost"

    invoke-static {p0, v0, v1}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 2178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cost: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraServer"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return-void
.end method
