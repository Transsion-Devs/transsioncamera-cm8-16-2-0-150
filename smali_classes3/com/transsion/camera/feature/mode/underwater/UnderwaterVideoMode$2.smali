.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingLimited()V
    .registers 3

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_12

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->showInfo(I)V

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecordingByForce()V
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$300(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    return-void

    .line 481
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->onShutterClick(II)Z

    return-void
.end method

.method public onRecordingTimeFull()V
    .registers 4

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$100(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onRecordingTimeFull] , mIsGLRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    iget-boolean v2, v2, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsGLRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_2f

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->showInfo(I)V

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecordingByForce()V
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$200(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    :cond_2f
    return-void
.end method
