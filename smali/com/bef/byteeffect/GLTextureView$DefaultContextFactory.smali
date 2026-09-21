.class Lcom/bef/byteeffect/GLTextureView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bef/byteeffect/GLTextureView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/bef/byteeffect/GLTextureView;


# direct methods
.method private constructor <init>(Lcom/bef/byteeffect/GLTextureView;)V
    .registers 2

    .line 573
    iput-object p1, p0, Lcom/bef/byteeffect/GLTextureView$DefaultContextFactory;->this$0:Lcom/bef/byteeffect/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 574
    iput p1, p0, Lcom/bef/byteeffect/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bef/byteeffect/GLTextureView;Lcom/bef/byteeffect/GLTextureView$1;)V
    .registers 3

    .line 573
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/GLTextureView$DefaultContextFactory;-><init>(Lcom/bef/byteeffect/GLTextureView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 9

    .line 577
    iget v0, p0, Lcom/bef/byteeffect/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v1, 0x3

    const/16 v2, 0x3038

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 580
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 581
    iget-object v4, p0, Lcom/bef/byteeffect/GLTextureView$DefaultContextFactory;->this$0:Lcom/bef/byteeffect/GLTextureView;

    # setter for: Lcom/bef/byteeffect/GLTextureView;->mEGLContextClientVersion:I
    invoke-static {v4, v1}, Lcom/bef/byteeffect/GLTextureView;->access$202(Lcom/bef/byteeffect/GLTextureView;I)I

    if-ne v0, v3, :cond_2f

    .line 583
    iget v0, p0, Lcom/bef/byteeffect/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v1, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 585
    invoke-interface {p1, p2, p3, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    .line 586
    iget-object p2, p0, Lcom/bef/byteeffect/GLTextureView$DefaultContextFactory;->this$0:Lcom/bef/byteeffect/GLTextureView;

    # setter for: Lcom/bef/byteeffect/GLTextureView;->mEGLContextClientVersion:I
    invoke-static {p2, v1}, Lcom/bef/byteeffect/GLTextureView;->access$202(Lcom/bef/byteeffect/GLTextureView;I)I

    if-ne p1, v3, :cond_2e

    .line 588
    iget-object p0, p0, Lcom/bef/byteeffect/GLTextureView$DefaultContextFactory;->this$0:Lcom/bef/byteeffect/GLTextureView;

    const/4 p2, 0x0

    # setter for: Lcom/bef/byteeffect/GLTextureView;->mEGLContextClientVersion:I
    invoke-static {p0, p2}, Lcom/bef/byteeffect/GLTextureView;->access$202(Lcom/bef/byteeffect/GLTextureView;I)I

    :cond_2e
    return-object p1

    :cond_2f
    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 6

    .line 596
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_49

    .line 597
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "display:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DefaultContextFactory"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tid="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string p0, "eglDestroyContex"

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-static {p0, p1}, Lcom/bef/byteeffect/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    :cond_49
    return-void
.end method
