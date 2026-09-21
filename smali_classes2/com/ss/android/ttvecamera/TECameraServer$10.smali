.class Lcom/ss/android/ttvecamera/TECameraServer$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->close(ZLcom/bytedance/bpea/basics/Cert;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$currentTimeMS:J

.field final synthetic val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;JZLcom/bytedance/bpea/basics/Cert;)V
    .registers 6

    .line 865
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-wide p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->val$currentTimeMS:J

    iput-boolean p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->val$sync:Z

    iput-object p5, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->val$currentTimeMS:J

    sub-long/2addr v0, v2

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Push close task cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TECameraServer"

    invoke-static {v3, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-boolean v3, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->val$sync:Z

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->close(ZLcom/bytedance/bpea/basics/Cert;)I
    invoke-static {v2, v3, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1000(Lcom/ss/android/ttvecamera/TECameraServer;ZLcom/bytedance/bpea/basics/Cert;)I

    .line 872
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v3, 0x0

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z
    invoke-static {v2, v3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1102(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z

    .line 873
    iget-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->val$sync:Z

    if-eqz v2, :cond_39

    .line 874
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$900(Lcom/ss/android/ttvecamera/TECameraServer;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 876
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/ttvecamera/TECameraServer$10;->val$currentTimeMS:J

    sub-long/2addr v2, v4

    .line 878
    const-string p0, "te_record_camera_push_close_task_time"

    invoke-static {p0, v0, v1}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 879
    const-string p0, "te_record_camera_close_cost"

    invoke-static {p0, v2, v3}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 880
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
