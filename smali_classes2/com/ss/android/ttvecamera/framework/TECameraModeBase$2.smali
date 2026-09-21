.class Lcom/ss/android/ttvecamera/framework/TECameraModeBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->createSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;Landroid/os/Handler;)V
    .registers 3

    .line 223
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$2;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 226
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$2;->val$handler:Landroid/os/Handler;

    if-eqz p0, :cond_7

    .line 227
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method
