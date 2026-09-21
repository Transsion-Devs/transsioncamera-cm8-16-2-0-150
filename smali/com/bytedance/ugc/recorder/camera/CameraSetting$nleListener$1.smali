.class public final Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;
.super Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/camera/CameraSetting;-><init>(Lcom/ss/android/vesdk/VERecorder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    .line 36
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    # getter for: Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    invoke-static {v0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->access$getNleEditor$p(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStage()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 40
    iget-object v1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    # getter for: Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleRecorder:Lcom/bytedance/ugc/nlerecorder/NLERecorder;
    invoke-static {v1}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->access$getNleRecorder$p(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    move-result-object v1

    if-nez v1, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v1, v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->setDataSource(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 41
    :goto_1c
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    # getter for: Lcom/bytedance/ugc/recorder/camera/CameraSetting;->surfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->access$getSurfaceView$p(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)Landroid/view/SurfaceView;

    move-result-object v0

    if-nez v0, :cond_25

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_33

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f

    .line 42
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->startPrePlay()V

    :cond_3f
    return-void
.end method
