.class public final Lcom/tencent/qgame/animplayer/z1OoOlong;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qgame/animplayer/z1OoOchar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOlong$z1OoOdo;
    }
.end annotation


# static fields
.field public static final z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOlong$z1OoOdo;


# instance fields
.field private z1OoObyte:I

.field private final z1OoOcase:Lcom/tencent/qgame/animplayer/z1OoOtry;

.field private z1OoOchar:I

.field private z1OoOelse:[I

.field private final z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private z1OoOgoto:I

.field private final z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private final z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private z1OoOlong:I

.field private z1OoOnew:Z

.field private z1OoOthis:I

.field private z1OoOtry:I

.field private z1OoOvoid:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOlong$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOlong$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOlong$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    new-instance v0, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    new-instance v0, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOtry;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/z1OoOtry;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOcase:Lcom/tencent/qgame/animplayer/z1OoOtry;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOelse:[I

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOdo(Landroid/graphics/SurfaceTexture;)V

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    const-string v0, "attribute vec4 vPosition;\nattribute vec4 vTexCoordinateAlpha;\nattribute vec4 vTexCoordinateRgb;\nvarying vec2 v_TexCoordinateAlpha;\nvarying vec2 v_TexCoordinateRgb;\n\nvoid main() {\n    v_TexCoordinateAlpha = vec2(vTexCoordinateAlpha.x, vTexCoordinateAlpha.y);\n    v_TexCoordinateRgb = vec2(vTexCoordinateRgb.x, vTexCoordinateRgb.y);\n    gl_Position = vPosition;\n}"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES texture;\nvarying vec2 v_TexCoordinateAlpha;\nvarying vec2 v_TexCoordinateRgb;\n\nvoid main () {\n    vec4 alphaColor = texture2D(texture, v_TexCoordinateAlpha);\n    vec4 rgbColor = texture2D(texture, v_TexCoordinateRgb);\n    gl_FragColor = vec4(rgbColor.r, rgbColor.g, rgbColor.b, alphaColor.r);\n}"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOchar:I

    const-string v0, "texture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOgoto:I

    iget p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOchar:I

    const-string/jumbo v0, "vPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOlong:I

    iget p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOchar:I

    const-string/jumbo v0, "vTexCoordinateAlpha"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOthis:I

    iget p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOchar:I

    const-string/jumbo v0, "vTexCoordinateRgb"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOvoid:I

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOelse:[I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOelse:[I

    aget p0, p0, v1

    const p1, 0x8d65

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p0, 0x2801

    const/high16 v0, 0x46180000    # 9728.0f

    invoke-static {p1, p0, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2800

    const v0, 0x46180400    # 9729.0f

    invoke-static {p1, p0, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const v0, 0x812f

    invoke-static {p1, p0, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2803

    invoke-static {p1, p0, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method


# virtual methods
.method public final z1OoOdo()V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOnew:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOtry:I

    if-lez v0, :cond_1b

    iget v2, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoObyte:I

    if-lez v2, :cond_1b

    iput-boolean v1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOnew:Z

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_1b
    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOchar:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    iget v2, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOlong:I

    invoke-virtual {v0, v2}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOelse:[I

    aget v0, v0, v1

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOgoto:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    iget v2, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOthis:I

    invoke-virtual {v0, v2}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    iget p0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOvoid:I

    invoke-virtual {v0, p0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    const/4 p0, 0x5

    const/4 v0, 0x4

    invoke-static {p0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public final z1OoOdo(II)V
    .registers 4

    .line 0
    if-lez p1, :cond_c

    if-gtz p2, :cond_5

    goto :goto_c

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOnew:Z

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOtry:I

    iput p2, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoObyte:I

    :cond_c
    :goto_c
    return-void
.end method

.method public final z1OoOdo(II[B[B[B)V
    .registers 6

    .line 0
    return-void
.end method

.method public final z1OoOdo(Lcom/tencent/qgame/animplayer/AnimConfig;)V
    .registers 10

    .line 0
    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    sget-object v1, Lcom/tencent/qgame/animplayer/util/VertexUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/VertexUtil;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v3

    new-instance v4, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v5}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    sget-object v0, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getAlphaPointRect()Lcom/tencent/qgame/animplayer/z1OoOelse;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getRgbPointRect()Lcom/tencent/qgame/animplayer/z1OoOelse;

    move-result-object p1

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v4

    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    return-void
.end method

.method public final z1OoOfor()V
    .registers 1

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOnew()V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOcase:Lcom/tencent/qgame/animplayer/z1OoOtry;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif()V

    return-void
.end method

.method public final z1OoOif()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOcase:Lcom/tencent/qgame/animplayer/z1OoOtry;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOdo()V

    return-void
.end method

.method public final z1OoOint()I
    .registers 2

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOelse:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public final z1OoOnew()V
    .registers 3

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOelse:[I

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public final z1OoOtry()V
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOcase:Lcom/tencent/qgame/animplayer/z1OoOtry;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOdo()V

    return-void
.end method
