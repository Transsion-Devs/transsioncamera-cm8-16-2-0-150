.class Lcom/ss/android/ttvecamera/TECameraServer$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->getShutterTimeRange(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)[J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)V
    .registers 4

    .line 1953
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$39;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$39;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$39;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1956
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$39;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$39;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$39;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->getShutterTimeRange(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)[J

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1958
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$39;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;

    invoke-interface {p0, v0}, Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;->getShutterTimeRange([J)V

    :cond_11
    return-void
.end method
