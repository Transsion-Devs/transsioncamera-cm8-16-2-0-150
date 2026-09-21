.class Lcom/ss/android/vesdk/TECameraVideoRecorder$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->startPrePlay(Lcom/ss/android/vesdk/model/VEPrePlayParams;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$params:Lcom/ss/android/vesdk/model/VEPrePlayParams;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/model/VEPrePlayParams;)V
    .registers 3

    .line 1895
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->val$params:Lcom/ss/android/vesdk/model/VEPrePlayParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1898
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPrePlay in state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TECameraVideoRecorder"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1902
    :cond_26
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v1, 0x1

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1200(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)I

    move-result v2

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->checkChangeAudioRecord(I)V
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1300(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)V

    .line 1903
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v3, v2, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I
    invoke-static {v2, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1200(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeAudioRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I

    .line 1904
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v1, 0x0

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanSetBgm:Z
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$802(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z

    .line 1905
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;->val$params:Lcom/ss/android/vesdk/model/VEPrePlayParams;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->isLoop:Z

    iget p0, p0, Lcom/ss/android/vesdk/model/VEPrePlayParams;->duration:I

    invoke-virtual {v0, v2, p0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startPrePlay(ZIZ)I

    return-void
.end method
