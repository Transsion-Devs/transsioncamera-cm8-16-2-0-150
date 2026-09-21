.class public Lcom/transsion/camera/utils/gles/ProgramTexture2d;
.super Lcom/transsion/camera/utils/gles/core/Program;
.source "SourceFile"


# instance fields
.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muMVPMatrixLoc:I

.field private muTexMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 88
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uTexDbgColor;\n// linear Display-P3 to linear BT.709 (inverse of ls2lp3)\nmat3 lp32ls = mat3(\n    1.22494018, -0.22494018, 0.00000000,\n    -0.04205696, 1.04205696, 0.00000000,\n    -0.01963755, -0.07863605, 1.09827360);\nvoid convertP3ToBt709() {\n    // 1. degamma with 2.2, expanding P3 to linear-P3;\n    // 2. linear-P3 to linear-BT.709;\n    // 3. gamma encoding with 1/2.2;\n    float gamma = 2.2;\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(gamma));\n    gl_FragColor.rgb = gl_FragColor.rgb * lp32ls; // \u53f3\u4e58\n    // gamma\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(1./gamma));\n}\nvoid main() {\n    gl_FragColor = clamp(texture2D(sTexture, vTextureCoord), 0.0, 1.0);\n    convertP3ToBt709();\n    if (uTexDbgColor > 0.0) {\n        gl_FragColor.rgb = vec3(uTexDbgColor);\n    }\n}\n"

    goto :goto_7

    :cond_5
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = vec4(texture2D(sTexture, vTextureCoord).rgb, 1.0);\n}\n"

    :goto_7
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/gles/core/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawFrame(I[F[F)V
    .registers 13

    .line 110
    const-string v0, "draw start"

    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 114
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 117
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 118
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->muMVPMatrixLoc:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 122
    const-string p1, "glUniformMatrix4fv"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 125
    iget p3, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->muTexMatrixLoc:I

    invoke-static {p3, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 126
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 129
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 130
    const-string p1, "glEnableVertexAttribArray"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 133
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maPositionLoc:I

    iget-object p2, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 134
    invoke-virtual {p2}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 133
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 135
    const-string p2, "glVertexAttribPointer"

    invoke-static {p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 138
    iget p3, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 139
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 142
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 143
    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->texCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 142
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 144
    invoke-static {p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 148
    const-string p1, "glDrawArrays"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 151
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 152
    iget p0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 153
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 154
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method protected getDrawable2d()Lcom/transsion/camera/utils/gles/core/Drawable2d;
    .registers 1

    .line 93
    new-instance p0, Lcom/transsion/camera/utils/gles/Drawable2dFull;

    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/Drawable2dFull;-><init>()V

    return-object p0
.end method

.method protected getLocations()V
    .registers 3

    .line 98
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maPositionLoc:I

    .line 99
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maTextureCoordLoc:I

    .line 101
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->muMVPMatrixLoc:I

    .line 103
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->muTexMatrixLoc:I

    .line 105
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    return-void
.end method
