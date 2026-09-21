.class Lcom/ss/android/vesdk/TECameraVideoRecorder$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 1918
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1921
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPrePlay in state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TECameraVideoRecorder"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1926
    :cond_26
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseAudioGraph:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphMockBgmTrackIndex:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3200(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3e

    .line 1927
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v2, 0x0

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->checkMockAudioTrack(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2300(Lcom/ss/android/vesdk/TECameraVideoRecorder;ZZ)V

    .line 1929
    :cond_3e
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopPrePlay()I

    move-result v0

    .line 1930
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanSetBgm:Z
    invoke-static {v2, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$802(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z

    .line 1931
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_54

    .line 1932
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_54
    return-void
.end method
