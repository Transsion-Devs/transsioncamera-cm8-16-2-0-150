.class Lcom/ss/android/ttvecamera/TECameraServer$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->zoomV2(Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$factor:F


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
    .registers 5

    .line 1554
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$27;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$27;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$27;->val$factor:F

    iput-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$27;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1557
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$27;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$27;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$27;->val$factor:F

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$27;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;

    invoke-virtual {v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->zoomV2(Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I

    return-void
.end method
