.class Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->createSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/os/Handler;)V
    .registers 3

    .line 1215
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$5;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$5;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 1218
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$5;->val$handler:Landroid/os/Handler;

    if-eqz p0, :cond_8

    .line 1219
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1221
    :cond_8
    const-string p0, "TEImage2Mode"

    const-string p1, "executor run, handler is null"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
