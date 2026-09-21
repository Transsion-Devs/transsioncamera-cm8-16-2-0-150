.class public Lcom/transsion/widgetslib/dialog/ProgressDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressDialog"


# instance fields
.field private isNumRate:Z

.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mHasTitle:Z

.field private mLlIntro:Landroid/widget/LinearLayout;

.field private mMaxProgress:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextProgressMessage:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 40
    iput v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->isNumRate:Z

    .line 42
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 49
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v1, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 50
    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;

    .line 53
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;

    .line 54
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_progress_dialog_no_btn_insets:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNoBtnBottomInsets(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 55
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object p2, p2, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_progress_dialog_no_btn_insets_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->setPromptDialogPaddingTop(I)V

    .line 57
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    if-nez p1, :cond_46

    .line 58
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->initView()V

    :cond_46
    return-void
.end method

.method private dealProgressMessagePadding()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    if-eqz v0, :cond_1f

    .line 71
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mLlIntro:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_progress_intro_padding_top:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1f
    return-void
.end method

.method private initView()V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_dialog_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    .line 187
    sget v1, Lcom/transsion/widgetslib/R$id;->dialog_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 188
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->dialog_progress_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->text_progress_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 191
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 192
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_61

    .line 193
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_progress_bar_margin_top_sh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 194
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_progress_bar_margin_bottom_sh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 196
    :cond_61
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_progress_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPromptDialogPaddingTop(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 199
    :cond_72
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->ll_intro:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mLlIntro:Landroid/widget/LinearLayout;

    .line 201
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->isNumRate:Z

    if-eqz v0, :cond_91

    .line 202
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :cond_91
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 3

    .line 224
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->isNumRate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 225
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_a
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p0
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setIcon(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setIcon(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 92
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 85
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setMaxProgress(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 208
    iput p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    .line 209
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-object p0
.end method

.method public setMessage(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setNumRate(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 2

    .line 240
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->isNumRate:Z

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setProgress(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 152
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->initView()V

    .line 154
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 156
    iget v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 157
    const-string v1, "tr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "%%%d"

    const/4 v3, 0x0

    if-nez v1, :cond_83

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_83

    .line 164
    :cond_4a
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtlDigit()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 168
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0

    .line 170
    :cond_6b
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%d%%"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0

    .line 159
    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setProgressMessage(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_13
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setProgressMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_d
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setProgressMessageSingleLine(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 126
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 127
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    :cond_d
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    :goto_11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_14
    return-object p0
.end method

.method public setSecondaryProgress(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 179
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->initView()V

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 78
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 65
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 1

    .line 234
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-object p0
.end method
