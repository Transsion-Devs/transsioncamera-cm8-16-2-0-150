.class public abstract Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;
.implements Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;


# instance fields
.field protected final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected final mContext:Landroid/content/Context;

.field protected mLowLight:Z

.field protected mOrientation:I

.field protected mScreenFormType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;",
            ")",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .registers 3

    .line 44
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 46
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->registerAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    :cond_f
    return-void
.end method

.method public onCaptureEnd([B)V
    .registers 2

    return-void
.end method

.method public onCaptureFail()V
    .registers 1

    return-void
.end method

.method public onCaptureShot([B)V
    .registers 2

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mOrientation:I

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 2

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 76
    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mScreenFormType:I

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setScreenFormType(II)V
    .registers 3

    .line 67
    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mScreenFormType:I

    .line 68
    iput p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mOrientation:I

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 52
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 54
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->unregisterAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    :cond_f
    return-void
.end method

.method public updateRingScreenLight(Z)V
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mLowLight:Z

    return-void
.end method
