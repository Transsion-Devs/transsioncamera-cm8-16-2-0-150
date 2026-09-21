.class public abstract Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;,
        Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

.field protected mEnable:Z

.field protected mOrientation:I

.field protected mScreenFormType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mEnable:Z

    .line 11
    sget-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancelTouchEvent()V
    .registers 2

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mEnable:Z

    .line 52
    sget-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 20
    iput p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mScreenFormType:I

    return-void
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
.end method

.method public setScreenFormType(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mScreenFormType:I

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    return-void
.end method
