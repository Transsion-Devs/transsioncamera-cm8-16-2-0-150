.class Lcom/ss/android/medialib/camera/Camera1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera1;->startZoom(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera1;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera1;)V
    .registers 2

    .line 691
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1$3;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .registers 4

    .line 694
    iget-object p3, p0, Lcom/ss/android/medialib/camera/Camera1$3;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;
    invoke-static {p3}, Lcom/ss/android/medialib/camera/Camera1;->access$500(Lcom/ss/android/medialib/camera/Camera1;)Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    move-result-object p3

    if-eqz p3, :cond_13

    .line 695
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1$3;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # getter for: Lcom/ss/android/medialib/camera/Camera1;->zoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera1;->access$500(Lcom/ss/android/medialib/camera/Camera1;)Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    move-result-object p0

    const/4 p3, 0x1

    int-to-float p1, p1

    invoke-interface {p0, p3, p1, p2}, Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;->onChange(IFZ)V

    :cond_13
    return-void
.end method
