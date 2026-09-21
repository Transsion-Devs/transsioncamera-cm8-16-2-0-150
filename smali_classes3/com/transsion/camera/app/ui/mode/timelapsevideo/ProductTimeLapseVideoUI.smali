.class public abstract Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;
.super Lcom/transsion/camera/app/ui/mode/video/VideoUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;
    }
.end annotation


# instance fields
.field protected mTimeLapseRate:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 5

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->mTimeLapseRate:I

    return-void
.end method


# virtual methods
.method public onShutterDown()V
    .registers 1

    return-void
.end method

.method public onShutterUp()V
    .registers 1

    return-void
.end method

.method public onTimeLapseWheelHide()V
    .registers 1

    return-void
.end method

.method public abstract onTimeLapseWheelShow()V
.end method

.method public abstract resume()V
.end method

.method public abstract setTimeLapseDuration(J)V
.end method

.method public setTimeLapseRate(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->mTimeLapseRate:I

    return-void
.end method

.method public abstract showFileTooShortInfo()V
.end method

.method public abstract stopProgressView()V
.end method

.method public updateLayout(Z)V
    .registers 2

    return-void
.end method
