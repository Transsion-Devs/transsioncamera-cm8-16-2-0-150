.class Lcom/ss/android/ttvecamera/TECameraServer$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->takePicture(Lcom/ss/android/ttvecamera/TECameraCapture;IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;II)V
    .registers 5

    .line 1169
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->val$width:I

    iput p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1172
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1173
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_48

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not takePicture on state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1175
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    invoke-static {v2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    move-result-object v2

    const/16 v3, -0x69

    invoke-interface {v2, v3, v1}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1176
    const-string v2, "TECameraServer"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    if-eqz p0, :cond_46

    .line 1178
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;->onTakenFail(Ljava/lang/Exception;)V

    goto :goto_46

    :catchall_44
    move-exception p0

    goto :goto_6a

    .line 1180
    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    .line 1183
    :cond_48
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    .line 1184
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 1186
    :cond_59
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->val$width:I

    iget v3, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->val$height:I

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$15;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    invoke-virtual {v1, v2, v3, p0}, Lcom/ss/android/ttvecamera/TECameraBase;->takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V

    .line 1187
    monitor-exit v0

    return-void

    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_7 .. :try_end_6b} :catchall_44

    throw p0
.end method
