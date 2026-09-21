.class Lcom/ss/android/vesdk/TECameraVideoRecorder$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->enableAudioRecorder(ZLcom/bytedance/bpea/basics/Cert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$enable:Z

.field final synthetic val$privacyCert:Lcom/bytedance/bpea/basics/Cert;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ZLcom/bytedance/bpea/basics/Cert;)V
    .registers 4

    .line 1544
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->val$enable:Z

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1547
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraokeRecording()Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1548
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->val$enable:Z

    if-eqz v0, :cond_22

    .line 1549
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v1, 0x1

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->createAudioCaptureSettings(Z)V
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2700(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)V

    .line 1550
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-string v1, "enableAudioRecorder"

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->initAudioCaptureIfNeed(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2800(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;)Z

    goto :goto_38

    .line 1552
    :cond_22
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "mVEAudioCapture release: enableAudioRecorder"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    .line 1554
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v1, 0x0

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$202(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    .line 1557
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;->val$enable:Z

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableAudioRecorder(Z)V

    return-void
.end method
