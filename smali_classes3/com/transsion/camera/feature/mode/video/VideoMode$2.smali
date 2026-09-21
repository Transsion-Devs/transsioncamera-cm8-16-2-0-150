.class Lcom/transsion/camera/feature/mode/video/VideoMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .registers 2

    .line 880
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingLimited()V
    .registers 3

    .line 892
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_12

    .line 893
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->showInfo(I)V

    .line 894
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->stopRecordingByForce()V

    return-void

    .line 896
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    return-void
.end method

.method public onRecordingTimeFull()V
    .registers 4

    .line 883
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$000(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onRecordingTimeFull] , mIsGLRecording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-boolean v2, v2, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_2f

    .line 885
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->showInfo(I)V

    .line 886
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->stopRecordingByForce()V

    :cond_2f
    return-void
.end method
