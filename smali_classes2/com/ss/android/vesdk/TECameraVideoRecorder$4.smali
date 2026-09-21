.class Lcom/ss/android/vesdk/TECameraVideoRecorder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$audioPath:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 629
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->val$videoPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->val$audioPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 632
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    monitor-enter v0

    .line 633
    :try_start_3
    const-string v1, "TECameraVideoRecorder"

    const-string v2, "setCustomVideoBg: doing... "

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_33

    .line 635
    const-string v1, "TECameraVideoRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomVideoBg could not be executed in recording mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    goto :goto_5a

    .line 638
    :cond_33
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->val$videoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    sget-object v2, Lcom/ss/android/vesdk/VERecordMode;->CUSTOM_VIDEO_BG:Lcom/ss/android/vesdk/VERecordMode;

    goto :goto_42

    :cond_40
    sget-object v2, Lcom/ss/android/vesdk/VERecordMode;->DEFAULT:Lcom/ss/android/vesdk/VERecordMode;

    :goto_42
    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordMode(Lcom/ss/android/vesdk/VERecordMode;)I
    invoke-static {v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$600(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecordMode;)I

    .line 639
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v2, v2, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->val$videoPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;->val$audioPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCustomVideoBg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    monitor-exit v0

    return-void

    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_31

    throw p0
.end method
