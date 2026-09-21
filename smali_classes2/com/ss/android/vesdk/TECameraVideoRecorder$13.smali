.class Lcom/ss/android/vesdk/TECameraVideoRecorder$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$isBlock:Z

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field final synthetic val$stopPreviewOpt:Z


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;ZZ)V
    .registers 5

    .line 960
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    iput-boolean p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;->val$stopPreviewOpt:Z

    iput-boolean p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;->val$isBlock:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 963
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopRecordPreview()V
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    .line 964
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 965
    invoke-interface {v0, v1}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    .line 967
    :cond_d
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;->val$stopPreviewOpt:Z

    if-nez v0, :cond_1e

    .line 968
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;->val$isBlock:Z

    if-eqz v0, :cond_1e

    .line 969
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mConditionRenderExit:Landroid/os/ConditionVariable;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$2200(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_1e
    return-void
.end method
