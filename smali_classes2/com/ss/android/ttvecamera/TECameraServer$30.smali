.class Lcom/ss/android/ttvecamera/TECameraServer$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->setExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$exposure:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;I)V
    .registers 3

    .line 1693
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->val$exposure:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1696
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1697
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v1

    if-nez v1, :cond_13

    .line 1698
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_44

    .line 1700
    :cond_13
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->val$exposure:I

    invoke-virtual {v1, v2}, Lcom/ss/android/ttvecamera/TECameraBase;->setExposureCompensation(I)Z

    move-result v1

    .line 1701
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mFirstEC:Z
    invoke-static {v2}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1400(Lcom/ss/android/ttvecamera/TECameraServer;)Z

    move-result v2

    if-eqz v2, :cond_42

    if-eqz v1, :cond_42

    .line 1702
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1500(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    move-result-object v1

    const-string v2, "exposure compensation"

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v3}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x73

    invoke-interface {v1, v5, v4, v2, v3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1703
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$30;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # setter for: Lcom/ss/android/ttvecamera/TECameraServer;->mFirstEC:Z
    invoke-static {p0, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->access$1402(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z

    .line 1705
    :cond_42
    monitor-exit v0

    return-void

    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_11

    throw p0
.end method
