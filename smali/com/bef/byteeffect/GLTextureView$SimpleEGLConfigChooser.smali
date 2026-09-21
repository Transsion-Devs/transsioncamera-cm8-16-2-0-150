.class Lcom/bef/byteeffect/GLTextureView$SimpleEGLConfigChooser;
.super Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/byteeffect/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/bef/byteeffect/GLTextureView;Z)V
    .registers 11

    .line 807
    iput-object p1, p0, Lcom/bef/byteeffect/GLTextureView$SimpleEGLConfigChooser;->this$0:Lcom/bef/byteeffect/GLTextureView;

    if-eqz p2, :cond_8

    const/16 p2, 0x10

    :goto_6
    move v6, p2

    goto :goto_a

    :cond_8
    const/4 p2, 0x0

    goto :goto_6

    :goto_a
    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 808
    invoke-direct/range {v0 .. v7}, Lcom/bef/byteeffect/GLTextureView$ComponentSizeChooser;-><init>(Lcom/bef/byteeffect/GLTextureView;IIIIII)V

    return-void
.end method
