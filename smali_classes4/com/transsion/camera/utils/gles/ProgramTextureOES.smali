.class public Lcom/transsion/camera/utils/gles/ProgramTextureOES;
.super Lcom/transsion/camera/utils/gles/core/Program;
.source "SourceFile"


# instance fields
.field private mTextureDbgColorLoc:I

.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muMVPMatrixLoc:I

.field private muTexMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 70
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uTexDbgColor;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n    if (uTexDbgColor > 0.0) {\n        gl_FragColor.rgb = vec3(uTexDbgColor);\n    }\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/gles/core/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawFrame(I[F[F)V
    .registers 13

    .line 94
    const-string v0, "draw start"

    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 98
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 101
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 102
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 105
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muMVPMatrixLoc:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 106
    const-string p1, "glUniformMatrix4fv"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 109
    iget p3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muTexMatrixLoc:I

    invoke-static {p3, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 110
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 112
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->mTextureDbgColorLoc:I

    sget p2, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevColor:F

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 113
    const-string p1, "mTextureDbgColorLoc-glUniform1f"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 116
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 117
    const-string p1, "glEnableVertexAttribArray"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 120
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    iget-object p2, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 121
    invoke-virtual {p2}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 120
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 122
    const-string p2, "glVertexAttribPointer"

    invoke-static {p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 125
    iget p3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 126
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 129
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 130
    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->texCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 129
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 131
    invoke-static {p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 135
    const-string p1, "glDrawArrays"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 138
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 139
    iget p0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 140
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 141
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public drawFrameOffScreen(III[F)I
    .registers 15

    .line 146
    const-string v0, "draw start"

    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 147
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 148
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/utils/gles/core/Program;->initFrameBufferIfNeed(II)V

    .line 149
    const-string v2, "initFrameBufferIfNeed"

    invoke-static {v2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 150
    iget v2, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 151
    const-string v2, "glUseProgram"

    invoke-static {v2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v2, 0x84c0

    .line 152
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    .line 153
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 154
    const-string p1, "glBindTexture"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    aget p1, p1, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 156
    const-string p1, "glBindFramebuffer"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 157
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muMVPMatrixLoc:I

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 158
    const-string p1, "glUniformMatrix4fv"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 159
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->mTextureDbgColorLoc:I

    sget p4, Lcom/transsion/camera/utils/FeatureSupport;->sDbgPrevColor:F

    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 160
    const-string p1, "mTextureDbgColorLoc-glUniform1f"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 161
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 162
    const-string p1, "glEnableVertexAttribArray"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 163
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    iget-object p4, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p4}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 164
    const-string p4, "glVertexAttribPointer"

    invoke-static {p4}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 165
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 166
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 167
    iget v4, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->texCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 168
    invoke-static {p4}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 169
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 171
    const-string p1, "glDrawArrays"

    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 172
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 173
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 174
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 175
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 176
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    aget p0, p0, v1

    return p0
.end method

.method protected getDrawable2d()Lcom/transsion/camera/utils/gles/core/Drawable2d;
    .registers 1

    .line 75
    new-instance p0, Lcom/transsion/camera/utils/gles/Drawable2dFull;

    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/Drawable2dFull;-><init>()V

    return-object p0
.end method

.method protected getLocations()V
    .registers 3

    .line 80
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    .line 81
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    .line 83
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muMVPMatrixLoc:I

    .line 85
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muTexMatrixLoc:I

    .line 87
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "uTexDbgColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->mTextureDbgColorLoc:I

    .line 89
    iget p0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muTexMatrixLoc:I

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    return-void
.end method
