.class Lcom/ss/android/vesdk/TECameraVideoRecorder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->preSurfaceCreated()V
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

    .line 676
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$6;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 680
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$6;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    const/4 v0, 0x0

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->startRecordPreview(Landroid/view/Surface;)I
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$700(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/view/Surface;)I

    return-void
.end method
