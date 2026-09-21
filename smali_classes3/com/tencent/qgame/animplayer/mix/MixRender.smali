.class public final Lcom/tencent/qgame/animplayer/mix/MixRender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/mix/MixRender$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/mix/MixRender$Companion;


# instance fields
.field private maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private final mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

.field private shader:Lcom/tencent/qgame/animplayer/mix/MixShader;

.field private srcArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/MixRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/mix/MixRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/MixRender;->Companion:Lcom/tencent/qgame/animplayer/mix/MixRender$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V
    .registers 3

    const-string v0, "mixAnimPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    new-instance p1, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    new-instance p1, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->srcArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    new-instance p1, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    return-void
.end method

.method private final genSrcCoordsArray([FIIIILcom/tencent/qgame/animplayer/mix/Src$FitType;)[F
    .registers 9

    sget-object p0, Lcom/tencent/qgame/animplayer/mix/Src$FitType;->CENTER_FULL:Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    const/4 v0, 0x0

    if-ne p6, p0, :cond_49

    if-gt p2, p4, :cond_1d

    if-gt p3, p5, :cond_1d

    sub-int p0, p4, p2

    div-int/lit8 p0, p0, 0x2

    sub-int p6, p5, p3

    div-int/lit8 p6, p6, 0x2

    sget-object v0, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-direct {v1, p0, p6, p2, p3}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    invoke-virtual {v0, p4, p5, v1, p1}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F

    move-result-object p0

    return-object p0

    :cond_1d
    int-to-float p0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    int-to-float p3, p3

    div-float/2addr p0, p3

    int-to-float p3, p4

    mul-float/2addr p2, p3

    int-to-float p6, p5

    div-float/2addr p2, p6

    cmpl-float p2, p0, p2

    if-lez p2, :cond_37

    div-float/2addr p3, p0

    float-to-int p0, p3

    sub-int p2, p5, p0

    div-int/lit8 p2, p2, 0x2

    new-instance p3, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-direct {p3, v0, p2, p4, p0}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    goto :goto_42

    :cond_37
    mul-float/2addr p6, p0

    float-to-int p0, p6

    sub-int p2, p4, p0

    div-int/lit8 p2, p2, 0x2

    new-instance p3, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-direct {p3, p2, v0, p0, p5}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    :goto_42
    sget-object p0, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    invoke-virtual {p0, p4, p5, p3, p1}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F

    move-result-object p0

    return-object p0

    :cond_49
    sget-object p0, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    new-instance p4, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-direct {p4, v0, v0, p2, p3}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F

    move-result-object p0

    return-object p0
.end method

.method private final transColor(I)[F
    .registers 6

    ushr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v0

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v0

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v0

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p0, v0, v3

    const/4 p0, 0x1

    aput v1, v0, p0

    const/4 p0, 0x2

    aput v2, v0, p0

    const/4 p0, 0x3

    aput p1, v0, p0

    return-object v0
.end method


# virtual methods
.method public final init()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/MixShader;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/mix/MixShader;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->shader:Lcom/tencent/qgame/animplayer/mix/MixShader;

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->getSrcMap()Lcom/tencent/qgame/animplayer/mix/SrcMap;

    return-void
.end method

.method public final release(I)V
    .registers 3

    if-eqz p1, :cond_b

    filled-new-array {p1}, [I

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_b
    return-void
.end method

.method public final renderFrame(Lcom/tencent/qgame/animplayer/AnimConfig;Lcom/tencent/qgame/animplayer/mix/Frame;Lcom/tencent/qgame/animplayer/mix/Src;)V
    .registers 14

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->getPlayer()Lcom/tencent/qgame/animplayer/z1OoOif;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz v0, :cond_13d

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz v0, :cond_13d

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOint()I

    move-result v0

    if-gtz v0, :cond_25

    goto/16 :goto_13d

    :cond_25
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->shader:Lcom/tencent/qgame/animplayer/mix/MixShader;

    if-nez v1, :cond_2b

    goto/16 :goto_13d

    :cond_2b
    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->useProgram()V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    sget-object v3, Lcom/tencent/qgame/animplayer/util/VertexUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/VertexUtil;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Lcom/tencent/qgame/animplayer/mix/Frame;->getFrame()Lcom/tencent/qgame/animplayer/z1OoOelse;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v7}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->getAPositionLocation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/mix/MixRender;->srcArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v2}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v4

    invoke-virtual {p2}, Lcom/tencent/qgame/animplayer/mix/Frame;->getFrame()Lcom/tencent/qgame/animplayer/z1OoOelse;

    move-result-object v3

    iget v5, v3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOfor:I

    invoke-virtual {p2}, Lcom/tencent/qgame/animplayer/mix/Frame;->getFrame()Lcom/tencent/qgame/animplayer/z1OoOelse;

    move-result-object v3

    iget v6, v3, Lcom/tencent/qgame/animplayer/z1OoOelse;->z1OoOint:I

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/mix/Src;->getW()I

    move-result v7

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/mix/Src;->getH()I

    move-result v8

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/mix/Src;->getFitType()Lcom/tencent/qgame/animplayer/mix/Src$FitType;

    move-result-object v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/tencent/qgame/animplayer/mix/MixRender;->genSrcCoordsArray([FIIIILcom/tencent/qgame/animplayer/mix/Src$FitType;)[F

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    iget-object p0, v3, Lcom/tencent/qgame/animplayer/mix/MixRender;->srcArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->getATextureSrcCoordinatesLocation()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    const p0, 0x84c0

    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p0, 0xde1

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcTextureId()I

    move-result v2

    invoke-static {p0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->getUTextureSrcUnitLocation()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object p0, v3, Lcom/tencent/qgame/animplayer/mix/MixRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    sget-object v4, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoHeight()I

    move-result p1

    invoke-virtual {p2}, Lcom/tencent/qgame/animplayer/mix/Frame;->getMFrame()Lcom/tencent/qgame/animplayer/z1OoOelse;

    move-result-object v6

    iget-object v7, v3, Lcom/tencent/qgame/animplayer/mix/MixRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v7}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v7

    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    invoke-virtual {p2}, Lcom/tencent/qgame/animplayer/mix/Frame;->getMt()I

    move-result p0

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_cc

    iget-object p0, v3, Lcom/tencent/qgame/animplayer/mix/MixRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->rotate90([F)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    :cond_cc
    iget-object p0, v3, Lcom/tencent/qgame/animplayer/mix/MixRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->getATextureMaskCoordinatesLocation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    const p0, 0x84c1

    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p0, 0x8d65

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->getUTextureMaskUnitLocation()I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcType()Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    move-result-object p0

    sget-object p2, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->TXT:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    if-ne p0, p2, :cond_11a

    iget-object p0, v3, Lcom/tencent/qgame/animplayer/mix/MixRender;->mixAnimPlugin:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->getAutoTxtColorFill()Z

    move-result p0

    if-eqz p0, :cond_11a

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->getUIsFillLocation()I

    move-result p0

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p3}, Lcom/tencent/qgame/animplayer/mix/Src;->getColor()I

    move-result p0

    invoke-direct {v3, p0}, Lcom/tencent/qgame/animplayer/mix/MixRender;->transColor(I)[F

    move-result-object p0

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->getUColorLocation()I

    move-result p2

    aget p3, p0, p1

    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    aget p0, p0, v2

    invoke-static {p2, p3, v0, v1, p0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto :goto_129

    :cond_11a
    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->getUIsFillLocation()I

    move-result p0

    invoke-static {p0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/mix/MixShader;->getUColorLocation()I

    move-result p0

    const/4 p2, 0x0

    invoke-static {p0, p2, p2, p2, p2}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    :goto_129
    const/16 p0, 0xbe2

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p2, 0x302

    const/16 p3, 0x303

    invoke-static {p2, p3, p1, p3}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    invoke-static {p1, v2, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_13d
    :goto_13d
    return-void
.end method
