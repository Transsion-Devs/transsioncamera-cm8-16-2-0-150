.class public Lcom/bef/byteeffect/game/BEFGameView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/bef/byteeffect/game/NativeInterface$NativeMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;,
        Lcom/bef/byteeffect/game/BEFGameView$MessageListener;
    }
.end annotation


# static fields
.field protected static final NANO_SECONDS_PER_MICRO_SECOND:J = 0xf4240L

.field protected static final NANO_SECONDS_PER_SECOND:J = 0x3b9aca00L

.field protected static final sDesignHeight:I = 0x500

.field protected static final sDesignWidth:I = 0x2d0

.field protected static final sINALID_HANDLE:I


# instance fields
.field protected mAnimationInterval:J

.field protected mCacheMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentFps:D

.field protected mDstTexture:I

.field protected mFBO:I

.field private mFirstLoopGuard:Z

.field protected mFps:J

.field protected mGameBundlePath:Ljava/lang/String;

.field protected mGlMatrixHandle:I

.field protected mGlPosHandle:I

.field protected mGlProgram:I

.field protected mGlTextureSampleHandle:I

.field protected mGlUvHandle:I

.field protected mHandle:J

.field private mLastTickInNanoSeconds:J

.field protected mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/bef/byteeffect/game/BEFGameView$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMatrix:[F

.field private mMultipleTouchEnabled:Z

.field protected mNativeInited:Z

.field protected mSrcTexture:I

.field private mStartTimeStampNanoSeconds:J

.field protected mSwallowTouches:Z

.field private mTouch_ids:[I

.field private mTouch_xs:[F

.field private mTouch_ys:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 117
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mHandle:J

    .line 49
    const-string p1, ""

    iput-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mSwallowTouches:Z

    const/16 p1, 0x10

    .line 70
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mMatrix:[F

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFirstLoopGuard:Z

    .line 82
    iput-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mMultipleTouchEnabled:Z

    const/16 v0, 0xa

    .line 85
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ids:[I

    .line 86
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    .line 87
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    const/4 v0, 0x2

    .line 119
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 120
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object v1, p0

    .line 123
    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 124
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 v0, -0x3

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 125
    invoke-virtual {v1, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 127
    new-instance p0, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;-><init>(Lcom/bef/byteeffect/game/BEFGameView;Lcom/bef/byteeffect/game/BEFGameView$1;)V

    .line 128
    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 129
    invoke-virtual {v1, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 130
    invoke-virtual {v1, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 132
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iput-object p0, v1, Lcom/bef/byteeffect/game/BEFGameView;->mListeners:Ljava/util/HashSet;

    .line 133
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    iput-object p0, v1, Lcom/bef/byteeffect/game/BEFGameView;->mCacheMessages:Ljava/util/Queue;

    const-wide/16 p0, 0x3c

    .line 136
    invoke-virtual {v1, p0, p1}, Lcom/bef/byteeffect/game/BEFGameView;->setFps(J)V

    return-void
.end method

.method static synthetic access$102(Lcom/bef/byteeffect/game/BEFGameView;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFirstLoopGuard:Z

    return p1
.end method


# virtual methods
.method public addMessageListener(Lcom/bef/byteeffect/game/BEFGameView$MessageListener;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x3

    return p0

    .line 161
    :cond_4
    iget-object p0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method protected convertTouchesToNormalizedPos([F[FI)V
    .registers 11

    .line 537
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 538
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x44340000    # 720.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x44a00000    # 1280.0f

    mul-float/2addr v2, v3

    int-to-float p0, p0

    sub-float/2addr p0, v2

    const/4 v3, 0x0

    :goto_16
    if-ge v3, p3, :cond_2d

    .line 544
    aget v4, p1, v3

    .line 545
    aget v5, p2, v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    div-float/2addr v4, v0

    sub-float/2addr v4, v1

    .line 546
    aput v4, p1, v3

    sub-float/2addr v5, p0

    mul-float/2addr v5, v6

    div-float/2addr v5, v2

    sub-float v4, v1, v5

    .line 547
    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2d
    return-void
.end method

.method protected deleteBuffers()V
    .registers 4

    .line 561
    iget v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mSrcTexture:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 564
    iget v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mDstTexture:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 565
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 567
    iget p0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFBO:I

    filled-new-array {p0}, [I

    move-result-object p0

    .line 568
    invoke-static {v1, p0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    return-void
.end method

.method public destroyBEFGame()V
    .registers 1

    return-void
.end method

.method public declared-synchronized getCurrentFps()D
    .registers 3

    monitor-enter p0

    .line 237
    :try_start_1
    iget-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mCurrentFps:D
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getNativeInited()Z
    .registers 2

    monitor-enter p0

    .line 246
    :try_start_1
    iget-boolean v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mNativeInited:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected initRenderObject()V
    .registers 5

    .line 328
    const-string v0, "attribute vec2 attUV;\nattribute vec2 attPosition;\nvarying vec2 textureCoord;\nuniform mat4 mvpMatrix;\n\nvoid main() {\n    gl_Position  = mvpMatrix * vec4(attPosition, 0.,1.);\n    textureCoord = attUV;\n}\n"

    const-string v1, "precision highp float;\n\nuniform sampler2D uTexture;\nvarying vec2 textureCoord;\nvoid main() {\n    gl_FragColor = texture2D(uTexture, textureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/bef/byteeffect/OpenGLUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlProgram:I

    .line 331
    const-string v1, "attUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlUvHandle:I

    .line 332
    iget v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlProgram:I

    const-string v1, "attPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlPosHandle:I

    .line 333
    iget v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlProgram:I

    const-string v1, "mvpMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlMatrixHandle:I

    .line 334
    iget v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlProgram:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlTextureSampleHandle:I

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    .line 343
    invoke-static {v0, v1}, Lcom/bef/byteeffect/game/RenderTextureUtils;->generateBlankTexture(II)I

    move-result v2

    iput v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mSrcTexture:I

    .line 346
    invoke-static {v0, v1}, Lcom/bef/byteeffect/game/RenderTextureUtils;->generateBlankTexture(II)I

    move-result v0

    iput v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mDstTexture:I

    const/4 v0, 0x1

    .line 349
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 350
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 351
    aget v0, v1, v2

    iput v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFBO:I

    const v1, 0x8d40

    .line 352
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0xde1

    .line 353
    iget p0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mDstTexture:I

    const v3, 0x8ce0

    invoke-static {v1, v3, v0, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 354
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public nativeOnMsgReceived(JJJLjava/lang/String;)I
    .registers 17

    .line 194
    iget-object p0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bef/byteeffect/game/BEFGameView$MessageListener;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 195
    invoke-interface/range {v1 .. v8}, Lcom/bef/byteeffect/game/BEFGameView$MessageListener;->onMsgReceived(JJJLjava/lang/String;)I

    goto :goto_6

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 10

    .line 283
    invoke-virtual {p0}, Lcom/bef/byteeffect/game/BEFGameView;->getNativeInited()Z

    move-result p1

    if-eqz p1, :cond_86

    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    goto/16 :goto_86

    .line 287
    :cond_10
    iget-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFirstLoopGuard:Z

    if-eqz p1, :cond_20

    .line 288
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mStartTimeStampNanoSeconds:J

    .line 289
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mLastTickInNanoSeconds:J

    .line 292
    :cond_20
    iget-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFirstLoopGuard:Z

    if-nez p1, :cond_38

    .line 293
    :goto_24
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mCacheMessages:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    .line 294
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mCacheMessages:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 295
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_24

    .line 300
    :cond_38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mStartTimeStampNanoSeconds:J

    long-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    .line 303
    invoke-virtual {p0, v0, v1}, Lcom/bef/byteeffect/game/BEFGameView;->render(D)V

    .line 305
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mLastTickInNanoSeconds:J

    sub-long/2addr v0, v4

    .line 307
    iget-wide v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mAnimationInterval:J

    cmp-long p1, v0, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-gez p1, :cond_66

    sub-long/2addr v4, v0

    long-to-double v0, v4

    mul-double/2addr v0, v6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v4

    double-to-long v0, v0

    .line 310
    :try_start_63
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_66

    .line 315
    :catch_66
    :cond_66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mLastTickInNanoSeconds:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v2

    div-double/2addr v6, v0

    iput-wide v6, p0, Lcom/bef/byteeffect/game/BEFGameView;->mCurrentFps:D

    .line 316
    iget-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFps:J

    long-to-double v2, v0

    cmpl-double p1, v6, v2

    if-ltz p1, :cond_7d

    long-to-double v0, v0

    .line 317
    iput-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mCurrentFps:D

    .line 320
    :cond_7d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mLastTickInNanoSeconds:J

    const/4 p1, 0x0

    .line 322
    iput-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFirstLoopGuard:Z

    :cond_86
    :goto_86
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    .line 256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mStartTimeStampNanoSeconds:J

    .line 257
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mLastTickInNanoSeconds:J

    const/4 p1, 0x2

    .line 259
    new-array p1, p1, [J

    .line 260
    invoke-static {p1}, Lcom/bef/byteeffect/game/NativeInterface;->createHandle([J)V

    const/4 p2, 0x0

    .line 261
    aget-wide p1, p1, p2

    iput-wide p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mHandle:J

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    .line 262
    invoke-static {p1, p2, v0, v1}, Lcom/bef/byteeffect/game/NativeInterface;->init(JII)I

    .line 264
    iget-wide p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mHandle:J

    invoke-static {p1, p2, p0}, Lcom/bef/byteeffect/game/NativeInterface;->addMessageListener(JLcom/bef/byteeffect/game/NativeInterface$NativeMessageListener;)I

    .line 266
    invoke-virtual {p0}, Lcom/bef/byteeffect/game/BEFGameView;->initRenderObject()V

    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, p1}, Lcom/bef/byteeffect/game/BEFGameView;->setNativeInited(Z)V

    .line 271
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_39

    .line 272
    iget-wide p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mHandle:J

    iget-object p0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/bef/byteeffect/game/NativeInterface;->setGameBundlePath(JLjava/lang/String;)I

    :cond_39
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_9

    move v0, v1

    :cond_9
    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_28

    .line 426
    iget-object v3, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ids:[I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    aput v4, v3, v2

    .line 427
    iget-object v3, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v3, v2

    .line 428
    iget-object v3, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 431
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eqz v2, :cond_126

    if-eq v2, v3, :cond_fe

    const/4 v4, 0x2

    if-eq v2, v4, :cond_a9

    const/4 v4, 0x5

    if-eq v2, v4, :cond_74

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3e

    goto/16 :goto_d4

    .line 495
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    .line 496
    iget-boolean v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mMultipleTouchEnabled:Z

    if-nez v2, :cond_4c

    if-eqz p1, :cond_4c

    goto/16 :goto_d4

    .line 499
    :cond_4c
    iget-object v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    iget-object v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, v2, v4, v0}, Lcom/bef/byteeffect/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    .line 501
    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ids:[I

    aget v0, v0, p1

    filled-new-array {v0}, [I

    move-result-object v0

    .line 502
    iget-object v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    aget v2, v2, p1

    new-array v4, v3, [F

    aput v2, v4, v1

    .line 503
    iget-object v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    aget p1, v2, p1

    new-array v2, v3, [F

    aput p1, v2, v1

    .line 505
    new-instance p1, Lcom/bef/byteeffect/game/BEFGameView$9;

    invoke-direct {p1, p0, v0, v4, v2}, Lcom/bef/byteeffect/game/BEFGameView$9;-><init>(Lcom/bef/byteeffect/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v3

    .line 433
    :cond_74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    .line 434
    iget-boolean v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mMultipleTouchEnabled:Z

    if-nez v2, :cond_81

    if-eqz p1, :cond_81

    goto :goto_d4

    .line 437
    :cond_81
    iget-object v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    iget-object v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, v2, v4, v0}, Lcom/bef/byteeffect/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    .line 438
    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ids:[I

    aget v0, v0, p1

    filled-new-array {v0}, [I

    move-result-object v0

    .line 439
    iget-object v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    aget v2, v2, p1

    new-array v4, v3, [F

    aput v2, v4, v1

    .line 440
    iget-object v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    aget p1, v2, p1

    new-array v2, v3, [F

    aput p1, v2, v1

    .line 441
    new-instance p1, Lcom/bef/byteeffect/game/BEFGameView$5;

    invoke-direct {p1, p0, v0, v4, v2}, Lcom/bef/byteeffect/game/BEFGameView$5;-><init>(Lcom/bef/byteeffect/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v3

    .line 466
    :cond_a9
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    iget-object v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, p1, v2, v0}, Lcom/bef/byteeffect/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    .line 468
    iget-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mMultipleTouchEnabled:Z

    if-nez p1, :cond_d7

    .line 469
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ids:[I

    aget p1, p1, v1

    filled-new-array {p1}, [I

    move-result-object p1

    .line 470
    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    aget v0, v0, v1

    new-array v2, v3, [F

    aput v0, v2, v1

    .line 471
    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    aget v0, v0, v1

    new-array v3, v3, [F

    aput v0, v3, v1

    .line 472
    new-instance v0, Lcom/bef/byteeffect/game/BEFGameView$7;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/bef/byteeffect/game/BEFGameView$7;-><init>(Lcom/bef/byteeffect/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 532
    :goto_d4
    iget-boolean p0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mSwallowTouches:Z

    return p0

    :cond_d7
    move p1, v1

    :goto_d8
    if-ge p1, v0, :cond_fd

    .line 482
    iget-object v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ids:[I

    aget v2, v2, p1

    filled-new-array {v2}, [I

    move-result-object v2

    .line 483
    iget-object v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    aget v4, v4, p1

    new-array v5, v3, [F

    aput v4, v5, v1

    .line 484
    iget-object v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    aget v4, v4, p1

    new-array v6, v3, [F

    aput v4, v6, v1

    .line 485
    new-instance v4, Lcom/bef/byteeffect/game/BEFGameView$8;

    invoke-direct {v4, p0, v2, v5, v6}, Lcom/bef/byteeffect/game/BEFGameView$8;-><init>(Lcom/bef/byteeffect/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, v4}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_d8

    :cond_fd
    return v3

    .line 517
    :cond_fe
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, p1, v0, v3}, Lcom/bef/byteeffect/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    .line 518
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ids:[I

    aget p1, p1, v1

    filled-new-array {p1}, [I

    move-result-object p1

    .line 519
    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    aget v0, v0, v1

    new-array v2, v3, [F

    aput v0, v2, v1

    .line 520
    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    aget v0, v0, v1

    new-array v4, v3, [F

    aput v0, v4, v1

    .line 522
    new-instance v0, Lcom/bef/byteeffect/game/BEFGameView$10;

    invoke-direct {v0, p0, p1, v2, v4}, Lcom/bef/byteeffect/game/BEFGameView$10;-><init>(Lcom/bef/byteeffect/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v3

    .line 451
    :cond_126
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, p1, v0, v3}, Lcom/bef/byteeffect/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    .line 453
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ids:[I

    aget p1, p1, v1

    filled-new-array {p1}, [I

    move-result-object p1

    .line 454
    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_xs:[F

    aget v0, v0, v1

    new-array v2, v3, [F

    aput v0, v2, v1

    .line 455
    iget-object v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mTouch_ys:[F

    aget v0, v0, v1

    new-array v4, v3, [F

    aput v0, v4, v1

    .line 457
    new-instance v0, Lcom/bef/byteeffect/game/BEFGameView$6;

    invoke-direct {v0, p0, p1, v2, v4}, Lcom/bef/byteeffect/game/BEFGameView$6;-><init>(Lcom/bef/byteeffect/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v3
.end method

.method public pauseGame()V
    .registers 2

    .line 202
    new-instance v0, Lcom/bef/byteeffect/game/BEFGameView$3;

    invoke-direct {v0, p0}, Lcom/bef/byteeffect/game/BEFGameView$3;-><init>(Lcom/bef/byteeffect/game/BEFGameView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postMessage(JJJLjava/lang/String;)I
    .registers 17

    .line 177
    new-instance v0, Lcom/bef/byteeffect/game/BEFGameView$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bef/byteeffect/game/BEFGameView$2;-><init>(Lcom/bef/byteeffect/game/BEFGameView;JJJLjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeMessageListener(Lcom/bef/byteeffect/game/BEFGameView$MessageListener;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x3

    return p0

    .line 170
    :cond_4
    iget-object p0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method protected render(D)V
    .registers 7

    .line 359
    iget-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mHandle:J

    const/16 v2, 0x2d0

    const/16 v3, 0x500

    invoke-static {v0, v1, v2, v3}, Lcom/bef/byteeffect/game/NativeInterface;->setSize(JII)I

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/bef/byteeffect/game/BEFGameView;->renderGameToTexture(D)V

    .line 361
    invoke-virtual {p0}, Lcom/bef/byteeffect/game/BEFGameView;->renderTextureToView()V

    return-void
.end method

.method protected renderGameToTexture(D)V
    .registers 13

    .line 367
    iget v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFBO:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0x2d0

    const/16 v2, 0x500

    const/4 v3, 0x0

    .line 369
    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x0

    .line 371
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 372
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 374
    iget-wide v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mHandle:J

    iget v6, p0, Lcom/bef/byteeffect/game/BEFGameView;->mSrcTexture:I

    iget v7, p0, Lcom/bef/byteeffect/game/BEFGameView;->mDstTexture:I

    move-wide v8, p1

    invoke-static/range {v4 .. v9}, Lcom/bef/byteeffect/game/NativeInterface;->processFrame(JIID)I

    .line 375
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method protected renderTextureToView()V
    .registers 11

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 381
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 385
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v3, 0x0

    .line 387
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v3, 0x4000

    .line 388
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 390
    iget v3, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v3, 0x84c0

    .line 392
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v3, 0xde1

    .line 393
    iget v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mDstTexture:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 394
    iget v3, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlTextureSampleHandle:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 396
    iget-object v3, p0, Lcom/bef/byteeffect/game/BEFGameView;->mMatrix:[F

    invoke-static {v3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 397
    iget v3, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlMatrixHandle:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/bef/byteeffect/game/BEFGameView;->mMatrix:[F

    invoke-static {v3, v4, v1, v5, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 399
    iget v3, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlPosHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    const/high16 v4, 0x44340000    # 720.0f

    div-float/2addr v0, v4

    const/high16 v4, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v2

    const/high16 v2, -0x40800000    # -1.0f

    .line 407
    invoke-static {v2, v3, v0, v2}, Lcom/bef/byteeffect/game/RenderTextureUtils;->getVertexBufferWithParams(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 408
    iget v4, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlPosHandle:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x1406

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 410
    iget v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlUvHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 411
    invoke-static {}, Lcom/bef/byteeffect/game/RenderTextureUtils;->getUVBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 412
    iget v2, p0, Lcom/bef/byteeffect/game/BEFGameView;->mGlUvHandle:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 p0, 0x5

    const/4 v0, 0x4

    .line 414
    invoke-static {p0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public resumeGame()V
    .registers 2

    .line 214
    new-instance v0, Lcom/bef/byteeffect/game/BEFGameView$4;

    invoke-direct {v0, p0}, Lcom/bef/byteeffect/game/BEFGameView$4;-><init>(Lcom/bef/byteeffect/game/BEFGameView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFps(J)V
    .registers 6

    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 227
    iput-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFps:J

    goto :goto_b

    .line 229
    :cond_9
    iput-wide p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFps:J

    .line 231
    :goto_b
    iget-wide p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mFps:J

    long-to-double v0, p1

    iput-wide v0, p0, Lcom/bef/byteeffect/game/BEFGameView;->mCurrentFps:D

    const/high16 v0, 0x3f800000    # 1.0f

    long-to-float p1, p1

    div-float/2addr v0, p1

    const p1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, p1

    float-to-long p1, v0

    .line 232
    iput-wide p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mAnimationInterval:J

    return-void
.end method

.method public setGameBundlePath(Ljava/lang/String;)V
    .registers 3

    .line 141
    new-instance v0, Lcom/bef/byteeffect/game/BEFGameView$1;

    invoke-direct {v0, p0, p1}, Lcom/bef/byteeffect/game/BEFGameView$1;-><init>(Lcom/bef/byteeffect/game/BEFGameView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setNativeInited(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mNativeInited:Z

    return-void
.end method

.method public setSwallowTouches(Z)V
    .registers 2

    .line 242
    iput-boolean p1, p0, Lcom/bef/byteeffect/game/BEFGameView;->mSwallowTouches:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 553
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
