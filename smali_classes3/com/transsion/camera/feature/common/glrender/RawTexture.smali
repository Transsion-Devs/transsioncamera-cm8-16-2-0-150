.class public Lcom/transsion/camera/feature/common/glrender/RawTexture;
.super Lcom/transsion/camera/feature/common/glrender/BasicTexture;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawTexture"


# instance fields
.field private mIsFlipped:Z

.field private final mOpaque:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 14
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;-><init>()V

    .line 15
    iput-boolean p3, p0, Lcom/transsion/camera/feature/common/glrender/RawTexture;->mOpaque:Z

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->setSize(II)V

    return-void
.end method


# virtual methods
.method protected getTarget()I
    .registers 1

    const/16 p0, 0xde1

    return p0
.end method

.method public isFlippedVertically()Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/RawTexture;->mIsFlipped:Z

    return p0
.end method

.method public isOpaque()Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/glrender/RawTexture;->mOpaque:Z

    return p0
.end method

.method protected onBind(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)Z
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->isLoaded()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 45
    :cond_8
    const-string p0, "RawTexture"

    const-string p1, "lost the content due to context change"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected prepare(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V
    .registers 4

    .line 34
    invoke-interface {p1}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->getGLId()Lcom/transsion/camera/feature/common/glrender/GLId;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/transsion/camera/feature/common/glrender/GLId;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mId:I

    const/16 v0, 0x1908

    const/16 v1, 0x1401

    .line 36
    invoke-interface {p1, p0, v0, v1}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->initializeTextureSize(Lcom/transsion/camera/feature/common/glrender/BasicTexture;II)V

    .line 37
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/common/glrender/GLCanvas;->setTextureParameters(Lcom/transsion/camera/feature/common/glrender/BasicTexture;)V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->mState:I

    .line 39
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/glrender/BasicTexture;->setAssociatedCanvas(Lcom/transsion/camera/feature/common/glrender/GLCanvas;)V

    return-void
.end method

.method public setIsFlippedVertically(Z)V
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/glrender/RawTexture;->mIsFlipped:Z

    return-void
.end method

.method public yield()V
    .registers 1

    return-void
.end method
