.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 10

    const/16 v0, 0x13

    .line 450
    new-array v3, v0, [I

    fill-array-data v3, :array_26

    const/4 v0, 0x1

    .line 462
    new-array v4, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 463
    new-array v6, v0, [I

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    .line 464
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 466
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmWindowSurfaceFactory(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->queryExtensions(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    const/4 p0, 0x0

    .line 468
    aget p1, v6, p0

    if-nez p1, :cond_22

    const/4 p0, 0x0

    return-object p0

    .line 472
    :cond_22
    aget-object p0, v4, p0

    return-object p0

    nop

    :array_26
    .array-data 4
        0x3029
        0x0
        0x3040
        0x4
        0x303f
        0x308e
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3032
        0x1
        0x3031
        0x4
        0x3038
    .end array-data
.end method
