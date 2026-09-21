.class Lcom/ss/android/medialib/camera/Camera1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/camera/CameraOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera1;->openAndStartPreview()V
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

    .line 256
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1$1;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenFail(IILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onOpenSuccess(I)V
    .registers 3

    .line 259
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1$1;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/Camera1;->initCameraParam()[I

    .line 260
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1$1;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera1;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget p1, p1, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 261
    # getter for: Lcom/ss/android/medialib/camera/Camera1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera1;->access$000(Lcom/ss/android/medialib/camera/Camera1;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/camera/Camera1;->startPreview(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 263
    :cond_16
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera1;->startPreviewWithCallback()V

    return-void
.end method
