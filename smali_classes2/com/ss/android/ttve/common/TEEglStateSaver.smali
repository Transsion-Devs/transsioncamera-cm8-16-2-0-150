.class public Lcom/ss/android/ttve/common/TEEglStateSaver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "TEEglStateSaver"


# instance fields
.field private mSavedContext:Landroid/opengl/EGLContext;

.field private mSavedDisplay:Landroid/opengl/EGLDisplay;

.field private mSavedDrawSurface:Landroid/opengl/EGLSurface;

.field private mSavedReadSurface:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    .line 22
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    .line 23
    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    .line 24
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    return-void
.end method


# virtual methods
.method public getSavedDisplay()Landroid/opengl/EGLDisplay;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    return-object p0
.end method

.method public getSavedDrawSurface()Landroid/opengl/EGLSurface;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method public getSavedEGLContext()Landroid/opengl/EGLContext;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getSavedReadSurface()Landroid/opengl/EGLSurface;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method public logState()V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TEEglStateSaver"

    if-nez v0, :cond_14

    .line 71
    const-string v0, "Saved context DOES NOT equal current."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 73
    :cond_14
    const-string v0, "Saved context DOES equal current."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_19
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x305a

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 76
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 77
    const-string v0, "Saved read surface is EGL_NO_SURFACE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 79
    :cond_37
    const-string v0, "Saved read surface DOES NOT equal current."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 81
    :cond_3d
    const-string v0, "Saved read surface DOES equal current."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_42
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3059

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 84
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 85
    const-string v0, "Saved draw surface is EGL_NO_SURFACE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 87
    :cond_60
    const-string v0, "Saved draw surface DOES NOT equal current."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 89
    :cond_66
    const-string v0, "Saved draw surface DOES equal current."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_6b
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7d

    .line 92
    const-string p0, "Saved display DOES NOT equal current."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_7d
    const-string p0, "Saved display DOES equal current."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public makeNothingCurrent()V
    .registers 3

    .line 66
    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public makeSavedStateCurrent()V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public saveEGLState()V
    .registers 5

    .line 27
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    .line 28
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TEEglStateSaver"

    if-eqz v0, :cond_15

    .line 29
    const-string v0, "Saved EGL_NO_CONTEXT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/16 v0, 0x305a

    .line 30
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    .line 32
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Saved EGL_NO_SURFACE"

    if-eqz v0, :cond_2a

    .line 33
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/16 v0, 0x3059

    .line 35
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    .line 36
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_3d
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    .line 41
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, p0}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    .line 42
    const-string p0, "Saved EGL_NO_DISPLAY"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void
.end method
