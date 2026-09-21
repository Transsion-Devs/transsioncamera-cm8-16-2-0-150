.class Lcom/ss/android/ttvecamera/TECamera1$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECamera1;->startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECamera1;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECamera1;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
    .registers 3

    .line 1400
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1$6;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1$6;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .registers 4

    .line 1403
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1$6;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;

    if-eqz p0, :cond_9

    const/4 p3, 0x1

    int-to-float p1, p1

    .line 1404
    invoke-interface {p0, p3, p1, p2}, Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;->onChange(IFZ)V

    :cond_9
    return-void
.end method
