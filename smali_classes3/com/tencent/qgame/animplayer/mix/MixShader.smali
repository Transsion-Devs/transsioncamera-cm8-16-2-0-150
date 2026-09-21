.class public final Lcom/tencent/qgame/animplayer/mix/MixShader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;


# instance fields
.field private final aPositionLocation:I

.field private final aTextureMaskCoordinatesLocation:I

.field private final aTextureSrcCoordinatesLocation:I

.field private final program:I

.field private final uColorLocation:I

.field private final uIsFillLocation:I

.field private final uTextureMaskUnitLocation:I

.field private final uTextureSrcUnitLocation:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/MixShader;->Companion:Lcom/tencent/qgame/animplayer/mix/MixShader$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    const-string v1, "attribute vec4 a_Position;  \nattribute vec2 a_TextureSrcCoordinates;\nattribute vec2 a_TextureMaskCoordinates;\nvarying vec2 v_TextureSrcCoordinates;\nvarying vec2 v_TextureMaskCoordinates;\nvoid main()\n{\n    v_TextureSrcCoordinates = a_TextureSrcCoordinates;\n    v_TextureMaskCoordinates = a_TextureMaskCoordinates;\n    gl_Position = a_Position;\n}"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float; \nuniform sampler2D u_TextureSrcUnit;\nuniform samplerExternalOES u_TextureMaskUnit;\nuniform int u_isFill;\nuniform vec4 u_Color;\nvarying vec2 v_TextureSrcCoordinates;\nvarying vec2 v_TextureMaskCoordinates;\nvoid main()\n{\n    vec4 srcRgba = texture2D(u_TextureSrcUnit, v_TextureSrcCoordinates);\n    vec4 maskRgba = texture2D(u_TextureMaskUnit, v_TextureMaskCoordinates);\n    float isFill = step(0.5, float(u_isFill));\n    vec4 srcRgbaCal = isFill * vec4(u_Color.r, u_Color.g, u_Color.b, srcRgba.a) + (1.0 - isFill) * srcRgba;\n    gl_FragColor = vec4(srcRgbaCal.r, srcRgbaCal.g, srcRgbaCal.b, srcRgba.a * maskRgba.r);\n}"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->program:I

    const-string/jumbo v1, "u_TextureSrcUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uTextureSrcUnitLocation:I

    const-string/jumbo v1, "u_TextureMaskUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uTextureMaskUnitLocation:I

    const-string/jumbo v1, "u_isFill"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uIsFillLocation:I

    const-string/jumbo v1, "u_Color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uColorLocation:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aPositionLocation:I

    const-string v1, "a_TextureSrcCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aTextureSrcCoordinatesLocation:I

    const-string v1, "a_TextureMaskCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aTextureMaskCoordinatesLocation:I

    return-void
.end method


# virtual methods
.method public final getAPositionLocation()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aPositionLocation:I

    return p0
.end method

.method public final getATextureMaskCoordinatesLocation()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aTextureMaskCoordinatesLocation:I

    return p0
.end method

.method public final getATextureSrcCoordinatesLocation()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->aTextureSrcCoordinatesLocation:I

    return p0
.end method

.method public final getProgram()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->program:I

    return p0
.end method

.method public final getUColorLocation()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uColorLocation:I

    return p0
.end method

.method public final getUIsFillLocation()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uIsFillLocation:I

    return p0
.end method

.method public final getUTextureMaskUnitLocation()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uTextureMaskUnitLocation:I

    return p0
.end method

.method public final getUTextureSrcUnitLocation()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->uTextureSrcUnitLocation:I

    return p0
.end method

.method public final useProgram()V
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/mix/MixShader;->program:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
