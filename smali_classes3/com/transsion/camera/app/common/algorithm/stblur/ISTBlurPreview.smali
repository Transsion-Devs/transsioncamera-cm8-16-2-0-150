.class public interface abstract Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview$GLPreviewController;
    }
.end annotation


# virtual methods
.method public abstract initRender()V
.end method

.method public abstract initSTBlur()V
.end method

.method public abstract processPreviewBlur([BIII)V
.end method

.method public abstract unInitSTBlur()V
.end method

.method public abstract updateBlurLevel(I)V
.end method

.method public abstract updateKernel(I)V
.end method
