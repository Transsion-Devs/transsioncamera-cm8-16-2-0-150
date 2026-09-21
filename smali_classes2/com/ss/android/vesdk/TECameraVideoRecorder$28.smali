.class Lcom/ss/android/vesdk/TECameraVideoRecorder$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecordMode(Lcom/ss/android/vesdk/VERecordMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$mode:Lcom/ss/android/vesdk/VERecordMode;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecordMode;)V
    .registers 3

    .line 1680
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$28;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$28;->val$mode:Lcom/ss/android/vesdk/VERecordMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1684
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$28;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$28;->val$mode:Lcom/ss/android/vesdk/VERecordMode;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordMode(Lcom/ss/android/vesdk/VERecordMode;)I
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$600(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecordMode;)I

    .line 1685
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$28;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    invoke-static {v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/TECameraVideoRecorder$28$1;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$28$1;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder$28;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeRecordMode(Ljava/lang/Runnable;)V

    return-void
.end method
