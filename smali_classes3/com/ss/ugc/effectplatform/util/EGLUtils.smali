.class public final Lcom/ss/ugc/effectplatform/util/EGLUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/util/EGLUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/util/EGLUtils$Companion;


# instance fields
.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private gl10:Ljavax/microedition/khronos/opengles/GL10;

.field private final isMiPlay:Z

.field private final shareContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/util/EGLUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/util/EGLUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->Companion:Lcom/ss/ugc/effectplatform/util/EGLUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->shareContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 26
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const-string v1, "mi play"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->isMiPlay:Z

    return-void
.end method

.method private final checkError(Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 133
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_22

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EGL error: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->logOrThrowException(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method private final logOrThrowException(Ljava/lang/String;)V
    .registers 8

    .line 141
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->isMiPlay:Z

    if-nez p0, :cond_20

    .line 145
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get gpu info error:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "EGLUtils"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 143
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final destroy()V
    .registers 7

    .line 97
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_52

    .line 98
    iget-boolean v1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->isMiPlay:Z

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v1, :cond_25

    .line 100
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 99
    invoke-interface {v0, v1, v3, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 104
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 105
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 106
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void

    .line 109
    :cond_25
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v1, v4, :cond_52

    .line 110
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v5, 0x0

    if-eqz v4, :cond_3e

    if-eq v4, v3, :cond_3e

    .line 111
    invoke-interface {v0, v1, v3, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 116
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 117
    iput-object v5, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 119
    :cond_3e
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_49

    .line 120
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 121
    iput-object v5, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 123
    :cond_49
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_52

    .line 124
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 125
    iput-object v5, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_52
    return-void
.end method

.method public final eglInit(II)V
    .registers 12

    const/16 v0, 0xf

    .line 44
    new-array v3, v0, [I

    fill-array-data v3, :array_e2

    .line 48
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    instance-of v1, v0, Ljavax/microedition/khronos/egl/EGL10;

    const/4 v7, 0x0

    if-nez v1, :cond_11

    move-object v0, v7

    :cond_11
    move-object v1, v0

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v1, :cond_e0

    .line 49
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 50
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v2, :cond_28

    .line 51
    const-string/jumbo v0, "unable to get EGL10 display"

    invoke-direct {p0, v0}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->logOrThrowException(Ljava/lang/String;)V

    .line 53
    :cond_28
    invoke-direct {p0, v1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->checkError(Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v0, 0x2

    .line 54
    new-array v2, v0, [I

    .line 55
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 56
    const-string/jumbo v2, "unable to initialize EGL10"

    invoke-direct {p0, v2}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->logOrThrowException(Ljava/lang/String;)V

    .line 58
    :cond_3c
    invoke-direct {p0, v1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->checkError(Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v2, 0x1

    .line 60
    new-array v6, v2, [I

    .line 61
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_51

    .line 62
    const-string v2, "eglChooseConfig failed"

    invoke-direct {p0, v2}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->logOrThrowException(Ljava/lang/String;)V

    .line 64
    :cond_51
    invoke-direct {p0, v1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->checkError(Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v8, 0x0

    .line 65
    aget v5, v6, v8

    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 66
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_66

    .line 67
    const-string v2, "eglChooseConfig#2 failed"

    invoke-direct {p0, v2}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->logOrThrowException(Ljava/lang/String;)V

    .line 69
    :cond_66
    invoke-direct {p0, v1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->checkError(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 70
    aget-object v2, v4, v8

    iput-object v2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_74

    .line 72
    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {p0, v2}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->logOrThrowException(Ljava/lang/String;)V

    :cond_74
    const/16 v2, 0x3057

    const/16 v3, 0x3056

    const/16 v4, 0x3038

    .line 75
    filled-new-array {v2, p1, v3, p2, v4}, [I

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, p2, v2, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 77
    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p1, p2, :cond_8e

    if-nez p1, :cond_93

    .line 78
    :cond_8e
    const-string p1, "surface was null"

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->logOrThrowException(Ljava/lang/String;)V

    .line 80
    :cond_93
    invoke-direct {p0, v1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->checkError(Ljavax/microedition/khronos/egl/EGL10;)V

    const/16 p1, 0x3098

    .line 82
    filled-new-array {p1, v0, v4}, [I

    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->shareContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, p2, v0, v2, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 84
    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq p1, p2, :cond_ae

    if-nez p1, :cond_b3

    .line 85
    :cond_ae
    const-string p1, "context was null"

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->logOrThrowException(Ljava/lang/String;)V

    .line 87
    :cond_b3
    invoke-direct {p0, v1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->checkError(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 88
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, p1, p2, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_c7

    .line 89
    const-string p1, "eglMakeCurrent failed"

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->logOrThrowException(Ljava/lang/String;)V

    .line 91
    :cond_c7
    invoke-direct {p0, v1}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->checkError(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 92
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz p1, :cond_d3

    invoke-virtual {p1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    goto :goto_d4

    :cond_d3
    move-object p1, v7

    :goto_d4
    instance-of p2, p1, Ljavax/microedition/khronos/opengles/GL10;

    if-nez p2, :cond_d9

    goto :goto_da

    :cond_d9
    move-object v7, p1

    :goto_da
    check-cast v7, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v7, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    .line 93
    iput-object v1, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->egl:Ljavax/microedition/khronos/egl/EGL10;

    :cond_e0
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

.method public final getGl10()Ljavax/microedition/khronos/opengles/GL10;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/util/EGLUtils;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    return-object p0
.end method
