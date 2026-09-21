.class public Lcom/transsion/camera/manager/NullBrightnessStrategy;
.super Lcom/transsion/camera/manager/BrightnessStrategy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/manager/BrightnessStrategy;-><init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public resetBrightnessLogic(I)V
    .registers 3

    .line 12
    invoke-super {p0, p1}, Lcom/transsion/camera/manager/BrightnessStrategy;->resetBrightnessLogic(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/manager/BrightnessStrategy;->mBrightnessControl:Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;

    if-eqz p0, :cond_d

    .line 15
    invoke-interface {p0}, Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;->resetToFollowSystem()V

    :cond_d
    return-void
.end method
