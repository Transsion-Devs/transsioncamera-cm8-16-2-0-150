.class public Lcom/transsion/camera/app/ui/setting/PopupOption5;
.super Lcom/transsion/camera/app/ui/setting/PopupOption;
.source "SourceFile"


# instance fields
.field private mDismissPopupAction:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$ACCL2J5Jdj5g8XjEzlO0c2nCbSA(Lcom/transsion/camera/app/ui/setting/PopupOption5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption5;->lambda$applyDismissPopup$0()V

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 10

    .line 17
    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/ui/setting/PopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method static synthetic access$001(Lcom/transsion/camera/app/ui/setting/PopupOption5;)V
    .registers 1

    .line 11
    invoke-super {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->applyDismissPopup()V

    return-void
.end method

.method private synthetic lambda$applyDismissPopup$0()V
    .registers 1

    .line 22
    # invokes: Lcom/transsion/camera/app/ui/setting/PopupOption;->applyDismissPopup()V
    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption5;->access$001(Lcom/transsion/camera/app/ui/setting/PopupOption5;)V

    return-void
.end method


# virtual methods
.method protected applyDismissPopup()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PopupOption5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption5;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption5;->mDismissPopupAction:Ljava/lang/Runnable;

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 3

    const/16 v0, 0xc1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_d

    const/16 v0, 0xed

    if-eq p1, v0, :cond_d

    goto :goto_17

    .line 31
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption5;->mDismissPopupAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_17

    .line 32
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption5;->mDismissPopupAction:Ljava/lang/Runnable;

    :cond_17
    :goto_17
    return-void
.end method
