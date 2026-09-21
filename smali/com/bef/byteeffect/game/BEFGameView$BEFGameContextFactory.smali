.class Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/game/BEFGameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BEFGameContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/bef/byteeffect/game/BEFGameView;


# direct methods
.method private constructor <init>(Lcom/bef/byteeffect/game/BEFGameView;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;->this$0:Lcom/bef/byteeffect/game/BEFGameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 90
    iput p1, p0, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bef/byteeffect/game/BEFGameView;Lcom/bef/byteeffect/game/BEFGameView$1;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;-><init>(Lcom/bef/byteeffect/game/BEFGameView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 6

    .line 93
    iget p0, p0, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v0, 0x2

    const/16 v1, 0x3038

    filled-new-array {p0, v0, v1}, [I

    move-result-object p0

    .line 96
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v0, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 5

    .line 102
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BEFGame error: display:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BEFGameContextFactory"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_24
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;->this$0:Lcom/bef/byteeffect/game/BEFGameView;

    invoke-virtual {p1}, Lcom/bef/byteeffect/game/BEFGameView;->getNativeInited()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 106
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;->this$0:Lcom/bef/byteeffect/game/BEFGameView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bef/byteeffect/game/BEFGameView;->setNativeInited(Z)V

    .line 107
    iget-object p1, p0, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;->this$0:Lcom/bef/byteeffect/game/BEFGameView;

    iget-wide p1, p1, Lcom/bef/byteeffect/game/BEFGameView;->mHandle:J

    invoke-static {p1, p2}, Lcom/bef/byteeffect/game/NativeInterface;->destroy(J)I

    .line 108
    iget-object p0, p0, Lcom/bef/byteeffect/game/BEFGameView$BEFGameContextFactory;->this$0:Lcom/bef/byteeffect/game/BEFGameView;

    invoke-virtual {p0}, Lcom/bef/byteeffect/game/BEFGameView;->deleteBuffers()V

    :cond_3e
    return-void
.end method
