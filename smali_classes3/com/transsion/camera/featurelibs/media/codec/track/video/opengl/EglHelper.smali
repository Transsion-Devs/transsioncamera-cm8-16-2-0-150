.class public final Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mGlVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EglHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .registers 13

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mGlVersion:I

    .line 52
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 53
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 64
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_b5

    if-nez p1, :cond_19

    .line 69
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :cond_19
    const/4 v0, 0x0

    .line 72
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 73
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_ac

    const/4 v3, 0x2

    .line 76
    new-array v4, v3, [I

    const/4 v5, 0x1

    .line 77
    invoke-static {v2, v4, v0, v4, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_a1

    and-int/lit8 v1, p2, 0x2

    const/16 v2, 0x3038

    const/16 v4, 0x3098

    if-eqz v1, :cond_55

    const/4 v1, 0x3

    .line 85
    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v6

    if-eqz v6, :cond_55

    .line 87
    filled-new-array {v4, v1, v2}, [I

    move-result-object v7

    .line 91
    iget-object v8, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v8, v6, p1, v7, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v7

    .line 94
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v8

    const/16 v9, 0x3000

    if-ne v8, v9, :cond_55

    .line 96
    iput-object v6, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 97
    iput-object v7, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 98
    iput v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mGlVersion:I

    .line 103
    :cond_55
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v1, v6, :cond_7f

    .line 105
    invoke-direct {p0, p2, v3}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object p2

    if-eqz p2, :cond_77

    .line 109
    filled-new-array {v4, v3, v2}, [I

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v2, p2, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    .line 115
    const-string v1, "eglCreateContext"

    invoke-direct {p0, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->checkEglError(Ljava/lang/String;)V

    .line 116
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 118
    iput v3, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mGlVersion:I

    goto :goto_7f

    .line 107
    :cond_77
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to find a suitable EGLConfig"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_7f
    :goto_7f
    new-array p1, v5, [I

    .line 123
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {p2, p0, v4, p1, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 125
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EGLContext created, client version "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_a1
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 79
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unable to initialize EGL14"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_ac
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unable to get EGL14 display"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_b5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EGL already set up"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkEglError(Ljava/lang/String;)V
    .registers 5

    .line 358
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-eq p0, v0, :cond_46

    const/16 v0, 0x3006

    .line 359
    const-string v1, ": EGL error: 0x"

    if-ne p0, v0, :cond_2a

    .line 360
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 362
    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    return-void
.end method

.method private getConfig(II)Landroid/opengl/EGLConfig;
    .registers 16

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-lt p2, v1, :cond_7

    const/16 v2, 0x44

    goto :goto_8

    :cond_7
    move v2, v0

    :goto_8
    const/16 v3, 0xd

    .line 143
    new-array v5, v3, [I

    const/16 v3, 0x3024

    const/4 v12, 0x0

    aput v3, v5, v12

    const/4 v3, 0x1

    const/16 v4, 0x8

    aput v4, v5, v3

    const/4 v6, 0x2

    const/16 v7, 0x3023

    aput v7, v5, v6

    aput v4, v5, v1

    const/16 v1, 0x3022

    aput v1, v5, v0

    const/4 v0, 0x5

    aput v4, v5, v0

    const/4 v0, 0x6

    const/16 v1, 0x3021

    aput v1, v5, v0

    const/4 v0, 0x7

    aput v4, v5, v0

    const/16 v0, 0x3040

    aput v0, v5, v4

    const/16 v0, 0x9

    aput v2, v5, v0

    const/16 v0, 0xa

    const/16 v1, 0x3038

    aput v1, v5, v0

    const/16 v2, 0xb

    aput v12, v5, v2

    const/16 v4, 0xc

    aput v1, v5, v4

    and-int/2addr p1, v3

    if-eqz p1, :cond_4b

    const/16 p1, 0x3142

    .line 155
    aput p1, v5, v0

    .line 156
    aput v3, v5, v2

    :cond_4b
    const/4 v9, 0x1

    .line 158
    new-array v7, v9, [Landroid/opengl/EGLConfig;

    .line 159
    new-array v10, v3, [I

    .line 160
    iget-object v4, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    if-nez p0, :cond_79

    .line 162
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to find RGB8888 / "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " EGLConfig"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_79
    aget-object p0, v7, v12

    return-object p0
.end method


# virtual methods
.method public createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .registers 6

    .line 220
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_20

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_9

    goto :goto_20

    .line 221
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    const/16 v0, 0x3038

    .line 225
    filled-new-array {v0}, [I

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLConfig:Landroid/opengl/EGLConfig;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    .line 230
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_37

    return-object p1

    .line 232
    :cond_37
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "surface was null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 3

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_13

    .line 198
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WARNING: EglHelper was not explicitly released -- state may be leaked"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->release()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_17

    .line 202
    :cond_13
    :goto_13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_17
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 203
    throw v0
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_d

    .line 261
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public release()V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_1c

    .line 178
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 181
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 185
    :cond_1c
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 186
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLConfig:Landroid/opengl/EGLConfig;

    return-void
.end method

.method public releaseSurface(Landroid/opengl/EGLSurface;)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .registers 4

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)Z
    .registers 2

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method
