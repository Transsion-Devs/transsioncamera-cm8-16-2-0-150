.class Lcom/ss/android/ttvecamera/TECameraServer$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->captureBurst(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

.field final synthetic val$model:Lcom/ss/android/ttvecamera/model/BurstRequest;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)V
    .registers 4

    .line 1139
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->val$model:Lcom/ss/android/ttvecamera/model/BurstRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1142
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1143
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_48

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not takePicture on state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1145
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {v2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object v2

    const/16 v3, -0x69

    invoke-interface {v2, v3, v1}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1146
    const-string v2, "TECameraServer"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    if-eqz p0, :cond_46

    .line 1148
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_46

    :catchall_44
    move-exception p0

    goto :goto_68

    .line 1150
    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    .line 1153
    :cond_48
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    .line 1154
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 1156
    :cond_59
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->val$model:Lcom/ss/android/ttvecamera/model/BurstRequest;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$14;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;

    invoke-virtual {v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraBase;->captureBurst(Lcom/ss/android/ttvecamera/model/BurstRequest;Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;)V

    .line 1157
    monitor-exit v0

    return-void

    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_7 .. :try_end_69} :catchall_44

    throw p0
.end method
