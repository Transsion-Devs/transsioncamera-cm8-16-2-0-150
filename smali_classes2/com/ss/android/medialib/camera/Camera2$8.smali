.class Lcom/ss/android/medialib/camera/Camera2$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera2;->setupPreviewReader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera2;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 2

    .line 1111
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$8;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 7

    .line 1116
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_33

    .line 1118
    :cond_7
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 1119
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 1121
    new-instance v2, Lcom/ss/android/medialib/camera/ImageFrame;

    new-instance v3, Lcom/ss/android/medialib/camera/Plane;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ss/android/medialib/camera/Plane;-><init>([Landroid/media/Image$Plane;)V

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>(Lcom/ss/android/medialib/camera/Plane;III)V

    .line 1123
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$8;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$1600(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1124
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$8;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mFrameCallback:Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera2;->access$1600(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0, v2}, Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;->onPreviewFrame(ILcom/ss/android/medialib/camera/ImageFrame;)V

    .line 1126
    :cond_30
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_33

    :catch_33
    :goto_33
    return-void
.end method
