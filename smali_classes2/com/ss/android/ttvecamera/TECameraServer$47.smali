.class Lcom/ss/android/ttvecamera/TECameraServer$47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;)V
    .registers 2

    .line 2550
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$47;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Ljava/util/List;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 2553
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$47;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2700(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2554
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$47;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2700(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;->config(Ljava/util/List;)[I

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method
