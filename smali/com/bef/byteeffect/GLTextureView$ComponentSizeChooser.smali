.class Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;
.super Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lcom/bef/byteeffect/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/bef/byteeffect/GLTextureView;IIIIII)V
    .registers 21

    .line 738
    iput-object p1, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->this$0:Lcom/bef/byteeffect/GLTextureView;

    const/16 v10, 0x3026

    const/16 v12, 0x3038

    const/16 v0, 0x3024

    const/16 v2, 0x3023

    const/16 v4, 0x3022

    const/16 v6, 0x3021

    const/16 v8, 0x3025

    move v1, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v11, p7

    .line 739
    filled-new-array/range {v0 .. v12}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bef/byteeffect/GLTextureView$BaseConfigChooser;-><init>(Lcom/bef/byteeffect/GLTextureView;[I)V

    const/4 p1, 0x1

    .line 747
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mValue:[I

    .line 748
    iput p2, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mRedSize:I

    .line 749
    iput v3, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mGreenSize:I

    .line 750
    iput v5, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mBlueSize:I

    .line 751
    iput v7, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mAlphaSize:I

    .line 752
    iput v9, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mDepthSize:I

    .line 753
    iput v11, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 7

    .line 785
    iget-object v0, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 786
    iget-object p0, p0, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mValue:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_e
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 12

    .line 759
    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4e

    aget-object v5, p3, v1

    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 760
    invoke-direct/range {v2 .. v7}, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p0

    const/16 v6, 0x3026

    .line 762
    invoke-direct/range {v2 .. v7}, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    .line 764
    iget p2, v2, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mDepthSize:I

    if-lt p0, p2, :cond_48

    iget p0, v2, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mStencilSize:I

    if-lt p1, p0, :cond_48

    const/16 v6, 0x3024

    const/4 v7, 0x0

    .line 765
    invoke-direct/range {v2 .. v7}, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p0

    const/16 v6, 0x3023

    .line 767
    invoke-direct/range {v2 .. v7}, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    const/16 v6, 0x3022

    .line 769
    invoke-direct/range {v2 .. v7}, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    const/16 v6, 0x3021

    .line 771
    invoke-direct/range {v2 .. v7}, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 773
    iget v7, v2, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mRedSize:I

    if-ne p0, v7, :cond_48

    iget p0, v2, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mGreenSize:I

    if-ne p1, p0, :cond_48

    iget p0, v2, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mBlueSize:I

    if-ne p2, p0, :cond_48

    iget p0, v2, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;->mAlphaSize:I

    if-ne v6, p0, :cond_48

    return-object v5

    :cond_48
    add-int/lit8 v1, v1, 0x1

    move-object p0, v2

    move-object p1, v3

    move-object p2, v4

    goto :goto_2

    :cond_4e
    const/4 p0, 0x0

    return-object p0
.end method
