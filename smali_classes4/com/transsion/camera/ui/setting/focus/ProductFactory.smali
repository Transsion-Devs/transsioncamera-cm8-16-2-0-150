.class public abstract Lcom/transsion/camera/ui/setting/focus/ProductFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createLockBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;
    .registers 3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$integer;->exposure_lock_background_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 24
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/tecno/LockBackground;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/focus/tecno/LockBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    return-object v0

    .line 22
    :cond_1a
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/itel/LockBackground;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/focus/itel/LockBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    return-object v0

    .line 20
    :cond_20
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/infinix/LockBackground;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/focus/infinix/LockBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    return-object v0
.end method
