.class public Lcom/transsion/camera/app/ui/CameraSwitcherUI;
.super Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAnimatorDrawableId(Z)I
    .registers 2

    if-eqz p1, :cond_5

    .line 23
    sget p0, Lcom/transsion/camera/R$drawable;->anim_camera_switcher_lowlight:I

    return p0

    :cond_5
    sget p0, Lcom/transsion/camera/R$drawable;->anim_camera_switcher:I

    return p0
.end method
