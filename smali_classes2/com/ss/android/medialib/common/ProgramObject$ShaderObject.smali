.class public Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/common/ProgramObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderObject"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mShaderID:I

.field private mShaderType:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderType:I

    .line 172
    iput v0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->init(Ljava/lang/String;I)Z

    return-void
.end method

.method public static loadShader(ILjava/lang/String;)I
    .registers 4

    .line 202
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_29

    .line 205
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 206
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x0

    .line 207
    filled-new-array {p1}, [I

    move-result-object v0

    const v1, 0x8b81

    .line 208
    invoke-static {p0, v1, v0, p1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 209
    aget v0, v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    .line 210
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "ProgramObject"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return p1

    :cond_29
    return p0
.end method


# virtual methods
.method public getShaderID()I
    .registers 1

    .line 167
    iget p0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    return p0
.end method

.method public init(Ljava/lang/String;I)Z
    .registers 3

    .line 180
    iput p2, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderType:I

    .line 181
    invoke-static {p2, p1}, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    if-nez p1, :cond_13

    .line 187
    const-string p0, "ProgramObject"

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

    .line 195
    iget v0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    if-nez v0, :cond_5

    return-void

    .line 197
    :cond_5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/ss/android/medialib/common/ProgramObject$ShaderObject;->mShaderID:I

    return-void
.end method
