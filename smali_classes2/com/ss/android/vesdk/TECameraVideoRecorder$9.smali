.class Lcom/ss/android/vesdk/TECameraVideoRecorder$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordBGM(Ljava/lang/String;JJIZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$bgmPath:Ljava/lang/String;

.field final synthetic val$bgmType:I

.field final synthetic val$trimIn:J

.field final synthetic val$trimOut:J


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;JJI)V
    .registers 8

    .line 796
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->val$bgmPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->val$trimIn:J

    iput-wide p5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->val$trimOut:J

    iput p7, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->val$bgmType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 799
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    monitor-enter v1

    .line 801
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2d

    .line 802
    const-string v0, "TECameraVideoRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordBGM could not be executed in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    goto :goto_90

    .line 806
    :cond_2d
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanSetBgm:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 807
    const-string p0, "TECameraVideoRecorder"

    const-string v0, "setRecordBGM could not be executed, after startPrePlay"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    monitor-exit v1

    return-void

    .line 810
    :cond_3e
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->val$bgmPath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->val$trimIn:J

    iget-wide v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->val$trimOut:J

    iget v8, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->val$bgmType:I

    # invokes: Lcom/ss/android/vesdk/TERecorderBase;->setRecordBGM(Ljava/lang/String;JJI)I
    invoke-static/range {v2 .. v8}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1901(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;JJI)I

    .line 811
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->val$bgmPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicPath(Ljava/lang/String;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget v2, v2, Lcom/ss/android/vesdk/TERecorderBase;->mBgmType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_60

    goto :goto_61

    :cond_60
    move v3, v4

    :goto_61
    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioLoop(Z)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v5

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-wide v6, v0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimIn:J

    iget-wide v8, v0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimOut:J

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)J

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicTime(JJJ)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 812
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I
    invoke-static {v0, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1200(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)I

    move-result v2

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->checkChangeAudioRecord(I)V
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1300(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)V

    .line 813
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v3, v2, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I
    invoke-static {v2, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1200(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)I

    move-result v2

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v0, v3, v2, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeAudioRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I

    .line 814
    monitor-exit v1

    return-void

    :goto_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_2a

    throw p0
.end method
