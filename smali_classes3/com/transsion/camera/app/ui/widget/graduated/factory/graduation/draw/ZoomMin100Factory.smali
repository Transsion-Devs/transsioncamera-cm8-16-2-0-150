.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Factory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseZoomFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseZoomFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    return-void
.end method


# virtual methods
.method protected isVibrate(I)Z
    .registers 2

    .line 27
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isVibrate(I)Z

    move-result p0

    return p0
.end method
