.class Lcom/ss/android/ttvecamera/TECameraServer$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$isZoomV2:Z


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)V
    .registers 5

    .line 1453
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$24;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$24;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$24;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;

    iput-boolean p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$24;->val$isZoomV2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1456
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$24;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$24;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$24;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;

    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$24;->val$isZoomV2:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)I

    return-void
.end method
