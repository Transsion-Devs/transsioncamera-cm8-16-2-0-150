.class Lcom/ss/android/vesdk/TECameraVideoRecorder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordBGM(Ljava/lang/String;JJI)I
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

    .line 734
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$bgmPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$trimIn:J

    iput-wide p5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$trimOut:J

    iput p7, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$bgmType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 737
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    monitor-enter v1

    .line 739
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2e

    .line 740
    const-string v0, "TECameraVideoRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecordBGM could not be executed in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    goto/16 :goto_11d

    .line 744
    :cond_2e
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanSetBgm:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 745
    const-string p0, "TECameraVideoRecorder"

    const-string v0, "setRecordBGM could not be executed, after startPrePlay"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    monitor-exit v1

    return-void

    .line 748
    :cond_3f
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$bgmPath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$trimIn:J

    iget-wide v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$trimOut:J

    iget v8, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$bgmType:I

    # invokes: Lcom/ss/android/vesdk/TERecorderBase;->setRecordBGM(Ljava/lang/String;JJI)I
    invoke-static/range {v2 .. v8}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$901(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;JJI)I

    .line 749
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseAudioGraph:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_98

    .line 750
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$bgmPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicPath(Ljava/lang/String;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget v4, v4, Lcom/ss/android/vesdk/TERecorderBase;->mBgmType:I

    if-ne v4, v3, :cond_69

    goto :goto_6a

    :cond_69
    move v3, v2

    .line 751
    :goto_6a
    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioLoop(Z)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v4

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-wide v5, v0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimIn:J

    iget-wide v7, v0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimOut:J

    .line 752
    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)J

    move-result-wide v9

    invoke-virtual/range {v4 .. v10}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicTime(JJJ)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 753
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1200(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)I

    move-result v3

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->checkChangeAudioRecord(I)V
    invoke-static {v0, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1300(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)V

    .line 754
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v4, v3, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I
    invoke-static {v3, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1200(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v0, v4, v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeAudioRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I

    goto :goto_ff

    .line 757
    :cond_98
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$bgmPath:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-nez v0, :cond_ea

    .line 758
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphTrackIndex:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v0

    if-eq v0, v4, :cond_b9

    .line 759
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphTrackIndex:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->removeTrack(II)I

    .line 760
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphTrackIndex:I
    invoke-static {v0, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1402(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    .line 762
    :cond_b9
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 763
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$bgmPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 764
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const v2, 0x7fffffff

    .line 765
    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 766
    invoke-virtual {v0, v4, v5}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object v0

    .line 768
    const-string v2, "TECameraVideoRecorder"

    const-string v4, "setRecordBGM add Track"

    invoke-static {v2, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v2, v3, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I

    move-result v0

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphTrackIndex:I
    invoke-static {v2, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1402(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    goto :goto_ff

    .line 771
    :cond_ea
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphTrackIndex:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->removeTrack(II)I

    .line 772
    const-string v0, "TECameraVideoRecorder"

    const-string v2, "setRecordBGM remove Track"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphTrackIndex:I
    invoke-static {v0, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1402(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    .line 778
    :goto_ff
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$bgmPath:Ljava/lang/String;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupBgmPath:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1502(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 779
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-wide v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$trimIn:J

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupTrimIn:J
    invoke-static {v0, v2, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1602(Lcom/ss/android/vesdk/TECameraVideoRecorder;J)J

    .line 780
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-wide v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$trimOut:J

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupTrimOut:J
    invoke-static {v0, v2, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1702(Lcom/ss/android/vesdk/TECameraVideoRecorder;J)J

    .line 781
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;->val$bgmType:I

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupBgmType:I
    invoke-static {v0, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1802(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    .line 782
    monitor-exit v1

    return-void

    :goto_11d
    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_3 .. :try_end_11e} :catchall_2a

    throw p0
.end method
