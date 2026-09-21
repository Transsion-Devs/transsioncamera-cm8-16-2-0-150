.class public Lcom/bef/byteeffect/OpenGLUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation


# static fields
.field private static final FAIL_RES:Ljava/lang/String;

.field private static final HEIGHT:Ljava/lang/String; = "\"height\""

.field public static final NOT_INIT:I = -0x1

.field public static final NO_TEXTURE:I = -0x1

.field public static final ON_DRAWN:I = 0x1

.field private static final RES:Ljava/lang/String; = "\"res\""

.field private static final TEXTURE_ID:Ljava/lang/String; = "\"textureId\""

.field private static final WIDTH:Ljava/lang/String; = "\"width\""


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\"res\""

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{%s: false}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bef/byteeffect/OpenGLUtils;->FAIL_RES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2Bitmap([BIILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 40
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const p2, -0xffff01

    .line 41
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 42
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 44
    invoke-static {p1, p3}, Lcom/bef/byteeffect/OpenGLUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .registers 3

    .line 245
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 247
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    const-string v0, "GLES"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getExternalOESTextureID()I
    .registers 5

    const/4 v0, 0x1

    .line 208
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 210
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 211
    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    .line 212
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 214
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x812f

    .line 216
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 218
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 221
    aget v0, v1, v2

    return v0
.end method

.method public static initEffectTexture(II[II)I
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 228
    aget v0, p2, v1

    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 229
    invoke-static {p3, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    .line 231
    invoke-static {p3, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x47012f00    # 33071.0f

    .line 233
    invoke-static {p3, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 235
    invoke-static {p3, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v10, 0x1401

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    move v6, p0

    move v7, p1

    move v3, p3

    .line 237
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 239
    aget p0, p2, v1

    return p0
.end method

.method static loadBitmap(Ljava/io/FileDescriptor;JJ)Landroid/graphics/Bitmap;
    .registers 11
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 90
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 91
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 92
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p0

    .line 94
    :try_start_f
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    .line 96
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_17
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 97
    throw p1
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    const/4 v0, 0x0

    .line 66
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_18
    .catchall {:try_start_1 .. :try_end_b} :catchall_16

    .line 67
    :try_start_b
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_20
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 75
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    return-object p0

    :catchall_13
    move-exception p0

    move-object v0, v1

    goto :goto_1a

    :catchall_16
    move-exception p0

    goto :goto_1a

    :catch_18
    move-object v1, v0

    goto :goto_20

    :goto_1a
    if-eqz v0, :cond_1f

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1f

    .line 80
    :catch_1f
    :cond_1f
    throw p0

    :catch_20
    :goto_20
    if-eqz v1, :cond_25

    .line 75
    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return-object v0
.end method

.method public static loadBitmap([BIIZ)Landroid/graphics/Bitmap;
    .registers 5
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    iput-boolean p3, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 106
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 108
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, p2, :cond_1a

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p2, p1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1a
    return-object p0
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x1

    .line 165
    new-array v0, v0, [I

    const v1, 0x8b31

    .line 166
    invoke-static {p0, v1}, Lcom/bef/byteeffect/OpenGLUtils;->loadShader(Ljava/lang/String;I)I

    move-result p0

    .line 167
    const-string v1, "Load Program"

    const/4 v2, 0x0

    if-nez p0, :cond_15

    .line 168
    const-string p0, "Vertex Shader Failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_15
    const v3, 0x8b30

    .line 171
    invoke-static {p1, v3}, Lcom/bef/byteeffect/OpenGLUtils;->loadShader(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_24

    .line 173
    const-string p0, "Fragment Shader Failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 177
    :cond_24
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 179
    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 180
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 182
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v4, 0x8b82

    .line 184
    invoke-static {v3, v4, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 185
    aget v0, v0, v2

    if-gtz v0, :cond_41

    .line 186
    const-string p0, "Linking Failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 189
    :cond_41
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 190
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3
.end method

.method public static loadShader(ILjava/lang/String;)I
    .registers 2

    .line 254
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 255
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 256
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p0
.end method

.method private static loadShader(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x1

    .line 195
    new-array v0, v0, [I

    .line 196
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 197
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 198
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const p0, 0x8b81

    const/4 v1, 0x0

    .line 199
    invoke-static {p1, p0, v0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 200
    aget p0, v0, v1

    if-nez p0, :cond_33

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Compilation\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Load Shader Failed"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_33
    return p1
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)I
    .registers 3

    const/4 v0, 0x0

    .line 131
    invoke-static {p0, p1, v0}, Lcom/bef/byteeffect/OpenGLUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result p0

    return p0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;IZ)I
    .registers 8

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    .line 137
    new-array v2, v1, [I

    const/16 v3, 0xde1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_32

    .line 139
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 140
    aget p1, v2, v4

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2800

    const v0, 0x46180400    # 9729.0f

    .line 141
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    .line 143
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v0, 0x47012f00    # 33071.0f

    .line 145
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 147
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 150
    invoke-static {v3, v4, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_3a

    .line 152
    :cond_32
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 153
    invoke-static {v3, v4, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 154
    aput p1, v2, v4

    :goto_3a
    if-eqz p2, :cond_3f

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    :cond_3f
    aget p0, v2, v4

    return p0
.end method

.method public static loadTexture(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 118
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_9

    .line 121
    sget-object p0, Lcom/bef/byteeffect/OpenGLUtils;->FAIL_RES:Ljava/lang/String;

    return-object p0

    :cond_9
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 124
    invoke-static {p0, v0, v1}, Lcom/bef/byteeffect/OpenGLUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    .line 126
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "\"textureId\""

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v3, "\"res\""

    const-string v4, "\"width\""

    const-string v6, "\"height\""

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 126
    const-string v0, "{%s: true, %s: %d, %s: %d, %s: %d}"

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 2

    return-void
.end method
