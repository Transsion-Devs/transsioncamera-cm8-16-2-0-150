.class Lcom/ss/android/vesdk/TECameraVideoRecorder$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->useMusic(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$use:Z


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)V
    .registers 3

    .line 1725
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$29;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$29;->val$use:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1728
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$29;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$29;->val$use:Z

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setUseMusic(I)V

    return-void
.end method
