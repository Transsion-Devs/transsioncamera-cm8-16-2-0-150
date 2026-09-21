.class Lcom/ss/android/vesdk/TECameraVideoRecorder$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
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

    .line 1613
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$25;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$25;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1616
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$25;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraokeRecording()Z
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1617
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "mVEAudioCapture stop: stopAudioRecorder not refactor"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$25;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$25;->val$privacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioCapture;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    .line 1619
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$25;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v0, 0x0

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2902(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/bytedance/bpea/basics/Cert;)Lcom/bytedance/bpea/basics/Cert;

    return-void

    .line 1621
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$25;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopAudioRecorder()V

    return-void
.end method
