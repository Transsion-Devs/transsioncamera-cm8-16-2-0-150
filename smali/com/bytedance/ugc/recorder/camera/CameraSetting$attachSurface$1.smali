.class public final Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/camera/CameraSetting;->attachSurface(Landroid/view/SurfaceView;)V
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

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    # getter for: Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recordDisplaySettings:Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;
    invoke-static {p2}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->access$getRecordDisplaySettings$p(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

    move-result-object p2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->setSurface(Landroid/view/Surface;)V

    .line 92
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->getRecorder()Lcom/ss/android/vesdk/VERecorder;

    move-result-object p0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VERecorder;->changeSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    # getter for: Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recordDisplaySettings:Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;
    invoke-static {v0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->access$getRecordDisplaySettings$p(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->setSurface(Landroid/view/Surface;)V

    .line 81
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->getRecorder()Lcom/ss/android/vesdk/VERecorder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VERecorder;->startPreview(Landroid/view/Surface;)V

    .line 82
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->startPrePlay()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    sget-object v0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1$surfaceDestroyed$1;->INSTANCE:Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1$surfaceDestroyed$1;

    invoke-virtual {p1, v0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->stopPrePlay(Lkotlin/jvm/functions/Function0;)V

    .line 97
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;->this$0:Lcom/bytedance/ugc/recorder/camera/CameraSetting;

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->getRecorder()Lcom/ss/android/vesdk/VERecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecorder;->stopPreview()V

    return-void
.end method
