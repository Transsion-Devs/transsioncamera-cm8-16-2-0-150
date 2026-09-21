.class public Lcom/transsion/camera/app/ui/preview/SurfaceViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/preview/IPreviewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;,
        Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsNeedReCreateSurface:Z

.field private mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewViewCover:Landroid/view/View;

.field private mPreviewWidth:I

.field private mSurfaceCreated:Z

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceCreated(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceCreated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceView(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Landroid/view/SurfaceView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNeedReCreateSurface(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mIsNeedReCreateSurface:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceCreated(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceCreated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SurfaceViewController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceCreated:Z

    .line 82
    invoke-static {}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->getInstance()Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    move-result-object v0

    const-string v1, "createBitmap"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->poll(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Lcom/transsion/camera/app/ui/preview/SurfaceViewController-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .registers 3

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mIsNeedReCreateSurface:Z

    :cond_7
    const/16 v0, 0x20

    if-ne p1, v0, :cond_24

    .line 196
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mIsNeedReCreateSurface:Z

    if-eqz p1, :cond_24

    .line 197
    sget-object p1, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "SurfaceError"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 200
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mIsNeedReCreateSurface:Z

    :cond_24
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

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewView()Landroid/view/View;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public getPreviewViewCover()Landroid/view/View;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    return-object p0
.end method

.method public getProjectAuxSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;
    .registers 5

    .line 68
    iput-object p3, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 69
    sget p3, Lcom/transsion/camera/R$layout;->preview_ui_surface_view_layout:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    sget p2, Lcom/transsion/camera/R$id;->preview_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    .line 71
    sget p2, Lcom/transsion/camera/R$id;->preview_content_cover:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    if-eqz p2, :cond_2d

    .line 73
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mPreviewCoverRectangle:Z

    if-eqz p3, :cond_28

    sget p3, Lcom/transsion/camera/R$drawable;->preview_border_rectangle:I

    goto :goto_2a

    :cond_28
    sget p3, Lcom/transsion/camera/R$drawable;->preview_border_lines:I

    :goto_2a
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    :cond_2d
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;-><init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Lcom/transsion/camera/app/ui/preview/SurfaceViewController-IA;)V

    invoke-interface {p2, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 76
    sget-object p2, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mSurfaceView: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 77
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    iput p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

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
    .registers 6

    .line 119
    sget-object v0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPreviewWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPreviewHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " surfaceViewWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " surfaceViewHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    .line 122
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " surfaceView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceCreated:Z

    if-eqz v0, :cond_78

    iget v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    if-ne v0, p1, :cond_78

    iget v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    if-ne v0, p2, :cond_78

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz p1, :cond_8b

    .line 125
    sget-object p2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-interface {p1, p2, v0, v1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    return-void

    .line 129
    :cond_78
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    .line 130
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_8b

    .line 133
    iget p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-interface {p1, p2, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_8b
    return-void
.end method

.method public setProjectAuxSupport(Z)V
    .registers 2

    return-void
.end method
