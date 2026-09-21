.class public Lcom/ss/android/medialib/WaterMarkTextureDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRAW_FUNCTION:I = 0x6

.field protected static final m_fsh:Ljava/lang/String; = "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2;\nuniform float xPos;\nuniform float yPos;\nuniform float bottomPos;\nuniform float rightPos;\nuniform float markAlpha;\nuniform float xAdjust;\nuniform float yAdjust;\nvec4 normalBlend(vec4 c2, vec4 c1)\n{\n   vec4 outputColor;\n   outputColor.r = c1.r * markAlpha + c2.r * c2.a * (1.0 - c1.a);\n   outputColor.g = c1.g * markAlpha + c2.g * c2.a * (1.0 - c1.a);\n   outputColor.b = c1.b * markAlpha + c2.b * c2.a * (1.0 - c1.a);\n   outputColor.a = c1.a + c2.a * (1.0 - c1.a);\n   return outputColor;\n}\nvoid main()\n{\n   highp vec2 cord;\n   cord.x = texCoord.x * xAdjust- (xAdjust - 1.0) * 0.5;\n   cord.y = texCoord.y * yAdjust- (yAdjust - 1.0) * 0.5;\n   vec4 origin;\n   if(cord.x > 0.0 && cord.x < 1.0 && cord.y > 0.0 && cord.y < 1.0)\n   {\n       origin = texture2D(inputImageTexture, cord);\n   } else {\n       origin = vec4(1.0, 1.0, 1.0, 1.0);\n   }\n   vec4 markOverlay;\n   vec2 tmpCoordinate;\n   tmpCoordinate.x = cord.x;\n   tmpCoordinate.y = 1.0 - cord.y;\n   origin.a = origin.a * markAlpha;\n   if( cord.x > xPos && cord.x < bottomPos && cord.y > yPos && cord.y < rightPos )\n   {\n       tmpCoordinate.x = (cord.x - xPos) / (bottomPos - xPos);\n       tmpCoordinate.y = 1.0 - (cord.y - yPos) / (rightPos - yPos);\n       markOverlay = texture2D(inputImageTexture2, tmpCoordinate);\n       markOverlay.a = markOverlay.a * markAlpha;\n       origin = normalBlend(origin, markOverlay);\n   }\n   gl_FragColor = vec4(origin.r, origin.g, origin.b, origin.a);\n}"

.field protected static final m_vsh:Ljava/lang/String; = "attribute highp vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n}"

