.class Lcom/ss/android/vesdk/TECameraVideoRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;-><init>(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)V
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

    .line 311
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$2;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(II)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$2;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSampleRate:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$302(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    .line 314
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$2;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # setter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mChannels:I
    invoke-static {p0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$402(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I

    return-void
.end method
