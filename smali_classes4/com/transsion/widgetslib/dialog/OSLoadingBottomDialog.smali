.class public Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private loadingText:Ljava/lang/String;

.field private mAppDialogFragment:Z

.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x0

    .line 33
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 34
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;)Lcom/transsion/widgetslib/view/OSLoadingView;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_dialog_loading_bottom:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    sget v1, Lcom/transsion/widgetslib/R$id;->messageTv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->loadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget v1, Lcom/transsion/widgetslib/R$id;->osLoading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 48
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 49
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 51
    sget v2, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 52
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mAppDialogFragment:Z

    if-nez v2, :cond_44

    .line 53
    new-instance v2, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog$1;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_44
    const/4 p0, 0x0

    .line 61
    invoke-virtual {v1, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0
.end method

.method public dismissOprate()V
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz p0, :cond_7

    .line 67
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    :cond_7
    return-void
.end method

.method public setAppDialogFragment(Z)Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mAppDialogFragment:Z

    return-object p0
.end method

.method public setMessage(I)Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->setMessage(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->loadingText:Ljava/lang/String;

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 2

    .line 71
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 72
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    .line 73
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method
