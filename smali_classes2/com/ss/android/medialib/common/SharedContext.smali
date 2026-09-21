.class public Lcom/ss/android/medialib/common/SharedContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final LOG_TAG:Ljava/lang/String; = "SharedContext"

.field private static mBitsA:I = 0x8

.field private static mBitsB:I = 0x8

.field private static mBitsG:I = 0x8

.field private static mBitsR:I = 0x8

.field private static mGLVersion:I = 0x3


# instance fields
.field private mConfig:Landroid/opengl/EGLConfig;

.field private mContext:Landroid/opengl/EGLContext;

.field private mDisplay:Landroid/opengl/EGLDisplay;

.field private volatile mInitialized:Z

.field private mSurface:Landroid/opengl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mInitialized:Z

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .registers 4

    .line 258
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-eq p0, v0, :cond_25

    .line 259
    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public static create()Lcom/ss/android/medialib/common/SharedContext;
    .registers 4

    .line 46
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-static {v0, v3, v3, v1, v2}, Lcom/ss/android/medialib/common/SharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;

    move-result-object v0

    return-object v0
.end method

.method public static create(II)Lcom/ss/android/medialib/common/SharedContext;
    .registers 5

    .line 50
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/ss/android/medialib/common/SharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/opengl/EGLContext;II)Lcom/ss/android/medialib/common/SharedContext;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ss/android/medialib/common/SharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;
    .registers 11

    .line 68
    new-instance v0, Lcom/ss/android/medialib/common/SharedContext;

    invoke-direct {v0}, Lcom/ss/android/medialib/common/SharedContext;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/common/SharedContext;->initEGL(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    .line 70
    invoke-virtual {v0}, Lcom/ss/android/medialib/common/SharedContext;->release()V

    const/4 p0, 0x0

    return-object p0

    :cond_15
    return-object v0
.end method

.method public static create(Landroid/opengl/EGLContext;ILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;
    .registers 4

    const/16 v0, 0x40

    .line 58
    invoke-static {p0, v0, v0, p1, p2}, Lcom/ss/android/medialib/common/SharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;

    move-result-object p0

    return-object p0
.end method

.method private initEGL(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Z
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p4

    if-nez p1, :cond_9

    .line 118
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    goto :goto_b

    :cond_9
    move-object/from16 v2, p1

    .line 121
    :goto_b
    sget v3, Lcom/ss/android/medialib/common/SharedContext;->mGLVersion:I

    const/16 v4, 0x3098

    const/16 v5, 0x3038

    filled-new-array {v4, v3, v5}, [I

    move-result-object v3

    const/4 v11, 0x1

    .line 126
    new-array v9, v11, [Landroid/opengl/EGLConfig;

    const/4 v14, 0x2

    .line 127
    new-array v6, v14, [I

    const/4 v7, 0x5

    .line 129
    new-array v15, v7, [I

    const/16 v8, 0x3057

    const/4 v10, 0x0

    aput v8, v15, v10

    const/4 v8, 0x1

    aput p2, v15, v8

    const/16 v12, 0x3056

    aput v12, v15, v14

    const/4 v12, 0x3

    aput p3, v15, v12

    const/4 v13, 0x4

    aput v5, v15, v13

    move/from16 p1, v5

    .line 135
    invoke-static {v10}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v5

    iput-object v5, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    move/from16 v16, v7

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v5, v7, :cond_56

    .line 136
    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "eglGetDisplay() returned error 0x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 140
    :cond_56
    invoke-static {v5, v6, v10, v6, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v5

    if-nez v5, :cond_74

    .line 141
    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "eglInitialize() returned error 0x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 146
    :cond_74
    sget v5, Lcom/ss/android/medialib/common/SharedContext;->mGLVersion:I

    if-lt v5, v12, :cond_7f

    aget v5, v6, v8

    if-lt v5, v13, :cond_7f

    const/16 v5, 0x40

    goto :goto_80

    :cond_7f
    move v5, v13

    :goto_80
    const/16 v7, 0xd

    .line 152
    new-array v7, v7, [I

    const/16 v17, 0x3040

    aput v17, v7, v10

    aput v5, v7, v8

    const/16 v5, 0x3024

    aput v5, v7, v14

    const/16 v5, 0x8

    aput v5, v7, v12

    const/16 v12, 0x3023

    aput v12, v7, v13

    aput v5, v7, v16

    const/4 v12, 0x6

    const/16 v16, 0x3022

    aput v16, v7, v12

    const/4 v12, 0x7

    aput v5, v7, v12

    const/16 v12, 0x3021

    aput v12, v7, v5

    const/16 v12, 0x9

    aput v5, v7, v12

    const/16 v5, 0x3033

    const/16 v12, 0xa

    aput v5, v7, v12

    const/16 v5, 0xb

    aput v1, v7, v5

    const/16 v16, 0xc

    aput p1, v7, v16

    move/from16 p2, v5

    const/16 v5, 0x3142

    if-ne v1, v5, :cond_c0

    .line 161
    aput v5, v7, v12

    .line 162
    aput v8, v7, p2

    .line 165
    :cond_c0
    sget-object v12, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    aget v16, v6, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aget v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v10, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v10, "eglInitialize - major: %d, minor: %d"

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v12

    .line 167
    new-array v12, v8, [I

    move-object v10, v6

    .line 168
    iget-object v6, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move/from16 v18, v13

    const/4 v13, 0x0

    move/from16 v19, v8

    const/4 v8, 0x0

    move-object/from16 v4, v16

    const/4 v5, 0x0

    invoke-static/range {v6 .. v13}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v6

    if-nez v6, :cond_109

    .line 169
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "eglChooseConfig() returned error 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 173
    :cond_109
    aget v6, v12, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v7, :cond_116

    const-string v7, "NO"

    goto :goto_118

    :cond_116
    const-string v7, "YES"

    :goto_118
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Config num: %d, has sharedContext: %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    aget-object v6, v9, v5

    iput-object v6, v0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    .line 177
    iget-object v7, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v7, v6, v2, v3, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    .line 178
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v3, :cond_13b

    .line 179
    const-string v0, "eglCreateContext Failed!"

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_13b
    if-eq v1, v14, :cond_160

    const/4 v2, 0x4

    if-eq v1, v2, :cond_153

    const/16 v2, 0x3142

    if-eq v1, v2, :cond_14f

    .line 197
    iget-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, v15, v5}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    goto :goto_16a

    .line 189
    :cond_14f
    aput p1, v15, v5

    .line 190
    aput p1, v15, v14

    .line 192
    :cond_153
    iget-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    move-object/from16 v3, p5

    invoke-static {v1, v2, v3, v15, v5}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    goto :goto_16a

    .line 185
    :cond_160
    iget-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, v5, v15, v5}, Landroid/opengl/EGL14;->eglCreatePixmapSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    .line 200
    :goto_16a
    iget-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v1, v2, :cond_17b

    .line 201
    const-string v1, "eglCreateSurface"

    invoke-direct {v0, v1}, Lcom/ss/android/medialib/common/SharedContext;->checkEglError(Ljava/lang/String;)V

    .line 202
    const-string v0, "eglCreateSurface Failed!"

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 206
    :cond_17b
    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v1, v1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_19e

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_19e
    const/4 v1, 0x1

    .line 211
    new-array v2, v1, [I

    .line 212
    iget-object v3, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, v0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    const/16 v7, 0x3098

    invoke-static {v3, v6, v7, v2, v5}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EGLContext created, client version "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput-boolean v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mInitialized:Z

    return v1
.end method

.method public static setContextColorBits(IIII)V
    .registers 4

    .line 35
    sput p0, Lcom/ss/android/medialib/common/SharedContext;->mBitsR:I

    .line 36
    sput p1, Lcom/ss/android/medialib/common/SharedContext;->mBitsG:I

    .line 37
    sput p2, Lcom/ss/android/medialib/common/SharedContext;->mBitsB:I

    .line 38
    sput p3, Lcom/ss/android/medialib/common/SharedContext;->mBitsA:I

    return-void
.end method

.method public static setGLVersion(I)V
    .registers 1

    .line 42
    sput p0, Lcom/ss/android/medialib/common/SharedContext;->mGLVersion:I

    return-void
.end method


# virtual methods
.method public getClientVersion()Ljava/lang/String;
    .registers 5

    .line 231
    invoke-virtual {p0}, Lcom/ss/android/medialib/common/SharedContext;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 232
    const-string p0, "Not initialized"

    return-object p0

    :cond_9
    const/4 v0, 0x1

    .line 234
    new-array v0, v0, [I

    .line 235
    iget-object v1, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    const/16 v2, 0x3098

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v0, v3}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 236
    sget-object p0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EGLContext created, client version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string p0, ""

    return-object p0
.end method

.method public getConfigAttrib(I)Ljava/lang/String;
    .registers 5

    .line 242
    invoke-virtual {p0}, Lcom/ss/android/medialib/common/SharedContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_b

    goto :goto_1b

    :cond_b
    const/4 v1, 0x1

    .line 245
    new-array v1, v1, [I

    .line 246
    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 247
    aget p0, v1, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :cond_1b
    :goto_1b
    const-string p0, "Not initialized"

    return-object p0
.end method

.method public getContext()Landroid/opengl/EGLContext;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getDisplay()Landroid/opengl/EGLDisplay;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    return-object p0
.end method

.method public getSurface()Landroid/opengl/EGLSurface;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method public isInitialized()Z
    .registers 3

    .line 251
    iget-boolean v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mInitialized:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_12

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public makeCurrent()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_26

    .line 108
    sget-object p0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public queryString(I)Ljava/lang/String;
    .registers 3

    .line 220
    invoke-virtual {p0}, Lcom/ss/android/medialib/common/SharedContext;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 221
    const-string p0, "Not initialized"

    return-object p0

    .line 224
    :cond_9
    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .registers 4

    .line 92
    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#### CGESharedGLContext Destroying context... ####"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_27

    .line 94
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 95
    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 96
    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 97
    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 100
    :cond_27
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    .line 101
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    .line 102
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mInitialized:Z

    return-void
.end method

.method public swapBuffers()Z
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method
