.class Lcom/transsion/camera/feature/common/glrender/GLES20Canvas$UniformShaderParameter;
.super Lcom/transsion/camera/feature/common/glrender/GLES20Canvas$ShaderParameter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UniformShaderParameter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 184
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas$ShaderParameter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadHandle(I)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas$ShaderParameter;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas$ShaderParameter;->handle:I

    .line 190
    invoke-static {}, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;->checkError()V

    return-void
.end method
