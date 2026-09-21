.class Lcom/ss/android/vesdk/TECameraVideoRecorder$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->clearAllFrags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 2

    .line 1371
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$19;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1374
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$19;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    monitor-enter v0

    .line 1375
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$19;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2c

    .line 1376
    const-string v1, "TECameraVideoRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAllFrags could not be executed in mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$19;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_45

    .line 1379
    :cond_2c
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$19;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-wide/16 v2, 0x0

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J
    invoke-static {v1, v2, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1102(Lcom/ss/android/vesdk/TECameraVideoRecorder;J)J

    .line 1380
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$19;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v1, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1381
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$19;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->clearEnv()V

    .line 1382
    monitor-exit v0

    return-void

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_2a

    throw p0
.end method
