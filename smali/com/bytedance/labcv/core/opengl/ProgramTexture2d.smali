.class public Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;
.super Lcom/bytedance/labcv/core/opengl/Program;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = aTextureCoord;\n}\n"


# instance fields
.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muMVPMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    const-string v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/bytedance/labcv/core/opengl/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawFrameOffScreen(III[F)I
    .registers 15

    .line 123
    const-string v0, "draw start"

    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/labcv/core/opengl/Program;->initFrameBufferIfNeed(II)V

    .line 126
    const-string v0, "initFrameBufferIfNeed"

    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 130
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 133
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 135
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 136
    const-string p1, "glBindTexture"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffers:[I

    const/4 v1, 0x0

    aget p1, p1, v1

    const v2, 0x8d40

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 140
    const-string p1, "glBindFramebuffer"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 143
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->muMVPMatrixLoc:I

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 144
    const-string p1, "glUniformMatrix4fv"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 148
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 149
    const-string p1, "glEnableVertexAttribArray"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 152
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    iget-object p4, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 153
    invoke-virtual {p4}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 152
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 154
    const-string p4, "glVertexAttribPointer"

    invoke-static {p4}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 157
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 158
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 161
    iget v4, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 162
    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getTexCoorArrayFB()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 161
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 163
    invoke-static {p4}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 165
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 168
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 169
    const-string p1, "glDrawArrays"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 172
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 173
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 174
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 175
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 176
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 177
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferTextures:[I

    aget p0, p0, v1

    return p0
.end method

.method public drawFrameOffScreen(IIII[F)Z
    .registers 16

    .line 182
    const-string v0, "draw start"

    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p3, p4, p2}, Lcom/bytedance/labcv/core/opengl/Program;->initFrameBufferWithTexture(III)V

    .line 185
    const-string p2, "initFrameBufferIfNeed"

    invoke-static {p2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 188
    iget p2, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 189
    const-string p2, "glUseProgram"

    invoke-static {p2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const p2, 0x84c0

    .line 192
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 194
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 195
    const-string p1, "glBindTexture"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffersOut:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    const v1, 0x8d40

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 199
    const-string p1, "glBindFramebuffer"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 202
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->muMVPMatrixLoc:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, p5, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 203
    const-string p1, "glUniformMatrix4fv"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 207
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 208
    const-string p1, "glEnableVertexAttribArray"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 211
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    iget-object p5, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 212
    invoke-virtual {p5}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 211
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 213
    const-string p5, "glVertexAttribPointer"

    invoke-static {p5}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 216
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 217
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 220
    iget v4, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 221
    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getTexCoorArrayFB()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 220
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 222
    invoke-static {p5}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 224
    invoke-static {v0, v0, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 227
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexCount()I

    move-result p1

    const/4 p3, 0x5

    invoke-static {p3, v0, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 228
    const-string p1, "glDrawArrays"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 231
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 232
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 233
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 234
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 235
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return v2
.end method

.method public drawFrameOnScreen(III[F)V
    .registers 14

    .line 73
    const-string v0, "draw start"

    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 75
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 77
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 78
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 81
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 82
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 85
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->muMVPMatrixLoc:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, p4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 86
    const-string p1, "glUniformMatrix4fv"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 90
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 91
    const-string p1, "glEnableVertexAttribArray"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 94
    iget v2, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    iget-object p4, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 95
    invoke-virtual {p4}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 94
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 96
    const-string p4, "glVertexAttribPointer"

    invoke-static {p4}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 99
    iget v2, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 100
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 103
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 104
    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getTexCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 103
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 105
    invoke-static {p4}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 107
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 111
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 112
    const-string p1, "glDrawArrays"

    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 115
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 116
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 117
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 118
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method protected getDrawable2d()Lcom/bytedance/labcv/core/opengl/Drawable2d;
    .registers 2

    .line 58
    new-instance p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;

    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    invoke-direct {p0, v0}, Lcom/bytedance/labcv/core/opengl/Drawable2d;-><init>(Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;)V

    return-object p0
.end method

.method protected getLocations()V
    .registers 3

    .line 63
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maPositionLoc:I

    .line 64
    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->maTextureCoordLoc:I

    .line 66
    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTexture2d;->muMVPMatrixLoc:I

    .line 68
    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    return-void
.end method

.method public readBuffer(III)Ljava/nio/ByteBuffer;
    .registers 15

    const/4 p0, -0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    return-object v0

    :cond_5
    mul-int p0, p2, p3

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    mul-int/lit8 p0, p0, 0x4

    .line 263
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 p0, 0x0

    .line 265
    invoke-virtual {v6, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v7, 0x1

    .line 266
    new-array v8, v7, [I

    .line 267
    invoke-static {v7, v8, p0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/16 v9, 0xde1

    .line 268
    invoke-static {v9, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    .line 269
    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    .line 271
    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v1, 0x47012f00    # 33071.0f

    .line 273
    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 275
    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 278
    aget v0, v8, p0

    const v10, 0x8d40

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 279
    invoke-static {v10, v0, v9, p1, p0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    .line 281
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 284
    invoke-static {v9, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 285
    invoke-static {v10, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 287
    invoke-static {v7, v8, p0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object v6
.end method
