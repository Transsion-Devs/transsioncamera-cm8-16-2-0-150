.class Lcom/ss/android/vesdk/TECameraVideoRecorder$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->enableAudio(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$enableAudio:Z


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)V
    .registers 3

    .line 1737
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$30;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$30;->val$enableAudio:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1740
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$30;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$30;->val$enableAudio:Z

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableAudio(I)V

    return-void
.end method
