.class public Lcom/transsion/widgetslib/dialog/SelectDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;

.field private mBtnPositiveText:Ljava/lang/CharSequence;

.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mIsAll:Z

.field private mIsCount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/SelectDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mIsCount:Z

    .line 36
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mIsAll:Z

    .line 44
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/SelectDialog;)Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mAdapter:Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/SelectDialog;)Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/dialog/SelectDialog;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mIsCount:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/dialog/SelectDialog;)Ljava/lang/CharSequence;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBtnPositiveText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private setListView(Ljava/util/List;Z)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/entity/SelectDialogEntity;",
            ">;Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_select_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    sget v1, Lcom/transsion/widgetslib/R$id;->select_dialog_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 80
    new-instance v2, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v2, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mAdapter:Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    new-instance p1, Lcom/transsion/widgetslib/dialog/SelectDialog$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/dialog/SelectDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/SelectDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private setPositiveButton(Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBtnPositiveText:Ljava/lang/CharSequence;

    new-instance v2, Lcom/transsion/widgetslib/dialog/SelectDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/transsion/widgetslib/dialog/SelectDialog$2;-><init>(Lcom/transsion/widgetslib/dialog/SelectDialog;Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method


# virtual methods
.method public create(Z)Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p1, :cond_13

    .line 142
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 144
    :cond_13
    iget-boolean p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mIsCount:Z

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mIsAll:Z

    if-eqz p1, :cond_25

    .line 145
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v0, Lcom/transsion/widgetslib/dialog/SelectDialog$3;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/SelectDialog$3;-><init>(Lcom/transsion/widgetslib/dialog/SelectDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 153
    :cond_25
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setMessage(I)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(ILcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBtnPositiveText:Ljava/lang/CharSequence;

    .line 104
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/dialog/SelectDialog;->setPositiveButton(Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBtnPositiveText:Ljava/lang/CharSequence;

    .line 98
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/dialog/SelectDialog;->setPositiveButton(Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;)V

    return-object p0
.end method

.method public setSelectItems(Ljava/util/List;ZZ)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/entity/SelectDialogEntity;",
            ">;ZZ)",
            "Lcom/transsion/widgetslib/dialog/SelectDialog;"
        }
    .end annotation

    .line 70
    iput-boolean p3, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mIsCount:Z

    .line 71
    iput-boolean p2, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mIsAll:Z

    .line 72
    iget-object p3, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/SelectDialog;->setListView(Ljava/util/List;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/SelectDialog;
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 2

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/SelectDialog;->show(Z)Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    return-object p0
.end method

.method public show(Z)Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/SelectDialog;->create(Z)Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 158
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    .line 159
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method
