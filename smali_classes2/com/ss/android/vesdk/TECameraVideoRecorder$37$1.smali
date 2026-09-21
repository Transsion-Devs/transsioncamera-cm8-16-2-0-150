.class Lcom/ss/android/vesdk/TECameraVideoRecorder$37$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->onOpenGLCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$37;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder$37;)V
    .registers 2

    .line 2889
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 3

    .line 2892
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37$1;->this$1:Lcom/ss/android/vesdk/TECameraVideoRecorder$37;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    check-cast p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const-string v0, " "

    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onError(ILjava/lang/String;)V

    return-void
.end method
