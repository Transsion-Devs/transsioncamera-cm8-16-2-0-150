.class public Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

.field private mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCPreview"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method private initPreviewRender()V
    .registers 4

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPreviewRender mPreviewRender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    if-nez v0, :cond_2f

    .line 84
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    .line 85
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->init()V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;

    if-eqz v0, :cond_2f

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->previewShot(Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;)V

    :cond_2f
    return-void
.end method

.method private unInitPreviewRender()V
    .registers 4

    .line 93
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInitPreviewRender mPreviewRender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    if-eqz v0, :cond_23

    .line 95
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->unInit()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    :cond_23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 5

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 6

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 116
    :cond_6
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result p0

    return p0
.end method

.method public final modeInit()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    if-nez v0, :cond_10

    .line 42
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_10
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    return-void
.end method

.method public modeInitCallback()V
    .registers 1

    .line 59
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeInitCallback()V

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->initPreviewRender()V

    return-void
.end method

.method public final modeUnInit()V
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    if-nez p0, :cond_10

    .line 51
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "modeUnInit operator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_10
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 1

    .line 71
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeUninitCallback()V

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->unInitPreviewRender()V

    return-void
.end method

.method public previewShot(Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewShotCallback:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->mPreviewRender:Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;

    if-nez p0, :cond_7

    return-void

    .line 125
    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/preview/PreviewRender;->previewShot(Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot$IPreviewShotCallback;)V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->initPreviewRender()V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCPreview;->unInitPreviewRender()V

    return-void
.end method
