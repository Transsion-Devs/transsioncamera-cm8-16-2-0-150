.class public final Lcom/tencent/qgame/animplayer/z1OoOthis;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qgame/animplayer/z1OoOchar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOthis$z1OoOdo;
    }
.end annotation


# static fields
.field public static final z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOthis$z1OoOdo;


# instance fields
.field private z1OoObreak:I

.field private z1OoObyte:I

.field private z1OoOcase:I

.field private z1OoOcatch:I

.field private z1OoOchar:I

.field private z1OoOclass:Ljava/nio/ByteBuffer;

.field private z1OoOconst:Ljava/nio/ByteBuffer;

.field private z1OoOelse:I

.field private z1OoOfinal:Ljava/nio/ByteBuffer;

.field private final z1OoOfloat:Lcom/tencent/qgame/animplayer/z1OoOtry;

.field private final z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private z1OoOgoto:I

.field private final z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private final z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private z1OoOlong:[I

.field private z1OoOnew:I

.field private z1OoOshort:I

.field private final z1OoOsuper:[F

.field private z1OoOthis:I

.field private final z1OoOthrow:[F

.field private z1OoOtry:I

.field private z1OoOvoid:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOthis$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOthis$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOthis$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    new-instance v0, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    new-instance v0, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOlong:[I

    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOtry;

    invoke-direct {v1}, Lcom/tencent/qgame/animplayer/z1OoOtry;-><init>()V

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfloat:Lcom/tencent/qgame/animplayer/z1OoOtry;

    const/4 v2, 0x4

    iput v2, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOshort:I

    new-array v0, v0, [F

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOsuper:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_4e

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOthrow:[F

    invoke-virtual {v1, p1}, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOdo(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObyte()V

    return-void

    nop

    :array_44
    .array-data 4
        0x0
        -0x40ff7f7f
        -0x40ff7f7f
    .end array-data

    :array_4e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x414fd220    # -0.3441f
        0x3fe2d0e5    # 1.772f
        0x3fb374bc    # 1.402f
        -0x40c930be    # -0.7141f
        0x0
    .end array-data
.end method

.method private z1OoObyte()V
    .registers 6

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    const-string v1, "attribute vec4 v_Position;\nattribute vec2 vTexCoordinateAlpha;\nattribute vec2 vTexCoordinateRgb;\nvarying vec2 v_TexCoordinateAlpha;\nvarying vec2 v_TexCoordinateRgb;\n\nvoid main() {\n    v_TexCoordinateAlpha = vTexCoordinateAlpha;\n    v_TexCoordinateRgb = vTexCoordinateRgb;\n    gl_Position = v_Position;\n}"

    const-string v2, "precision mediump float;\nuniform sampler2D sampler_y;\nuniform sampler2D sampler_u;\nuniform sampler2D sampler_v;\nvarying vec2 v_TexCoordinateAlpha;\nvarying vec2 v_TexCoordinateRgb;\nuniform mat3 convertMatrix;\nuniform vec3 offset;\n\nvoid main() {\n   highp vec3 yuvColorAlpha;\n   highp vec3 yuvColorRGB;\n   highp vec3 rgbColorAlpha;\n   highp vec3 rgbColorRGB;\n   yuvColorAlpha.x = texture2D(sampler_y,v_TexCoordinateAlpha).r;\n   yuvColorRGB.x = texture2D(sampler_y,v_TexCoordinateRgb).r;\n   yuvColorAlpha.y = texture2D(sampler_u,v_TexCoordinateAlpha).r;\n   yuvColorAlpha.z = texture2D(sampler_v,v_TexCoordinateAlpha).r;\n   yuvColorRGB.y = texture2D(sampler_u,v_TexCoordinateRgb).r;\n   yuvColorRGB.z = texture2D(sampler_v,v_TexCoordinateRgb).r;\n   yuvColorAlpha += offset;\n   yuvColorRGB += offset;\n   rgbColorAlpha = convertMatrix * yuvColorAlpha; \n   rgbColorRGB = convertMatrix * yuvColorRGB; \n   gl_FragColor=vec4(rgbColorRGB, rgbColorAlpha.r);\n}"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew:I

    const-string/jumbo v1, "v_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOtry:I

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew:I

    const-string/jumbo v1, "vTexCoordinateRgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObyte:I

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew:I

    const-string/jumbo v1, "vTexCoordinateAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOcase:I

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew:I

    const-string v1, "sampler_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOchar:I

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew:I

    const-string v1, "sampler_u"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOelse:I

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew:I

    const-string v1, "sampler_v"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOgoto:I

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew:I

    const-string v1, "convertMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOthis:I

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew:I

    const-string v1, "offset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOvoid:I

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOlong:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOlong:[I

    array-length v0, p0

    :goto_67
    if-ge v2, v0, :cond_8b

    aget v1, p0, v2

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2802

    const/16 v4, 0x2901

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    const/16 v4, 0x2601

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_8b
    return-void
.end method


# virtual methods
.method public final z1OoOdo()V
    .registers 15

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObreak:I

    if-lez v0, :cond_f2

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOcatch:I

    if-lez v0, :cond_f2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOclass:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOconst:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfinal:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_f2

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOtry:I

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOcase:I

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObyte:I

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    const/16 v0, 0xcf5

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOshort:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOlong:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v6, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObreak:I

    iget v7, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOcatch:I

    const/16 v10, 0x1401

    iget-object v11, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOclass:Ljava/nio/ByteBuffer;

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    const/4 v8, 0x0

    const/16 v9, 0x1909

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOlong:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObreak:I

    const/4 v4, 0x2

    div-int/lit8 v8, v0, 0x2

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOcatch:I

    div-int/lit8 v9, v0, 0x2

    const/16 v12, 0x1401

    iget-object v13, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOconst:Ljava/nio/ByteBuffer;

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1909

    const/4 v10, 0x0

    const/16 v11, 0x1909

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOlong:[I

    aget v0, v0, v4

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObreak:I

    div-int/lit8 v8, v0, 0x2

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOcatch:I

    div-int/lit8 v9, v0, 0x2

    iget-object v13, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfinal:Ljava/nio/ByteBuffer;

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOchar:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOelse:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOgoto:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOvoid:I

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOsuper:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOthis:I

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOthrow:[F

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOclass:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_ce
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOconst:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_d5
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfinal:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_dc

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_dc
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOclass:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOconst:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfinal:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOtry:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObyte:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOcase:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_f2
    return-void
.end method

.method public final z1OoOdo(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public final z1OoOdo(II[B[B[B)V
    .registers 6

    .line 0
    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObreak:I

    iput p2, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOcatch:I

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOclass:Ljava/nio/ByteBuffer;

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOconst:Ljava/nio/ByteBuffer;

    invoke-static {p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfinal:Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoObreak:I

    div-int/lit8 p2, p1, 0x2

    rem-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_27

    const/4 p2, 0x2

    div-int/2addr p1, p2

    rem-int/2addr p1, p2

    if-nez p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 p2, 0x1

    :goto_25
    iput p2, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOshort:I

    :cond_27
    return-void
.end method

.method public final z1OoOdo(Lcom/tencent/qgame/animplayer/AnimConfig;)V
    .registers 10

    .line 0
    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

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

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOif:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

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

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

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

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v4

    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/z1OoOelse;[F)[F

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfor:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOint:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    return-void
.end method

.method public final z1OoOfor()V
    .registers 1

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOnew()V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfloat:Lcom/tencent/qgame/animplayer/z1OoOtry;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif()V

    return-void
.end method

.method public final z1OoOif()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfloat:Lcom/tencent/qgame/animplayer/z1OoOtry;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOdo()V

    return-void
.end method

.method public final z1OoOint()I
    .registers 2

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOlong:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public final z1OoOnew()V
    .registers 3

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOlong:[I

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public final z1OoOtry()V
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOthis;->z1OoOfloat:Lcom/tencent/qgame/animplayer/z1OoOtry;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOdo()V

    return-void
.end method
