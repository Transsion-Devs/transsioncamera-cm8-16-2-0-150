.class public Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private intercept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;->intercept:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 40
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;->intercept:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setIntercept(Z)V
    .registers 3

    .line 34
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-nez v0, :cond_9

    return-void

    .line 35
    :cond_9
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;->intercept:Z

    return-void
.end method
