.class Lcom/ss/android/ttvecamera/TECameraServer$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->takePicture(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
    .registers 3

    .line 1198
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1201
    const-string v0, "TECameraServer"

    const-string v1, "takePicture"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1203
    :try_start_e
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4f

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not takePicture on state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1205
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {v2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object v2

    const/16 v3, -0x69

    invoke-interface {v2, v3, v1}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1206
    const-string v2, "TECameraServer"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    if-eqz p0, :cond_4d

    .line 1208
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;->onTakenFail(Ljava/lang/Exception;)V

    goto :goto_4d

    :catchall_4b
    move-exception p0

    goto :goto_6d

    .line 1210
    :cond_4d
    :goto_4d
    monitor-exit v0

    return-void

    .line 1213
    :cond_4f
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_60

    .line 1214
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 1216
    :cond_60
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$16;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    invoke-virtual {v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase;->takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V

    .line 1217
    monitor-exit v0

    return-void

    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_e .. :try_end_6e} :catchall_4b

    throw p0
.end method
