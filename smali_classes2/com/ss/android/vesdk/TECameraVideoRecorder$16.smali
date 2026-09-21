.class Lcom/ss/android/vesdk/TECameraVideoRecorder$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->useAudioGraphOutput(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$useBgm:Z

.field final synthetic val$useGraph:Z

.field final synthetic val$useMicIn:Z

.field final synthetic val$useOutPut:Z


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ZZZZ)V
    .registers 6

    .line 1181
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useGraph:Z

    iput-boolean p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useOutPut:Z

    iput-boolean p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useMicIn:Z

    iput-boolean p5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useBgm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1183
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useGraph:Z

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseAudioGraph:Z
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$1002(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z

    .line 1184
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useGraph:Z

    if-nez v0, :cond_11

    .line 1185
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopAudioRecorder()V

    goto :goto_2f

    .line 1187
    :cond_11
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;->getHandle()J

    move-result-wide v1

    goto :goto_2c

    :cond_2a
    const-wide/16 v1, 0x0

    :goto_2c
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMicInputAudioDataInterface(J)I

    .line 1189
    :goto_2f
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useOutPut:Z

    iget-boolean v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useGraph:Z

    iget-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useMicIn:Z

    iget-boolean v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useBgm:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->useAudioGraphOutput(ZZZZ)V

    .line 1190
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useGraph:Z

    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;->val$useBgm:Z

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->checkMockAudioTrack(ZZ)V
    invoke-static {v0, v1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2300(Lcom/ss/android/vesdk/TECameraVideoRecorder;ZZ)V

    return-void
.end method
