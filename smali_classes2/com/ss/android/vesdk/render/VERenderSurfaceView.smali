.class public Lcom/ss/android/vesdk/render/VERenderSurfaceView;
.super Lcom/ss/android/vesdk/render/VERenderView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(IILandroid/view/SurfaceView;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/render/VERenderView;-><init>(II)V

    .line 26
    iput-object p3, p0, Lcom/ss/android/vesdk/render/VERenderSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 27
    invoke-virtual {p3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;)V
    .registers 3

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, v0, p1}, Lcom/ss/android/vesdk/render/VERenderSurfaceView;-><init>(IILandroid/view/SurfaceView;)V

    return-void
.end method


# virtual methods
.method public getSurfaceView()Landroid/view/SurfaceView;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 52
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/render/VERenderView;->surfaceChanged(Landroid/view/Surface;III)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/ss/android/vesdk/render/VERenderSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_12

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mWidth:I

    .line 38
    iget-object v0, p0, Lcom/ss/android/vesdk/render/VERenderSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mHeight:I

    .line 40
    :cond_12
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/render/VERenderView;->surfaceCreated(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 61
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/render/VERenderView;->surfaceDestroyed(Landroid/view/Surface;)V

    return-void
.end method
