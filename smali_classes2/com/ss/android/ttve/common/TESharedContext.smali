.class public Lcom/ss/android/ttve/common/TESharedContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final LOG_TAG:Ljava/lang/String; = "TESharedContext"

.field private static mBitsA:I = 0x8

.field private static mBitsB:I = 0x8

.field private static mBitsG:I = 0x8

.field private static mBitsR:I = 0x8


# instance fields
.field private mConfig:Landroid/opengl/EGLConfig;

.field private mContext:Landroid/opengl/EGLContext;

.field private mDisplay:Landroid/opengl/EGLDisplay;

.field private mSurface:Landroid/opengl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .registers 4

    .line 305
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-eq p0, v0, :cond_2e

    .line 306
    sget-object v0, Lcom/ss/android/ttve/common/TESharedContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3006

    if-ne p0, p1, :cond_2e

    .line 309
    const-string p0, "gl error EGL_BAD_CONTEXT"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void
.end method

.method public static create()Lcom/ss/android/ttve/common/TESharedContext;
    .registers 4

    .line 43
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-static {v0, v3, v3, v1, v2}, Lcom/ss/android/ttve/common/TESharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/ttve/common/TESharedContext;

    move-result-object v0

    return-object v0
.end method

.method public static create(II)Lcom/ss/android/ttve/common/TESharedContext;
    .registers 5

    .line 47
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/ss/android/ttve/common/TESharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/ttve/common/TESharedContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/opengl/EGLContext;II)Lcom/ss/android/ttve/common/TESharedContext;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ss/android/ttve/common/TESharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/ttve/common/TESharedContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/ttve/common/TESharedContext;
    .registers 11

    .line 65
    new-instance v0, Lcom/ss/android/ttve/common/TESharedContext;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TESharedContext;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/common/TESharedContext;->initEGL(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    .line 67
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESharedContext;->release()V

    const/4 p0, 0x0

    return-object p0

    :cond_15
    return-object v0
.end method

.method public static create(Landroid/opengl/EGLContext;ILjava/lang/Object;)Lcom/ss/android/ttve/common/TESharedContext;
    .registers 4

    const/16 v0, 0x40

    .line 55
    invoke-static {p0, v0, v0, p1, p2}, Lcom/ss/android/ttve/common/TESharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/ttve/common/TESharedContext;

    move-result-object p0

    return-object p0
.end method

.method public static createReuseGLContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I)Lcom/ss/android/ttve/common/TESharedContext;
    .registers 13

    .line 74
    new-instance v0, Lcom/ss/android/ttve/common/TESharedContext;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TESharedContext;-><init>()V

    .line 75
    iput-object p0, v0, Lcom/ss/android/ttve/common/TESharedContext;->mContext:Landroid/opengl/EGLContext;

    .line 76
    iput-object p1, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    .line 77
    iput-object p2, v0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    const/16 p0, 0xd

    .line 79
    new-array v2, p0, [I

    const/16 p0, 0x3040

    const/4 p2, 0x0

    aput p0, v2, p2

    const/4 p0, 0x1

    const/4 v1, 0x4

    aput v1, v2, p0

    const/4 v3, 0x2

    const/16 v4, 0x3024

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lcom/ss/android/ttve/common/TESharedContext;->mBitsR:I

    aput v4, v2, v3

    const/16 v3, 0x3023

    aput v3, v2, v1

    const/4 v1, 0x5

    sget v3, Lcom/ss/android/ttve/common/TESharedContext;->mBitsG:I

    aput v3, v2, v1

    const/4 v1, 0x6

    const/16 v3, 0x3022

    aput v3, v2, v1

    const/4 v1, 0x7

    sget v3, Lcom/ss/android/ttve/common/TESharedContext;->mBitsB:I

    aput v3, v2, v1

    const/16 v1, 0x8

    const/16 v3, 0x3021

    aput v3, v2, v1

    const/16 v1, 0x9

    sget v3, Lcom/ss/android/ttve/common/TESharedContext;->mBitsA:I

    aput v3, v2, v1

    const/16 v1, 0x3033

    const/16 v3, 0xa

    aput v1, v2, v3

    const/16 v1, 0xb

    aput p3, v2, v1

    const/16 v4, 0xc

    const/16 v5, 0x3038

    aput v5, v2, v4

    const/16 v4, 0x3142

    if-ne p3, v4, :cond_59

    .line 88
    aput v4, v2, v3

    .line 89
    aput p0, v2, v1

    :cond_59
    const/4 v6, 0x1

    .line 92
    new-array v4, v6, [Landroid/opengl/EGLConfig;

    .line 93
    new-array v7, p0, [I

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 94
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 96
    aget-object p0, v4, p2

    iput-object p0, v0, Lcom/ss/android/ttve/common/TESharedContext;->mConfig:Landroid/opengl/EGLConfig;

    return-object v0
.end method

.method private initEGL(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Z
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p4

    if-nez p1, :cond_9

    .line 201
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    goto :goto_b

    :cond_9
    move-object/from16 v2, p1

    :goto_b
    const/4 v3, 0x3

    .line 204
    new-array v4, v3, [I

    const/4 v5, 0x0

    const/16 v6, 0x3098

    aput v6, v4, v5

    const/4 v7, 0x1

    const/4 v8, 0x2

    aput v8, v4, v7

    const/16 v9, 0x3038

    aput v9, v4, v8

    const/16 v10, 0xd

    .line 209
    new-array v12, v10, [I

    const/16 v10, 0x3040

    aput v10, v12, v5

    const/4 v10, 0x4

    aput v10, v12, v7

    const/16 v11, 0x3024

    aput v11, v12, v8

    sget v11, Lcom/ss/android/ttve/common/TESharedContext;->mBitsR:I

    aput v11, v12, v3

    const/16 v11, 0x3023

    aput v11, v12, v10

    sget v11, Lcom/ss/android/ttve/common/TESharedContext;->mBitsG:I

    const/4 v13, 0x5

    aput v11, v12, v13

    const/4 v11, 0x6

    const/16 v14, 0x3022

    aput v14, v12, v11

    const/4 v11, 0x7

    sget v14, Lcom/ss/android/ttve/common/TESharedContext;->mBitsB:I

    aput v14, v12, v11

    const/16 v11, 0x8

    const/16 v14, 0x3021

    aput v14, v12, v11

    const/16 v11, 0x9

    sget v14, Lcom/ss/android/ttve/common/TESharedContext;->mBitsA:I

    aput v14, v12, v11

    const/16 v11, 0x3033

    const/16 v14, 0xa

    aput v11, v12, v14

    const/16 v11, 0xb

    aput v1, v12, v11

    const/16 v15, 0xc

    aput v9, v12, v15

    const/16 v15, 0x3142

    if-ne v1, v15, :cond_63

    .line 218
    aput v15, v12, v14

    .line 219
    aput v7, v12, v11

    :cond_63
    const/4 v11, 0x1

    .line 222
    new-array v14, v11, [Landroid/opengl/EGLConfig;

    move/from16 p1, v3

    .line 223
    new-array v3, v7, [I

    move/from16 v19, v9

    .line 226
    filled-new-array {v5, v7}, [I

    move-result-object v9

    .line 228
    new-array v13, v13, [I

    const/16 v16, 0x3057

    aput v16, v13, v5

    aput p2, v13, v7

    const/16 v16, 0x3056

    aput v16, v13, v8

    aput p3, v13, p1

    aput v19, v13, v10

    .line 234
    invoke-static {v5}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v11

    iput-object v11, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    sget-object v15, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v11, v15, :cond_90

    .line 235
    const-string v1, "eglGetDisplay"

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/common/TESharedContext;->checkEglError(Ljava/lang/String;)V

    return v5

    .line 239
    :cond_90
    new-array v11, v8, [I

    .line 240
    sget-object v15, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-virtual {v2, v15}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a6

    .line 241
    iget-object v15, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v15, v2, v6, v11, v5}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    move-result v15

    if-eqz v15, :cond_a6

    .line 242
    aget v11, v11, v5

    aput v11, v4, v7

    .line 245
    :cond_a6
    iget-object v11, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v11, v9, v5, v9, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v11

    if-nez v11, :cond_b4

    .line 246
    const-string v1, "eglInitialize"

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/common/TESharedContext;->checkEglError(Ljava/lang/String;)V

    return v5

    .line 250
    :cond_b4
    sget-object v11, Lcom/ss/android/ttve/common/TESharedContext;->LOG_TAG:Ljava/lang/String;

    aget v15, v9, v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aget v9, v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v15, v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v15, "eglInitialize - major: %d, minor: %d"

    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 252
    iget-object v11, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v6, v17

    move-object/from16 v17, v3

    move-object v3, v6

    const/16 v6, 0x3142

    const/16 v16, 0x1

    invoke-static/range {v11 .. v18}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v11

    if-nez v11, :cond_ed

    .line 253
    const-string v1, "eglChooseConfig"

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/common/TESharedContext;->checkEglError(Ljava/lang/String;)V

    return v5

    .line 257
    :cond_ed
    aget v11, v17, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v12, :cond_fa

    const-string v12, "NO"

    goto :goto_fc

    :cond_fa
    const-string v12, "YES"

    :goto_fc
    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Config num: %d, has sharedContext: %s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    aget-object v11, v14, v5

    iput-object v11, v0, Lcom/ss/android/ttve/common/TESharedContext;->mConfig:Landroid/opengl/EGLConfig;

    .line 261
    iget-object v12, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v12, v11, v2, v4, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/android/ttve/common/TESharedContext;->mContext:Landroid/opengl/EGLContext;

    .line 263
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v4, :cond_11f

    .line 264
    const-string v1, "eglCreateContext"

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/common/TESharedContext;->checkEglError(Ljava/lang/String;)V

    return v5

    :cond_11f
    if-eq v1, v8, :cond_141

    if-eq v1, v10, :cond_134

    if-eq v1, v6, :cond_130

    .line 282
    iget-object v1, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/ss/android/ttve/common/TESharedContext;->mConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, v3, v5}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    goto :goto_14b

    .line 274
    :cond_130
    aput v19, v3, v5

    .line 275
    aput v19, v3, v8

    .line 277
    :cond_134
    iget-object v1, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/ss/android/ttve/common/TESharedContext;->mConfig:Landroid/opengl/EGLConfig;

    move-object/from16 v4, p5

    invoke-static {v1, v2, v4, v3, v5}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    goto :goto_14b

    .line 270
    :cond_141
    iget-object v1, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/ss/android/ttve/common/TESharedContext;->mConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, v5, v3, v5}, Landroid/opengl/EGL14;->eglCreatePixmapSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    .line 287
    :goto_14b
    iget-object v1, v0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v1, v2, :cond_157

    .line 288
    const-string v1, "eglCreateSurface"

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/common/TESharedContext;->checkEglError(Ljava/lang/String;)V

    return v5

    .line 292
    :cond_157
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESharedContext;->makeCurrent()Z

    move-result v1

    if-nez v1, :cond_15e

    return v5

    .line 296
    :cond_15e
    new-array v1, v7, [I

    .line 297
    iget-object v2, v0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, v0, Lcom/ss/android/ttve/common/TESharedContext;->mContext:Landroid/opengl/EGLContext;

    const/16 v3, 0x3098

    invoke-static {v2, v0, v3, v1, v5}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EGLContext created, client version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public static setContextColorBits(IIII)V
    .registers 4

    .line 36
    sput p0, Lcom/ss/android/ttve/common/TESharedContext;->mBitsR:I

    .line 37
    sput p1, Lcom/ss/android/ttve/common/TESharedContext;->mBitsG:I

    .line 38
    sput p2, Lcom/ss/android/ttve/common/TESharedContext;->mBitsB:I

    .line 39
    sput p3, Lcom/ss/android/ttve/common/TESharedContext;->mBitsA:I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/opengl/EGLContext;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mContext:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getDisplay()Landroid/opengl/EGLDisplay;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    return-object p0
.end method

.method public getSurface()Landroid/opengl/EGLSurface;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method public makeCurrent()Z
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/ss/android/ttve/common/TESharedContext;->mContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 136
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/common/TESharedContext;->checkEglError(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public makeNoCurrent()V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 192
    const-string v0, "makeNoCurrent"

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/common/TESharedContext;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 4

    .line 115
    sget-object v0, Lcom/ss/android/ttve/common/TESharedContext;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#### CGESharedGLContext Destroying context... ####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_27

    .line 117
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 118
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 119
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 120
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 123
    :cond_27
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    .line 124
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    .line 125
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method public releaseSurface()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    if-eqz p0, :cond_b

    .line 130
    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    :cond_b
    return-void
.end method

.method public setPresentationTime(J)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 186
    const-string p1, "eglPresentationTimeANDROID"

    invoke-direct {p0, p1}, Lcom/ss/android/ttve/common/TESharedContext;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public swapBuffers()Z
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method

.method public updateSurface(IIILjava/lang/Object;)Z
    .registers 8

    .line 144
    iget-object v0, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_b

    .line 145
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    :cond_b
    const/4 v0, 0x5

    .line 148
    new-array v0, v0, [I

    const/16 v1, 0x3057

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/16 p1, 0x3056

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v0, p1

    if-eq p3, v1, :cond_45

    if-eq p3, p1, :cond_3a

    const/16 p1, 0x3142

    if-eq p3, p1, :cond_36

    .line 167
    iget-object p1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/ss/android/ttve/common/TESharedContext;->mConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    goto :goto_4f

    .line 159
    :cond_36
    aput p2, v0, v2

    .line 160
    aput p2, v0, v1

    .line 162
    :cond_3a
    iget-object p1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/ss/android/ttve/common/TESharedContext;->mConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, p2, p4, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    goto :goto_4f

    .line 155
    :cond_45
    iget-object p1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/ss/android/ttve/common/TESharedContext;->mConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, p2, v2, v0, v2}, Landroid/opengl/EGL14;->eglCreatePixmapSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    .line 172
    :goto_4f
    iget-object p1, p0, Lcom/ss/android/ttve/common/TESharedContext;->mSurface:Landroid/opengl/EGLSurface;

    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, p2, :cond_5b

    .line 173
    const-string p1, "eglCreateSurface"

    invoke-direct {p0, p1}, Lcom/ss/android/ttve/common/TESharedContext;->checkEglError(Ljava/lang/String;)V

    return v2

    .line 177
    :cond_5b
    invoke-virtual {p0}, Lcom/ss/android/ttve/common/TESharedContext;->makeCurrent()Z

    move-result p0

    return p0
.end method
