.class public final Lcom/transsion/camera/utils/encoder/RenderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static mEgl_type:I = -0x1


# instance fields
.field private mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

.field private mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

.field private mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

.field private final mLock:Ljava/lang/Object;

.field private mNeedReleaseSurface:Z

.field private mPresentationTime:J

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

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 26
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    .line 27
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mPresentationTime:J

    return-void
.end method

.method public static final createHandler(Ljava/lang/String;I)Lcom/transsion/camera/utils/encoder/RenderHandler;
    .registers 4

    .line 41
    sput p1, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEgl_type:I

    .line 42
    new-instance p0, Lcom/transsion/camera/utils/encoder/RenderHandler;

    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;-><init>()V

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 44
    :try_start_a
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    const-string v1, "RenderHandler"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 45
    monitor-exit p1

    return-object p0

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw p0
.end method

.method private final internalPrepare()Z
    .registers 9

    .line 161
    const-string v0, "internalPrepare:"

    const-string v1, "RenderHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->internalRelease()V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSurface.isValid() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 167
    :cond_2e
    new-instance v0, Lcom/transsion/camera/utils/gles/core/EglCore;

    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/transsion/camera/utils/gles/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    .line 169
    :try_start_38
    new-instance v3, Lcom/transsion/camera/utils/gles/core/WindowSurface;

    iget-object v5, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    iget-boolean v6, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mNeedReleaseSurface:Z

    invoke-direct {v3, v0, v5, v6}, Lcom/transsion/camera/utils/gles/core/WindowSurface;-><init>(Lcom/transsion/camera/utils/gles/core/EglCore;Landroid/view/Surface;Z)V

    iput-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_43} :catch_7f

    .line 175
    invoke-virtual {v3}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->makeCurrent()V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    sget v0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEgl_type:I

    const/16 v5, 0xde1

    if-ne v0, v5, :cond_56

    .line 179
    new-instance v0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    goto :goto_5b

    .line 181
    :cond_56
    new-instance v0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;-><init>()V

    .line 183
    :goto_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalPrepare create program cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v4

    :catch_7f
    move-exception p0

    .line 171
    const-string v0, "internalPrepare creat mInputWindowSurface error"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method private final internalRelease()V
    .registers 3

    .line 191
    const-string v0, "RenderHandler"

    const-string v1, "internalRelease:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 193
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 194
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    .line 196
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    if-eqz v0, :cond_1a

    .line 197
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/WindowSurface;->release()V

    .line 198
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    .line 200
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    if-eqz v0, :cond_23

    .line 201
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/EglCore;->release()V

    .line 202
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    :cond_23
    return-void
.end method


# virtual methods
.method public final draw(I[FJ)V
    .registers 11

    .line 72
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/utils/encoder/RenderHandler;->draw(I[F[FJ)V

    return-void
.end method

.method public final draw(I[F[FJ)V
    .registers 8

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_b

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_20

    .line 79
    :cond_b
    iput p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mTexId:I

    .line 80
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    .line 81
    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    .line 82
    iget p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    .line 83
    iput-wide p4, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mPresentationTime:J

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 89
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

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final release()V
    .registers 3

    .line 99
    const-string v0, "RenderHandler"

    const-string v1, "release:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_a
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_12

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_21

    :cond_12
    const/4 v1, 0x1

    .line 102
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_10

    .line 105
    :try_start_1a
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_10

    .line 108
    :catch_1f
    :try_start_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_10

    throw p0
.end method

.method public final run()V
    .registers 6

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_b

    monitor-exit v0

    goto :goto_60

    :catchall_9
    move-exception p0

    goto :goto_73

    .line 121
    :cond_b
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestSetEglContext:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 123
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->internalPrepare()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 125
    monitor-exit v0

    goto :goto_60

    .line 128
    :cond_1a
    iget v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    if-lez v1, :cond_58

    add-int/lit8 v1, v1, -0x1

    .line 130
    iput v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    .line 131
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    if-eqz v1, :cond_5d

    iget v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mTexId:I

    if-ltz v1, :cond_5d

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->makeCurrent()V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 134
    invoke-static {v2, v2, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    .line 135
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    iget v2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mTexId:I

    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F[F)V

    .line 137
    iget-wide v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mPresentationTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_52

    .line 139
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v3, v1, v2}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->setPresentationTime(J)V

    .line 141
    :cond_52
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->swapBuffers()Z
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_9

    goto :goto_5d

    .line 145
    :cond_58
    :try_start_58
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5d} :catch_5f
    .catchall {:try_start_58 .. :try_end_5d} :catchall_9

    .line 150
    :cond_5d
    :goto_5d
    :try_start_5d
    monitor-exit v0

    goto :goto_0

    .line 147
    :catch_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_9

    .line 152
    :goto_60
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 153
    :try_start_64
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->internalRelease()V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v1

    return-void

    :catchall_70
    move-exception p0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_64 .. :try_end_72} :catchall_70

    throw p0

    .line 150
    :goto_73
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_9

    throw p0
.end method

.method public final setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V
    .registers 6

    .line 50
    const-string v0, "RenderHandler"

    const-string v1, "setEglContext:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_a
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_12

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_32

    .line 53
    :cond_12
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    .line 54
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 55
    iput-boolean p3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mNeedReleaseSurface:Z

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_10

    .line 61
    :try_start_2b
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_30} :catch_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_10

    .line 64
    :catch_30
    :try_start_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_10

    throw p0
.end method