.field public static final vertices:[F


# instance fields
.field private mBottomLeft:I

.field private mBottomRight:I

.field private mFilterInputTextureUniform:I

.field private mFilterInputTextureUniform2:I

.field private mFlipScaleLoc:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMarkAlpha:I

.field protected mProgram:Lcom/ss/android/medialib/common/ProgramObject;

.field private mRotLoc:I

.field private mVertBuffer:I

.field private mXAdjust:I

.field private mYAdjust:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 80
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->vertices:[F

    return-void

    :array_a
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(FF)Lcom/ss/android/medialib/WaterMarkTextureDrawer;
    .registers 5

    .line 142
    new-instance v0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;

    invoke-direct {v0}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;-><init>()V

    .line 143
    const-string v1, "attribute highp vec2 vPosition;\nvarying vec2 texCoord;\nuniform mat2 rotation;\nuniform vec2 flipScale;\nvoid main()\n{\n   gl_Position = vec4(vPosition, 0.0, 1.0);\n   texCoord = flipScale * (vPosition / 2.0 * rotation) + 0.5;\n}"

    const-string v2, "precision mediump float;\nvarying vec2 texCoord;\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2;\nuniform float xPos;\nuniform float yPos;\nuniform float bottomPos;\nuniform float rightPos;\nuniform float markAlpha;\nuniform float xAdjust;\nuniform float yAdjust;\nvec4 normalBlend(vec4 c2, vec4 c1)\n{\n   vec4 outputColor;\n   outputColor.r = c1.r * markAlpha + c2.r * c2.a * (1.0 - c1.a);\n   outputColor.g = c1.g * markAlpha + c2.g * c2.a * (1.0 - c1.a);\n   outputColor.b = c1.b * markAlpha + c2.b * c2.a * (1.0 - c1.a);\n   outputColor.a = c1.a + c2.a * (1.0 - c1.a);\n   return outputColor;\n}\nvoid main()\n{\n   highp vec2 cord;\n   cord.x = texCoord.x * xAdjust- (xAdjust - 1.0) * 0.5;\n   cord.y = texCoord.y * yAdjust- (yAdjust - 1.0) * 0.5;\n   vec4 origin;\n   if(cord.x > 0.0 && cord.x < 1.0 && cord.y > 0.0 && cord.y < 1.0)\n   {\n       origin = texture2D(inputImageTexture, cord);\n   } else {\n       origin = vec4(1.0, 1.0, 1.0, 1.0);\n   }\n   vec4 markOverlay;\n   vec2 tmpCoordinate;\n   tmpCoordinate.x = cord.x;\n   tmpCoordinate.y = 1.0 - cord.y;\n   origin.a = origin.a * markAlpha;\n   if( cord.x > xPos && cord.x < bottomPos && cord.y > yPos && cord.y < rightPos )\n   {\n       tmpCoordinate.x = (cord.x - xPos) / (bottomPos - xPos);\n       tmpCoordinate.y = 1.0 - (cord.y - yPos) / (rightPos - yPos);\n       markOverlay = texture2D(inputImageTexture2, tmpCoordinate);\n       markOverlay.a = markOverlay.a * markAlpha;\n       origin = normalBlend(origin, markOverlay);\n   }\n   gl_FragColor = vec4(origin.r, origin.g, origin.b, origin.a);\n}"

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->init(Ljava/lang/String;Ljava/lang/String;FF)Z

    move-result p0

    if-nez p0, :cond_1b

    .line 145
    const-string p0, "TextureDrawer"

    const-string p1, "TextureDrawer create failed!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->release()V

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    return-object v0
.end method


# virtual methods
.method public bindVertexBuffer()V
    .registers 2

    const v0, 0x8892

    .line 180
    iget p0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mVertBuffer:I

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public drawTexture(II)V
    .registers 4

    const/16 v0, 0xde1

    .line 160
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->drawTexture(III)V

    return-void
.end method

.method public drawTexture(III)V
    .registers 11

    const v0, 0x84c0

    .line 164
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 165
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 166
    iget p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mFilterInputTextureUniform:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c2

    .line 168
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 169
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 170
    iget p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mFilterInputTextureUniform2:I

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x8892

    .line 172
    iget p2, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mVertBuffer:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 173
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    .line 174
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 175
    iget-object p0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    invoke-virtual {p0}, Lcom/ss/android/medialib/common/ProgramObject;->bind()V

    const/4 p0, 0x6

    const/4 p1, 0x4

    .line 176
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;FF)Z
    .registers 9

    .line 100
    new-instance v0, Lcom/ss/android/medialib/common/ProgramObject;

    invoke-direct {v0}, Lcom/ss/android/medialib/common/ProgramObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    .line 101
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/common/ProgramObject;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_17

    .line 102
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    invoke-virtual {p1}, Lcom/ss/android/medialib/common/ProgramObject;->release()V

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    return p2

    .line 107
    :cond_17
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    invoke-virtual {p1}, Lcom/ss/android/medialib/common/ProgramObject;->bind()V

    .line 109
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mRotLoc:I

    .line 110
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "flipScale"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mFlipScaleLoc:I

    .line 111
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "inputImageTexture"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mFilterInputTextureUniform:I

    .line 112
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "inputImageTexture2"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mFilterInputTextureUniform2:I

    .line 113
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "markAlpha"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mMarkAlpha:I

    .line 114
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "xPos"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mMarginLeft:I

    .line 115
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "yPos"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mMarginRight:I

    .line 116
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "bottomPos"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mBottomLeft:I

    .line 117
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "rightPos"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mBottomRight:I

    .line 118
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "xAdjust"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mXAdjust:I

    .line 119
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "yAdjust"

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/common/ProgramObject;->getUniformLoc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mYAdjust:I

    .line 120
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    const-string v0, "vPosition"

    invoke-virtual {p1, v0, p2}, Lcom/ss/android/medialib/common/ProgramObject;->bindAttribLocation(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 122
    new-array v0, p1, [I

    .line 123
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 124
    aget v0, v0, p2

    iput v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mVertBuffer:I

    const v1, 0x8892

    .line 126
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 127
    sget-object v0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->vertices:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p2, 0x20

    const v0, 0x88e4

    .line 130
    invoke-static {v1, p2, v2, v0}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 p2, 0x0

    .line 131
    invoke-virtual {p0, p2}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setRotation(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 132
    invoke-virtual {p0, p2, p2}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setFlipScale(FF)V

    .line 133
    invoke-virtual {p0, p2}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setAlpha(F)V

    .line 134
    invoke-virtual {p0, p3, p4}, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->setScaleSize(FF)V

    .line 135
    const-string p0, "TextureDrawer"

    const-string p2, "init: success."

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public release()V
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/medialib/common/ProgramObject;->release()V

    .line 154
    iget v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mVertBuffer:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    .line 156
    iput v2, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mVertBuffer:I

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/medialib/common/ProgramObject;->bind()V

    .line 203
    iget p0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mMarkAlpha:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public setFlipScale(FF)V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/medialib/common/ProgramObject;->bind()V

    .line 198
    iget p0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mFlipScaleLoc:I

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    div-float/2addr v0, p2

    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public setMargin(FFFF)V
    .registers 6

    .line 207
    iget-object v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/medialib/common/ProgramObject;->bind()V

    .line 208
    iget v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mMarginLeft:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 209
    iget p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mMarginRight:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 210
    iget p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mBottomLeft:I

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 211
    iget p0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mBottomRight:I

    invoke-static {p0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public setRotation(F)V
    .registers 7

    float-to-double v0, p1

    .line 184
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v1, v0

    const/4 v2, 0x4

    .line 187
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v0, 0x2

    aput v1, v2, v0

    const/4 v0, 0x3

    aput p1, v2, v0

    .line 192
    iget-object p1, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    invoke-virtual {p1}, Lcom/ss/android/medialib/common/ProgramObject;->bind()V

    .line 193
    iget p0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mRotLoc:I

    invoke-static {p0, v4, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    return-void
.end method

.method public setScaleSize(FF)V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mProgram:Lcom/ss/android/medialib/common/ProgramObject;

    invoke-virtual {v0}, Lcom/ss/android/medialib/common/ProgramObject;->bind()V

    .line 216
    iget v0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mXAdjust:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 217
    iget p0, p0, Lcom/ss/android/medialib/WaterMarkTextureDrawer;->mYAdjust:I

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
