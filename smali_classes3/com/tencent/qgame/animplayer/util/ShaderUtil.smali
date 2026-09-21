.class public final Lcom/tencent/qgame/animplayer/util/ShaderUtil;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final compileShader(ILjava/lang/String;)I
    .registers 5

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_37

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const p2, 0x8b81

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v0

    if-nez p1, :cond_37

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error compiling shader: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AnimPlayer.ShaderUtil"

    invoke-virtual {p1, v1, p2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p0, v0

    :cond_37
    if-eqz p0, :cond_3a

    return p0

    :cond_3a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error creating shader."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final createAndLinkProgram(II)I
    .registers 5

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p0

    if-eqz p0, :cond_3a

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const p2, 0x8b82

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p1, p1, v0

    if-nez p1, :cond_3a

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error compiling program: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AnimPlayer.ShaderUtil"

    invoke-virtual {p1, v1, p2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move p0, v0

    :cond_3a
    if-eqz p0, :cond_3d

    return p0

    :cond_3d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error creating program."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const-string/jumbo v0, "vertexSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->compileShader(ILjava/lang/String;)I

    move-result p1

    const v0, 0x8b30

    invoke-direct {p0, v0, p2}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->compileShader(ILjava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->createAndLinkProgram(II)I

    move-result p0

    return p0
.end method
