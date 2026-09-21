.class Lcom/ss/android/vesdk/TECameraVideoRecorder$67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->startMediaRecord(Ljava/lang/String;Lcom/ss/android/vesdk/camera/ICameraCapture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 2

    .line 5144
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$67;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 2

    .line 5152
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$67;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecorderState(I)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 5157
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$67;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecorderState(I)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 5147
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$67;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecorderState(I)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 5162
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$67;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecorderState(I)V

    return-void
.end method
