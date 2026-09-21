.class Lcom/ss/android/vesdk/TECameraVideoRecorder$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->startAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$privacyCert:Lcom/bytedance/bpea/basics/Cert;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/bytedance/bpea/basics/Cert;)V
    .registers 3

    .line 1584
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1587
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraokeRecording()Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1588
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const-string v1, "startAudioRecorder not refactor"

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->initAudioCaptureIfNeed(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2800(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;)Z

    .line 1589
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "mVEAudioCapture start: startAudioRecorder"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2902(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/bytedance/bpea/basics/Cert;)Lcom/bytedance/bpea/basics/Cert;

    .line 1591
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioCapture;->start(Lcom/bytedance/bpea/basics/Cert;)I

    .line 1593
    :cond_26
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startAudioRecorder()V

    return-void
.end method
