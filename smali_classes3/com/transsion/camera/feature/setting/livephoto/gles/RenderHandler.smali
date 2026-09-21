.class public final Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RenderHandler"

.field private static mEgl_type:I = -0x1


# instance fields
.field private mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

.field private mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

.field private mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

.field private final mLock:Ljava/lang/Object;

.field private mNeedMirror:Z

.field private mNeedReleaseSurface:Z

.field private mRequestDraw:I

.field private mRequestRelease:Z

.field private mRequestSetEglContext:Z

.field private mShard_context:Landroid/opengl/EGLContext;

.field private mSurface:Landroid/view/Surface;

.field private mTexId:I

.field private mtx:[F

.field private mvp:[F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 26
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mtx:[F

    .line 27
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mvp:[F

    return-void
.end method

.method public static createHandler()Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;
    .registers 4

    const/16 v0, 0xde1

    .line 43
    sput v0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mEgl_type:I

    .line 44
    new-instance v0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;-><init>()V

    .line 45
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_c
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v2

    const-string v3, "RenderHandler"

    invoke-virtual {v2, v0, v3}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 47
    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v0
.end method

.method private internalPrepare()Z
    .registers 9

    .line 168
    const-string v0, "internalPrepare:"

    const-string v1, "RenderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->internalRelease()V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_83

    .line 174
    :cond_16
    new-instance v0, Lcom/transsion/camera/utils/gles/core/EglCore;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/transsion/camera/utils/gles/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    .line 176
    :try_start_20
    new-instance v3, Lcom/transsion/camera/utils/gles/core/WindowSurface;

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mSurface:Landroid/view/Surface;

    iget-boolean v6, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mNeedReleaseSurface:Z

    invoke-direct {v3, v0, v5, v6}, Lcom/transsion/camera/utils/gles/core/WindowSurface;-><init>(Lcom/transsion/camera/utils/gles/core/EglCore;Landroid/view/Surface;Z)V

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_2b} :catch_6d

    .line 181
    invoke-virtual {v3}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->makeCurrent()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    sget v0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mEgl_type:I

    const/16 v5, 0xde1

    if-ne v0, v5, :cond_44

    .line 186
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoNeedP3Switch:Z

    .line 187
    new-instance v5, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {v5, v0}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>(Z)V

    goto :goto_49

    .line 189
    :cond_44
    new-instance v5, Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    invoke-direct {v5}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;-><init>()V

    .line 191
    :goto_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalPrepare create program cost:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-object v5, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v4

    :catch_6d
    move-exception p0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalPrepare create mInputWindowSurface error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 171
    :cond_83
    :goto_83
    const-string p0, "mSurface is inValid"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private internalRelease()V
    .registers 3

    .line 199
    const-string v0, "RenderHandler"

    const-string v1, "internalRelease:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 201
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 202
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    .line 204
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    if-eqz v0, :cond_1a

    .line 205
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/WindowSurface;->release()V

    .line 206
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    .line 208
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    if-eqz v0, :cond_23

    .line 209
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/EglCore;->release()V

    .line 210
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    :cond_23
    return-void
.end method


# virtual methods
.method public draw(I[FZ)V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mvp:[F

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->draw(I[F[FZ)V

    return-void
.end method

.method public draw(I[F[FZ)V
    .registers 7

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_b

    .line 82
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_20

    .line 84
    :cond_b
    iput p1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mTexId:I

    .line 85
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mtx:[F

    .line 86
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mvp:[F

    .line 87
    iput-boolean p4, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mNeedMirror:Z

    .line 88
    iget p1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestDraw:I

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_9

    throw p0
.end method

.method public isPrepared()Z
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isValid()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mSurface:Landroid/view/Surface;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_12

    :cond_e
    const/4 p0, 0x0

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_15

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    monitor-exit v0

    return p0

    .line 96
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_10

    throw p0
.end method

.method public release()V
    .registers 5

    .line 100
    const-string v0, "RenderHandler"

    const-string v1, "release:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_a
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_12

    .line 103
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_39

    :cond_12
    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestRelease:Z

    .line 106
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_10

    .line 108
    :try_start_1a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_10

    goto :goto_37

    :catch_20
    move-exception p0

    .line 110
    :try_start_21
    const-string v1, "RenderHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_10

    throw p0
.end method

.method public run()V
    .registers 6

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_b

    .line 124
    monitor-exit v0

    goto :goto_63

    :catchall_9
    move-exception p0

    goto :goto_76

    .line 126
    :cond_b
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestSetEglContext:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 127
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestSetEglContext:Z

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->internalPrepare()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 130
    monitor-exit v0

    goto :goto_63

    .line 133
    :cond_1a
    iget v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestDraw:I

    if-lez v1, :cond_5b

    add-int/lit8 v1, v1, -0x1

    .line 135
    iput v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestDraw:I

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    if-eqz v1, :cond_60

    iget v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mTexId:I

    if-ltz v1, :cond_60

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->makeCurrent()V

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 139
    invoke-static {v3, v3, v1, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    .line 140
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 141
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mNeedMirror:Z

    if-eqz v1, :cond_4a

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mvp:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mvp:[F

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v1, v2, v4, v3, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 145
    :cond_4a
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    iget v2, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mTexId:I

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mtx:[F

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mvp:[F

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F[F)V

    .line 146
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->swapBuffers()Z
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_9

    goto :goto_60

    .line 150
    :cond_5b
    :try_start_5b
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_60} :catch_62
    .catchall {:try_start_5b .. :try_end_60} :catchall_9

    .line 155
    :cond_60
    :goto_60
    :try_start_60
    monitor-exit v0

    goto :goto_0

    .line 152
    :catch_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_9

    .line 157
    :goto_63
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 158
    :try_start_67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestRelease:Z

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->internalRelease()V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 161
    monitor-exit v1

    return-void

    :catchall_73
    move-exception p0

    monitor-exit v1
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_73

    throw p0

    .line 155
    :goto_76
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_9

    throw p0
.end method

.method public setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V
    .registers 6

    .line 52
    const-string v0, "RenderHandler"

    const-string v1, "setEglContext:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_a
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_12

    .line 55
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_4a

    .line 57
    :cond_12
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    .line 58
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 59
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mNeedReleaseSurface:Z

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mRequestSetEglContext:Z

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mtx:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mvp:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_10

    .line 65
    :try_start_2b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_10

    goto :goto_48

    :catch_31
    move-exception p0

    .line 67
    :try_start_32
    const-string p1, "RenderHandler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setEglContext error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_48
    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_10

    throw p0
.end method
