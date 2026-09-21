.class public Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mExtensions:Ljava/util/Set;

.field private final mWcgSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WindowSurfaceFactory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mWcgSupport:Z

    .line 61
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mExtensions:Ljava/util/Set;

    return-void
.end method

.method private checkExtensionCapability(Ljava/lang/String;)Z
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mExtensions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getWcgCapability()I
    .registers 2

    .line 81
    const-string v0, "EGL_EXT_gl_colorspace_display_p3_passthrough"

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->checkExtensionCapability(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x3490

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 12

    .line 92
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->getWcgCapability()I

    move-result v0

    .line 93
    const-string v1, "EGL_KHR_gl_colorspace"

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->checkExtensionCapability(Ljava/lang/String;)Z

    move-result v1

    .line 94
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mWcgSupport:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    if-eqz v1, :cond_24

    if-lez v0, :cond_24

    const/4 v2, 0x3

    .line 95
    new-array v2, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x309d

    aput v5, v2, v4

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v4, 0x2

    const/16 v5, 0x3038

    aput v5, v2, v4

    goto :goto_25

    :cond_24
    move-object v2, v3

    .line 98
    :goto_25
    sget-object v4, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createWindowSurface mWcgSupport:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mWcgSupport:Z

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "wcgCapability: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", colorSpaceCapability: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    :try_start_4e
    invoke-interface {p1, p2, p3, p4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p0
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_52} :catch_53

    return-object p0

    :catch_53
    move-exception p0

    .line 105
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "eglCreateWindowSurface"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .registers 4

    .line 113
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 114
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "destroySurface: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public queryExtensions(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .registers 4

    .line 65
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mWcgSupport:Z

    if-nez v0, :cond_d

    .line 66
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "wide color gamut rendering not support, no need to query extensions!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/16 v0, 0x3055

    .line 70
    invoke-interface {p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_29

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mExtensions:Ljava/util/Set;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method
