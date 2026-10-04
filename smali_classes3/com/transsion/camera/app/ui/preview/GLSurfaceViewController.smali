.class public Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/preview/IPreviewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;,
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;,
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

.field private mAuxExpandView:Landroid/view/View;

.field private mAuxLocateView:Landroid/view/View;

.field private volatile mAuxPreviewHeight:I

.field private mAuxPreviewRoot:Landroid/view/View;

.field private mAuxPreviewView:Landroid/view/TextureView;

.field private volatile mAuxPreviewWidth:I

.field private mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field private volatile mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewViewCover:Landroid/view/View;

.field private volatile mPreviewWidth:I

.field private mProjectSupportAux:Z

.field private final mSlaveScreen:Z

.field private volatile mSurfaceDisplayHeight:I

.field private volatile mSurfaceDisplayWidth:I

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAuxPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuxPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveScreen(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceDisplayHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceDisplayWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GLSurfaceViewCtrl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Z)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    .line 46
    iput v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mProjectSupportAux:Z

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    .line 56
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    .line 57
    new-instance p1, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .registers 2

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    if-eqz p0, :cond_7

    .line 503
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->cameraOperateAction(I)V

    :cond_7
    return-void
.end method

.method public getAuxExpandView()Landroid/view/View;
    .registers 1

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxExpandView:Landroid/view/View;

    return-object p0
.end method

.method public getAuxPreviewView()Landroid/view/View;
    .registers 1

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    return-object p0
.end method

.method public getLocateAuxView()Landroid/view/View;
    .registers 1

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxLocateView:Landroid/view/View;

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewView()Landroid/view/View;
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    return-object p0
.end method

.method public getPreviewViewCover()Landroid/view/View;
    .registers 1

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    return-object p0
.end method

.method public getProjectAuxSupport()Z
    .registers 1

    .line 514
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mProjectSupportAux:Z

    return p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;
    .registers 7

    .line 369
    sget-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[inflateView] mProjectSupportAux:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mProjectSupportAux:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSlaveScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 370
    iput-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 373
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_79

    .line 374
    sget p3, Lcom/transsion/camera/R$layout;->preview_ui_gl_surface_view_layout:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 375
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mProjectSupportAux:Z

    if-eqz p2, :cond_7f

    .line 376
    sget p2, Lcom/transsion/camera/R$id;->preview_aux_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 377
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 378
    sget p2, Lcom/transsion/camera/R$id;->aux_preview_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    .line 379
    sget p3, Lcom/transsion/camera/R$id;->aux_preview_content:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewView:Landroid/view/TextureView;

    .line 380
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    sget p3, Lcom/transsion/camera/R$id;->aux_preview_locate_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxLocateView:Landroid/view/View;

    .line 382
    sget p2, Lcom/transsion/camera/R$id;->aux_preview_expand_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 383
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 384
    sget p2, Lcom/transsion/camera/R$id;->aux_preview_expand:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxExpandView:Landroid/view/View;

    .line 385
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewView:Landroid/view/TextureView;

    new-instance p3, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController-IA;)V

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_7f

    .line 388
    :cond_79
    sget p3, Lcom/transsion/camera/R$layout;->only_gl_surface_view_layout:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 391
    :cond_7f
    :goto_7f
    sget p2, Lcom/transsion/camera/R$id;->preview_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    .line 393
    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setAlgoRenderer(Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V

    .line 394
    sget p2, Lcom/transsion/camera/R$id;->preview_content_cover:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    if-eqz p2, :cond_bc

    .line 396
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p2

    if-eqz p2, :cond_aa

    .line 397
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    sget p3, Lcom/transsion/camera/R$drawable;->preview_qcom_border_lines:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_bc

    .line 399
    :cond_aa
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mPreviewCoverRectangle:Z

    if-eqz p3, :cond_b7

    sget p3, Lcom/transsion/camera/R$drawable;->preview_border_rectangle:I

    goto :goto_b9

    :cond_b7
    sget p3, Lcom/transsion/camera/R$drawable;->preview_border_lines:I

    :goto_b9
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 402
    :cond_bc
    :goto_bc
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    new-instance p3, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController-IA;)V

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setSurfaceTextureListener(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;)V

    return-object p1
.end method

.method public setAuxPreviewSize(II)V
    .registers 7

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewView:Landroid/view/TextureView;

    if-eqz v0, :cond_40

    .line 434
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 435
    sget-object v1, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAuxPreviewSize auxSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_40

    if-eqz p1, :cond_40

    if-eqz p2, :cond_40

    .line 438
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz v1, :cond_40

    .line 440
    sget-object v2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 444
    :cond_40
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewWidth:I

    .line 445
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewHeight:I

    return-void
.end method

.method public setFixedSize(II)V
    .registers 6

    .line 488
    sget-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_2b
    return-void
.end method

.method public setPreviewSize(II)V
    .registers 8

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 451
    sget-object v1, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewSize surface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewWidth:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewHeight:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    if-ne v2, p1, :cond_4e

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    if-ne v2, p2, :cond_4e

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setSurfaceSize(II)V

    return-void

    :cond_4e
    if-eqz v0, :cond_96

    .line 458
    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    if-ne v2, p1, :cond_58

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    if-eq v2, p2, :cond_96

    .line 460
    :cond_58
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    if-eqz v2, :cond_8a

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    if-lez v2, :cond_8a

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    if-lez v2, :cond_8a

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewSize setDefaultBufferSize, width:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 462
    iget v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_8d

    .line 464
    :cond_8a
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 466
    :goto_8d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz v1, :cond_96

    .line 467
    sget-object v2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 470
    :cond_96
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    .line 471
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    return-void
.end method

.method public setProjectAuxSupport(Z)V
    .registers 2

    .line 509
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mProjectSupportAux:Z

    return-void
.end method
