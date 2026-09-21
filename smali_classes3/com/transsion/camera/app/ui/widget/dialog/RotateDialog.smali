.class public Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;,
        Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    }
.end annotation


# instance fields
.field private mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDismissOnPause:Z

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHandler:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;

.field private mNeedShow:I

.field private mScreenFormType:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmController(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragmentManager(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;)Landroid/app/FragmentManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mFragmentManager:Landroid/app/FragmentManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mDismissOnPause:Z

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mNeedShow:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mScreenFormType:I

    return-void
.end method

.method private onBackPressed()Z
    .registers 2

    .line 144
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mNeedShow:I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public createController(Landroid/content/Context;I)V
    .registers 4

    .line 58
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mScreenFormType:I

    .line 59
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    return-void
.end method

.method public hide()V
    .registers 2

    .line 131
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mNeedShow:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 213
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 217
    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->isCancelable()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    .line 218
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->isCanceledOnTouchOutside()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->haveInputAbility()Z

    move-result v2

    .line 217
    invoke-static {p1, p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->setDialogWindowBackGround(Landroid/content/Context;Landroid/app/DialogFragment;ZZZ)V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->onConfigurationChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 65
    new-instance p3, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog-IA;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mHandler:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;

    .line 66
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->rotate_dialog_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->rotate_dialog_bg:I

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 68
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setupView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->isCancelable()Z

    move-result p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    .line 70
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->isCanceledOnTouchOutside()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->haveInputAbility()Z

    move-result v1

    .line 69
    invoke-static {p2, p0, p3, v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->setDialogWindowBackGround(Landroid/content/Context;Landroid/app/DialogFragment;ZZZ)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 105
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mNeedShow:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mHandler:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 108
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_17

    .line 109
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_17
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p1, p2, :cond_8

    .line 138
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->onBackPressed()Z

    move-result p0

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .registers 2

    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 96
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mDismissOnPause:Z

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mNeedShow:I

    .line 98
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_d
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 85
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 86
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 88
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$style;->setting_dialog_style:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1c
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 76
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 77
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 78
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_15
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    .line 188
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    .line 190
    :cond_8
    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 191
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->destroy()V

    .line 193
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mNeedShow:I

    .line 196
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setOrientation(I)V

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 592
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    if-eqz p0, :cond_7

    .line 593
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setProgress(I)V

    :cond_7
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 5

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 117
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mTag:Ljava/lang/String;

    .line 118
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 119
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 120
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 123
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 2

    .line 150
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mScreenFormType:I

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->mController:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->updateScreenFormType(I)V

    return-void
.end method
