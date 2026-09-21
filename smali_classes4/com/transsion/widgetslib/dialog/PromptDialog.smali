.class public Lcom/transsion/widgetslib/dialog/PromptDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/PromptDialog$Builder2;,
        Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;,
        Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;,
        Lcom/transsion/widgetslib/dialog/PromptDialog$InputDialogMsgPosition;,
        Lcom/transsion/widgetslib/dialog/PromptDialog$PromptDialogType;
    }
.end annotation


# static fields
.field public static final INPUT_DIALOG_MSG_POSITION_BOTTOM:I = 0x1

.field public static final INPUT_DIALOG_MSG_POSITION_TOP:I


# instance fields
.field private mController:Lcom/transsion/widgetslib/dialog/PromptController;

.field public mForceWidth:Ljava/lang/Integer;

.field private mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 64
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 65
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    .line 74
    invoke-static {p1, p2, p3}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;IZ)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 75
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-direct {p1, p2, p0, p3}, Lcom/transsion/widgetslib/dialog/PromptController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 69
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;Z)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 70
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;-><init>(Landroid/content/Context;I)V

    .line 80
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 81
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->getIsAppDialogFragment()Z

    move-result p1

    if-nez p1, :cond_12

    .line 82
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_12
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)I
    .registers 2

    .line 35
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;Z)I
    .registers 2

    .line 35
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/dialog/PromptDialog;)Lcom/transsion/widgetslib/dialog/PromptController;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    return-object p0
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .registers 3

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method private static resolveDialogTheme(Landroid/content/Context;IZ)I
    .registers 4

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_5

    return p1

    :cond_5
    if-eqz p2, :cond_10

    .line 98
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->IS_XOS:Z

    if-eqz p1, :cond_10

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->getDialogXosDiffStyle(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_10
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base:I

    return p0
.end method

.method private static resolveDialogTheme(Landroid/content/Context;Z)I
    .registers 3

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public applyForceWidth()V
    .registers 3

    .line 617
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mForceWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 619
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public getButton(I)Landroid/widget/Button;
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroid/view/View;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getListView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .registers 2

    .line 563
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;

    if-eqz v0, :cond_7

    .line 564
    invoke-interface {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;->onHide()V

    .line 566
    :cond_7
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 606
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->isCancelable()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptController;->isCanceledOnTouchOutside()Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/dialog/PromptController;->haveInputAbility()Z

    move-result v3

    invoke-static {v0, p0, v1, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    .line 607
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->setDialogWidth(Landroid/app/Dialog;)V

    .line 608
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mForceWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    .line 609
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->applyForceWidth()V

    .line 611
    :cond_23
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;

    if-eqz p0, :cond_2a

    .line 612
    invoke-interface {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 104
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 105
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->installContent()V

    .line 106
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->setDialogWidth(Landroid/app/Dialog;)V

    .line 107
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mForceWidth:Ljava/lang/Integer;

    if-eqz p1, :cond_12

    .line 108
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->applyForceWidth()V

    :cond_12
    return-void
.end method

.method public setBlackMode()V
    .registers 9

    .line 631
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setBlackMode()V

    .line 633
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner20:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 634
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_small_dialog_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_small_dialog_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_small_dialog_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_small_dialog_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 635
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_black_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 636
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    .line 159
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .registers 5

    .line 155
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setDimAmount(F)V
    .registers 3

    .line 623
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 624
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 625
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 p1, 0x2

    .line 626
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 627
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnPromptDialogStatusChangedListener(Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;

    return-void
.end method

.method public setPromptDialogPaddingTop(I)V
    .registers 2

    .line 174
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setPromptDialogPaddingTop(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleMaxTwoLines()V
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleMaxTwoLines()V

    return-void
.end method

.method public setTitleSingleLine()V
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleSingleLine()V

    return-void
.end method

.method public setTitleTextAlignment(I)V
    .registers 2

    .line 536
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    if-eqz p0, :cond_d

    .line 537
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 539
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    :cond_d
    return-void
.end method

.method public setTitleTextDirection(I)V
    .registers 2

    .line 545
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    if-eqz p0, :cond_d

    .line 546
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 548
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    :cond_d
    return-void
.end method

.method public setTitleViewBg(I)V
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleViewBg(I)V

    return-void
.end method

.method public setTopTitle(I)V
    .registers 3

    .line 134
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTopTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTopTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    .line 151
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setView(ILandroid/view/View;)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;

    if-eqz v0, :cond_7

    .line 556
    invoke-interface {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;->onShow()V

    .line 558
    :cond_7
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
