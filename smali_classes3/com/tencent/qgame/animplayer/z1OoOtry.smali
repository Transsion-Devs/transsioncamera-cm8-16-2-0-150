.class public final Lcom/tencent/qgame/animplayer/z1OoOtry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOtry$z1OoOdo;
    }
.end annotation


# static fields
.field public static final z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOtry$z1OoOdo;


# instance fields
.field private z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

.field private z1OoOint:Ljavax/microedition/khronos/egl/EGLSurface;

.field private z1OoOnew:Ljavax/microedition/khronos/egl/EGLContext;

.field private z1OoOtry:Ljavax/microedition/khronos/egl/EGLConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOtry$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOtry$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOtry$z1OoOdo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOint:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOnew:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method


# virtual methods
.method public final z1OoOdo()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOint:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v1, :cond_9

    goto :goto_10

    :cond_9
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz p0, :cond_10

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_10
    :goto_10
    return-void
.end method

.method public final z1OoOdo(Landroid/graphics/SurfaceTexture;)V
    .registers 14

    .line 0
    const-string v1, "error:"

    const-string v2, "AnimPlayer.EGLUtil"

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_9
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    if-eqz v0, :cond_cb

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v5, :cond_2a

    invoke-interface {v5, v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    goto :goto_2a

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d3

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    new-array v9, v0, [I

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0xf

    new-array v6, v4, [I

    fill-array-data v6, :array_e2

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_48

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x1

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    if-ne v4, v0, :cond_48

    aget-object v0, v7, v10

    goto :goto_49

    :cond_48
    move-object v0, v11

    :goto_49
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOtry:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v4, :cond_5b

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v4, v5, v0, v6, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    goto :goto_5c

    :cond_5b
    move-object p1, v11

    :goto_5c
    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOint:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOtry:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0x3098

    const/16 v6, 0x3038

    filled-new-array {v5, v3, v6}, [I

    move-result-object v3

    if-eqz p1, :cond_74

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v4, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v11

    :cond_74
    iput-object v11, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOnew:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOint:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_b0

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    goto :goto_b0

    :cond_83
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz p1, :cond_af

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOint:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOnew:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_af

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "make current error:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz p0, :cond_a4

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v10

    :cond_a4
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c6

    :goto_ac
    invoke-virtual {p1, v2, p0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    return-void

    :cond_b0
    :goto_b0
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz p0, :cond_bf

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v10

    :cond_bf
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_ac

    :cond_cb
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type javax.microedition.khronos.egl.EGL10"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_d3
    .catchall {:try_start_9 .. :try_end_d3} :catchall_26

    :goto_d3
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, p0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :array_e2
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method public final z1OoOif()V
    .registers 5

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOif:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOint:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOnew:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOtry;->z1OoOfor:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    :cond_20
    return-void
.end method
