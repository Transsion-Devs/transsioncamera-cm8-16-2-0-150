.class public interface abstract Lcom/transsion/hubsdk/interfaces/view/ITranViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearUnionRenderEffect(Landroid/view/View;)V
.end method

.method public abstract enableBackdropBlurFilter(Landroid/view/View;ZF)Z
.end method

.method public abstract enableBackdropBlurFilter(Landroid/view/View;ZFI)Z
.end method

.method public abstract forceRenderSdrUnderHdr(Landroid/view/View;Z)Z
.end method

.method public abstract getUnionRenderEffect(Landroid/view/View;)Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;
.end method

.method public abstract hasSetKeyListener(Landroid/view/View;)Z
.end method

.method public abstract isRecreateDisplayList(Landroid/view/View;)Z
.end method

.method public abstract setMaterialNoise(Landroid/view/View;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setOnUnionRenderFrameAvailableListener(Landroid/view/View;Ljava/util/function/Consumer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setPromoteLayerEnabled(Landroid/view/View;Z)Z
.end method

.method public abstract setSystemUiVisibility(Landroid/view/Window;I)V
.end method

.method public abstract setUnionRenderEffect(Landroid/view/View;Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;)V
.end method
