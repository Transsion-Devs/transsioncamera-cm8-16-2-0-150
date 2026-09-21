.class public Lcom/ss/android/vesdk/render/VERenderTextureView;
.super Lcom/ss/android/vesdk/render/VERenderView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(IILandroid/view/TextureView;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/render/VERenderView;-><init>(II)V

    .line 29
    iput-object p3, p0, Lcom/ss/android/vesdk/render/VERenderTextureView;->mTextureView:Landroid/view/TextureView;

    .line 30
    invoke-virtual {p3}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/render/VERenderTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 31
    iget-object p1, p0, Lcom/ss/android/vesdk/render/VERenderTextureView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;)V
    .registers 3

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, v0, p1}, Lcom/ss/android/vesdk/render/VERenderTextureView;-><init>(IILandroid/view/TextureView;)V

    return-void
.end method


# virtual methods
.method public getTextureView()Landroid/view/TextureView;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderTextureView;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/ss/android/vesdk/render/VERenderTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_7

    .line 51
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 53
    :cond_7
    iput p2, p0, Lcom/ss/android/vesdk/render/VERenderView;->mWidth:I

    .line 54
    iput p3, p0, Lcom/ss/android/vesdk/render/VERenderView;->mHeight:I

    .line 55
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/render/VERenderView;->surfaceCreated(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/ss/android/vesdk/render/VERenderTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_9

    .line 80
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 81
    :goto_a
    iget-object v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_14

    .line 82
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurface:Landroid/view/Surface;

    :cond_14
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/ss/android/vesdk/render/VERenderTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_7

    .line 67
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 69
    :cond_7
    iget-object p1, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ss/android/vesdk/render/VERenderView;->surfaceChanged(Landroid/view/Surface;III)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz p0, :cond_7

    .line 95
    invoke-interface {p0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_7
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/ss/android/vesdk/render/VERenderTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method
