.class Lcom/ss/android/vesdk/TECameraVideoRecorder$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->concatAsync(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VECallListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$audioPath:Ljava/lang/String;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field final synthetic val$maxVideoTime:I

.field final synthetic val$rotate:I

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .line 1514
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$videoPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$audioPath:Ljava/lang/String;

    iput p5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$rotate:I

    iput-object p6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$description:Ljava/lang/String;

    iput-object p7, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$comment:Ljava/lang/String;

    iput p8, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$maxVideoTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1517
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_38

    .line 1524
    :cond_12
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$videoPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$audioPath:Ljava/lang/String;

    iget v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$rotate:I

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$description:Ljava/lang/String;

    iget-object v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$comment:Ljava/lang/String;

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isOptRemuxWithCopy()Z

    move-result v7

    iget v8, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$maxVideoTime:I

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    .line 1525
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_41

    .line 1526
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    return-void

    .line 1518
    :cond_38
    :goto_38
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_41

    const/16 v0, -0x69

    .line 1519
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_41
    return-void
.end method
