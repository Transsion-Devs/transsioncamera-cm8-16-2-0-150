.class public Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/common/TEProgramObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderObject"
.end annotation


# instance fields
.field private mShaderID:I

.field private mShaderType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderType:I

    .line 172
    iput v0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->init(Ljava/lang/String;I)Z

    return-void
.end method

.method public static loadShader(ILjava/lang/String;)I
    .registers 6

    .line 199
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 200
    const-string v1, "TEProgramObject"

    if-eqz v0, :cond_1c

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before glCreateShader, glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1c
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 204
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after glCreateShader, glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    if-eqz p0, :cond_77

    .line 210
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 211
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 212
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p1

    if-eqz p1, :cond_5c

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after glCompileShader, glError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    const/4 p1, 0x0

    .line 216
    filled-new-array {p1}, [I

    move-result-object v0

    const v2, 0x8b81

    .line 217
    invoke-static {p0, v2, v0, p1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 218
    aget v0, v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_77

    .line 219
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return p1

    :cond_77
    return p0
.end method


# virtual methods
.method public getShaderID()I
    .registers 1

    .line 167
    iget p0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    return p0
.end method

.method public init(Ljava/lang/String;I)Z
    .registers 3

    .line 180
    iput p2, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderType:I

    .line 181
    invoke-static {p2, p1}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    if-nez p1, :cond_13

    .line 184
    const-string p0, "TEProgramObject"

    const-string p1, "glCreateShader Failed!..."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public final release()V
    .registers 2

    .line 192
    iget v0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    if-nez v0, :cond_5

    return-void

    .line 194
    :cond_5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    return-void
.end method
