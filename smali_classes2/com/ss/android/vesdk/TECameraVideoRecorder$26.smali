.class Lcom/ss/android/vesdk/TECameraVideoRecorder$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecordMode(Lcom/ss/android/vesdk/VERecordMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$isKaraoke:Z

.field final synthetic val$isPureAudioKaraoke:Z

.field final synthetic val$mode:Lcom/ss/android/vesdk/VERecordMode;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ZZLcom/ss/android/vesdk/VERecordMode;)V
    .registers 5

    .line 1655
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->val$isKaraoke:Z

    iput-boolean p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->val$isPureAudioKaraoke:Z

    iput-object p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->val$mode:Lcom/ss/android/vesdk/VERecordMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1658
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->val$isKaraoke:Z

    iget-boolean v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->val$isPureAudioKaraoke:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setKaraoke(ZZ)V

    .line 1659
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->val$mode:Lcom/ss/android/vesdk/VERecordMode;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingMode:Lcom/ss/android/vesdk/VERecordMode;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3002(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecordMode;)Lcom/ss/android/vesdk/VERecordMode;

    .line 1660
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraoke()Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$3100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v1

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->createAudioCaptureSettings(Z)V
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2700(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)V

    .line 1661
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->val$isKaraoke:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_32

    :cond_30
    const/4 v1, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v1, 0x1

    :goto_33
    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioRefactor(Z)V

    .line 1662
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-wide/16 v1, 0x0

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J
    invoke-static {v0, v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1102(Lcom/ss/android/vesdk/TECameraVideoRecorder;J)J

    .line 1663
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
