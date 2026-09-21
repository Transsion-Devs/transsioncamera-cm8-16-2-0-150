.class Lcom/ss/android/ttvecamera/TECameraServer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$cameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$currentTimeMS:J

.field final synthetic val$privacyCert:Lcom/bytedance/bpea/basics/Cert;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;JLcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)V
    .registers 7

    .line 403
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-wide p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$currentTimeMS:J

    iput-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput-object p5, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$cameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-object p6, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push open task cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$currentTimeMS:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraServer"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$currentTimeMS:J

    sub-long/2addr v2, v4

    const-string v0, "te_record_camera_push_open_task_time"

    invoke-static {v0, v2, v3}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 410
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$cameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v4, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    invoke-static {v0, v2, v3, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$000(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera open cost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/ttvecamera/TECameraServer$2;->val$currentTimeMS:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
