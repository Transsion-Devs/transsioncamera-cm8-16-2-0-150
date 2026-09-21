.class public Lcom/transsion/camera/app/ui/preview/TextureViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/preview/IPreviewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;,
        Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;
    }
.end annotation


# instance fields
.field private mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;

.field private mPreviewWidth:I

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextureView(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Landroid/view/TextureView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPreviewHeight(Lcom/transsion/camera/app/ui/preview/TextureViewController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewWidth(Lcom/transsion/camera/app/ui/preview/TextureViewController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .registers 2

    return-void
.end method

.method public getAuxExpandView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAuxPreviewView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocateAuxView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewOperator:Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewView()Landroid/view/View;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public getPreviewViewCover()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProjectAuxSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;
    .registers 5

    .line 61
    iput-object p3, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 62
    sget p3, Lcom/transsion/camera/R$layout;->preview_ui_texture_view_layout:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    sget p2, Lcom/transsion/camera/R$id;->preview_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mTextureView:Landroid/view/TextureView;

    .line 64
    new-instance p3, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;Lcom/transsion/camera/app/ui/preview/TextureViewController-IA;)V

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 65
    new-instance p2, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;Lcom/transsion/camera/app/ui/preview/TextureViewController-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewOperator:Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;

    return-object p1
.end method

.method public setAuxPreviewSize(II)V
    .registers 3

    return-void
.end method

.method public setFixedSize(II)V
    .registers 3

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 5

    .line 100
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    .line 101
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 105
    iget p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 106
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz p2, :cond_20

    .line 107
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget v1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController;->mPreviewHeight:I

    invoke-interface {p2, v0, p1, v1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_20
    return-void
.end method

.method public setProjectAuxSupport(Z)V
    .registers 2

    return-void
.end method
