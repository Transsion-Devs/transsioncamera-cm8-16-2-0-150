.class public Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/OSLoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

.field private mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    const/high16 v1, 0x1000000

    if-lt p2, v1, :cond_c

    goto :goto_e

    :cond_c
    sget p2, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Loading:I

    :goto_e
    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;-><init>(Landroid/content/Context;ILcom/transsion/widgetslib/dialog/OSLoadingDialog$1;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    const/4 p2, 0x0

    .line 52
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 54
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 56
    sget-boolean p2, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_SCREEN_SUPPORT:Z

    if-eqz p2, :cond_37

    .line 57
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    sget p2, Lcom/transsion/widgetslib/R$string;->os_string_fold_dialog_title_verify:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_37
    return-void
.end method


# virtual methods
.method public centerInPage(Z)Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 93
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    return-object p0
.end method

.method public setMessage(I)Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;
    .registers 3

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->setMessage(IZ)Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;

    return-object p0
.end method

.method public setMessage(IZ)Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->setMessage(Ljava/lang/String;Z)Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;
    .registers 3

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->setMessage(Ljava/lang/String;Z)Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;Z)Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;
    .registers 7

    .line 67
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p2, :cond_b

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_dialog_loading_mask:I

    goto :goto_d

    :cond_b
    sget v1, Lcom/transsion/widgetslib/R$layout;->os_dialog_loading:I

    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mContainer:Landroid/view/View;

    .line 68
    sget v1, Lcom/transsion/widgetslib/R$id;->osLoading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 69
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    # setter for: Lcom/transsion/widgetslib/dialog/OSLoadingDialog;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;
    invoke-static {v1, v0}, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;->access$102(Lcom/transsion/widgetslib/dialog/OSLoadingDialog;Lcom/transsion/widgetslib/view/OSLoadingView;)Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 70
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mContainer:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->messageTv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_3a

    .line 73
    sget v0, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    goto :goto_3c

    :cond_3a
    sget v0, Lcom/transsion/widgetslib/R$color;->os_loading_view_dot_color:I

    :goto_3c
    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->setDotColor(I)V

    .line 75
    :cond_3f
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mContainer:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p2, :cond_57

    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_loading_dialog_ims_bg:I

    goto :goto_59

    :cond_57
    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_loading_dialog_bg:I

    :goto_59
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 77
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/OSLoadingDialog;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    if-eqz v0, :cond_7

    .line 100
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 102
    :cond_7
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;->mDialog:Lcom/transsion/widgetslib/dialog/OSLoadingDialog;

    return-object p0
.end method
