.class abstract Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bef/byteeffect/GLTextureView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/bef/byteeffect/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/bef/byteeffect/GLTextureView;[I)V
    .registers 3

    .line 668
    iput-object p1, p0, Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;->this$0:Lcom/bef/byteeffect/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    invoke-direct {p0, p2}, Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;->mConfigSpec:[I

    return-void
.end method

.method private filterConfigSpec([I)[I
    .registers 7

    .line 704
    iget-object v0, p0, Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;->this$0:Lcom/bef/byteeffect/GLTextureView;

    # getter for: Lcom/bef/byteeffect/GLTextureView;->mEGLContextClientVersion:I
    invoke-static {v0}, Lcom/bef/byteeffect/GLTextureView;->access$200(Lcom/bef/byteeffect/GLTextureView;)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x3038

    const/16 v3, 0x3040

    const/4 v4, 0x0

    if-ne v0, v1, :cond_22

    .line 705
    array-length p0, p1

    add-int/lit8 v0, p0, 0x2

    .line 706
    new-array v0, v0, [I

    add-int/lit8 v1, p0, -0x1

    .line 707
    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    aput v3, v0, v1

    const/4 p1, 0x4

    .line 709
    aput p1, v0, p0

    add-int/lit8 p0, p0, 0x1

    .line 710
    aput v2, v0, p0

    return-object v0

    .line 713
    :cond_22
    iget-object p0, p0, Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;->this$0:Lcom/bef/byteeffect/GLTextureView;

    # getter for: Lcom/bef/byteeffect/GLTextureView;->mEGLContextClientVersion:I
    invoke-static {p0}, Lcom/bef/byteeffect/GLTextureView;->access$200(Lcom/bef/byteeffect/GLTextureView;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_40

    .line 714
    array-length p0, p1

    add-int/lit8 v0, p0, 0x2

    .line 715
    new-array v0, v0, [I

    add-int/lit8 v1, p0, -0x1

    .line 716
    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    aput v3, v0, v1

    const/16 p1, 0x40

    .line 718
    aput p1, v0, p0

    add-int/lit8 p0, p0, 0x1

    .line 719
    aput v2, v0, p0

    return-object v0

    :cond_40
    return-object p1
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 10

    const/4 v0, 0x1

    .line 673
    new-array v6, v0, [I

    .line 674
    iget-object v3, p0, Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p1, 0x0

    .line 679
    aget v5, v6, p1

    if-lez v5, :cond_35

    .line 686
    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 687
    iget-object v3, p0, Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;->mConfigSpec:[I

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 691
    invoke-virtual {p0, v1, v2, v4}, Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p0

    if-eqz p0, :cond_25

    return-object p0

    .line 693
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No config chosen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 689
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig#2 failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 682
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No configs match configSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 676
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
