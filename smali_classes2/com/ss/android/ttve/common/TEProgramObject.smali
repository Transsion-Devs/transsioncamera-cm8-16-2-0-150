.class public Lcom/ss/android/ttve/common/TEProgramObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TEProgramObject"


# instance fields
.field private mFragmentShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

.field private mProgramID:I

.field private mVertexShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/ttve/common/TEProgramObject;
    .registers 3

    .line 24
    new-instance v0, Lcom/ss/android/ttve/common/TEProgramObject;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TEProgramObject;-><init>()V

    .line 25
    invoke-virtual {v0, p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    .line 26
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEProgramObject;->release()V

    const/4 p0, 0x0

    return-object p0

    :cond_10
    return-object v0
.end method


# virtual methods
.method public attributeLocation(Ljava/lang/String;)I
    .registers 2

    .line 150
    iget p0, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bind()V
    .registers 1

    .line 93
    iget p0, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public bindAttribLocation(Ljava/lang/String;I)V
    .registers 3

    .line 154
    iget p0, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    invoke-static {p0, p2, p1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    return-void
.end method

.method public getProgramID()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    return p0
.end method

.method public getUniformLoc(Ljava/lang/String;)I
    .registers 3

    .line 97
    iget p0, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    if-gez p0, :cond_17

    .line 100
    const-string v0, "uniform name %s does not exist"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TEProgramObject"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 45
    iget v0, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/ttve/common/TEProgramObject;->init(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    if-nez p3, :cond_6

    .line 50
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p3

    .line 53
    :cond_6
    const-string v0, "TEProgramObject"

    if-nez p3, :cond_f

    .line 54
    const-string v1, "Invalid Program ID! Check if the context is binded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_f
    iget-object v1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mVertexShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    if-eqz v1, :cond_16

    .line 58
    invoke-virtual {v1}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->release()V

    .line 59
    :cond_16
    iget-object v1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mFragmentShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    if-eqz v1, :cond_1d

    .line 60
    invoke-virtual {v1}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->release()V

    .line 62
    :cond_1d
    new-instance v1, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    const v2, 0x8b31

    invoke-direct {v1, p1, v2}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mVertexShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    .line 63
    new-instance p1, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    const v1, 0x8b30

    invoke-direct {p1, p2, v1}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mFragmentShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    .line 65
    iget-object p1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mVertexShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    invoke-virtual {p1}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->getShaderID()I

    move-result p1

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 66
    iget-object p1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mFragmentShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    invoke-virtual {p1}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->getShaderID()I

    move-result p1

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 67
    const-string p1, "AttachShaders..."

    invoke-static {p1}, Lcom/ss/android/ttve/common/TECommon;->checkGLError(Ljava/lang/String;)V

    .line 68
    invoke-static {p3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x0

    .line 70
    filled-new-array {p1}, [I

    move-result-object p2

    const v1, 0x8b82

    .line 71
    invoke-static {p3, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 73
    iget-object v1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mVertexShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    invoke-virtual {v1}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->release()V

    .line 74
    iget-object v1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mFragmentShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    invoke-virtual {v1}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->release()V

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mVertexShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    .line 76
    iput-object v1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mFragmentShader:Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;

    .line 78
    aget p2, p2, p1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_72

    .line 79
    invoke-static {p3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 84
    :cond_72
    iget p1, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    if-eq p1, p3, :cond_7b

    if-eqz p1, :cond_7b

    .line 85
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 88
    :cond_7b
    iput p3, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    return v1
.end method

.method public final release()V
    .registers 2

    .line 38
    iget v0, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    if-eqz v0, :cond_a

    .line 39
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/ss/android/ttve/common/TEProgramObject;->mProgramID:I

    :cond_a
    return-void
.end method

.method public sendUniformMat2(Ljava/lang/String;IZ[F)V
    .registers 5

    .line 138
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p3, p4, p1}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    return-void
.end method

.method public sendUniformMat3(Ljava/lang/String;IZ[F)V
    .registers 5

    .line 142
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p3, p4, p1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    return-void
.end method

.method public sendUniformMat4(Ljava/lang/String;IZ[F)V
    .registers 5

    .line 146
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p3, p4, p1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public sendUniformf(Ljava/lang/String;F)V
    .registers 3

    .line 106
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public sendUniformf(Ljava/lang/String;FF)V
    .registers 4

    .line 110
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public sendUniformf(Ljava/lang/String;FFF)V
    .registers 5

    .line 114
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method public sendUniformf(Ljava/lang/String;FFFF)V
    .registers 6

    .line 118
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public sendUniformi(Ljava/lang/String;I)V
    .registers 3

    .line 122
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public sendUniformi(Ljava/lang/String;II)V
    .registers 4

    .line 126
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p2, p3}, Landroid/opengl/GLES20;->glUniform2i(III)V

    return-void
.end method

.method public sendUniformi(Ljava/lang/String;III)V
    .registers 5

    .line 130
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3i(IIII)V

    return-void
.end method

.method public sendUniformi(Ljava/lang/String;IIII)V
    .registers 6

    .line 134
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/common/TEProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4i(IIIII)V

    return-void
.end method
