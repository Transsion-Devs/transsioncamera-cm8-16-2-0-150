.class public interface abstract Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/anim/FadeAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFadeListener"
.end annotation


# virtual methods
.method public abstract onAnimationUpdate(F)V
.end method

.method public onFadeInEnd()V
    .registers 1

    return-void
.end method

.method public abstract onFadeOutEnd()V
.end method
