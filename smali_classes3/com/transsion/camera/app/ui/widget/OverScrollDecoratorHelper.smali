.class public abstract Lcom/transsion/camera/app/ui/widget/OverScrollDecoratorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static setUpOverScroll(Landroid/widget/HorizontalScrollView;)V
    .registers 2

    .line 7
    new-instance v0, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator;-><init>(Landroid/widget/HorizontalScrollView;)V

    return-void
.end method
