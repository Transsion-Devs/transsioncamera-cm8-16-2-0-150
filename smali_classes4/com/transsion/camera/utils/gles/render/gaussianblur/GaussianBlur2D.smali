.class public Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sCount:I


# instance fields
.field private mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

.field private final mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

.field private final mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GaussianBlur2D"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 19
    sput v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->sCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GaussianBlur2D: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->sCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 28
    sget v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->sCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->sCount:I

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->configPrograms()V

    return-void
.end method

.method private calculateSumWeight()F
    .registers 8

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v0, v0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    :goto_a
    iget-object v3, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v3, v3, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    if-ge v2, v3, :cond_36

    float-to-double v3, v0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    .line 57
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    mul-int v3, v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    double-to-float v3, v5

    add-float/2addr v1, v3

    if-eqz v2, :cond_33

    add-float/2addr v1, v3

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_36
    return v1
.end method

.method private configPrograms()V
    .registers 6

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->calculateSumWeight()F

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->setBindFbo(Z)V

    .line 41
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v3, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v3, v3, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mRatio:I

    invoke-virtual {v1, v3}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setScaleRatio(I)V

    .line 42
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setSumWeight(F)V

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v3, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v3, v3, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    invoke-virtual {v1, v3}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setBlurRadius(I)V

    .line 44
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v3, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v3, v3, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurOffset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setBlurOffset(FF)V

    .line 46
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->setBindFbo(Z)V

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v2, v2, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mRatio:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setScaleRatio(I)V

    .line 48
    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setSumWeight(F)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget v1, v1, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurRadius:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setBlurRadius(I)V

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mBlurParam:Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    iget p0, p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;->mBlurOffset:I

    int-to-float p0, p0

    invoke-virtual {v0, v4, p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->setBlurOffset(FF)V

    return-void
.end method


# virtual methods
.method public draw(III)Z
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->draw(III)Z

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->getFboTextureId()I

    move-result p0

    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;->draw(III)Z

    const/4 p0, 0x1

    return p0
.end method

.method public getOutTextureId()I
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->getFboTextureId()I

    move-result p0

    return p0
.end method

.method public release()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mHorizontalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onRelease()V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->mVerticalRender:Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramBlur;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onRelease()V

    .line 86
    sget p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->sCount:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->sCount:I

    .line 87
    sget-object p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur2D;->sCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
