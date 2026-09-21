.class public Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final P:Lcom/transsion/widgetslib/dialog/PromptParams;

.field public dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 187
    # invokes: Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;I)I
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$000(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    .line 188
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    # invokes: Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;I)I
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$000(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 192
    # invokes: Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;Z)I
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$100(Landroid/content/Context;Z)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    .line 193
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    # invokes: Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;Z)I
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$100(Landroid/content/Context;Z)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 6

    .line 513
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;
    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$200(Lcom/transsion/widgetslib/dialog/PromptDialog;)Lcom/transsion/widgetslib/dialog/PromptController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptParams;->apply(Lcom/transsion/widgetslib/dialog/PromptController;)V

    .line 514
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-boolean v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 515
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-boolean v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 516
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-boolean v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAppDialogFragment:Z

    if-nez v1, :cond_33

    .line 517
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 518
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 520
    :cond_33
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_3e

    .line 521
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 523
    :cond_3e
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-boolean v3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    iget-boolean v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    # getter for: Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;
    invoke-static {v2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$200(Lcom/transsion/widgetslib/dialog/PromptDialog;)Lcom/transsion/widgetslib/dialog/PromptController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/widgetslib/dialog/PromptController;->haveInputAbility()Z

    move-result v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/transsion/widgetslib/util/Utils;->setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    .line 524
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 347
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 348
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 354
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setAutoDismiss(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAutoDismiss:Z

    return-object p0
.end method

.method public setButtonVertical(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 498
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsButtonVertical:Z

    return-object p0
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 360
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCursor:Landroid/database/Cursor;

    .line 361
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mLabelColumn:Ljava/lang/String;

    .line 362
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setElegantTextHeight(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mElegant:Z

    return-object p0
.end method

.method public setIcon(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setInitPositiveButtonEnable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonEnable:Z

    return-object p0
.end method

.method public setInputDialog(Z)V
    .registers 2

    .line 479
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsInputDialog:Z

    return-void
.end method

.method public setIsAppDialogFragment(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 483
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAppDialogFragment:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 336
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 342
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(II)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mMessage:Ljava/lang/CharSequence;

    .line 227
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mInputMessagePosition:I

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mMessage:Ljava/lang/CharSequence;

    .line 248
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mInputMessagePosition:I

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 6

    .line 381
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 382
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItems:[Z

    .line 383
    iput-object p3, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 p2, 0x1

    .line 384
    iput-boolean p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 6

    .line 407
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCursor:Landroid/database/Cursor;

    .line 408
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 409
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mLabelColumn:Ljava/lang/String;

    .line 410
    iput-object p4, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 p1, 0x1

    .line 411
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 390
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 391
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItems:[Z

    .line 392
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 p1, 0x1

    .line 393
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 287
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 293
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 299
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 305
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNoBtnBottomInsets(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNoBtnInsets:I

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 259
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(IZLandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 6

    .line 271
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 272
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p3, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    iput-boolean p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAlert:Z

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 265
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 279
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 280
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 281
    iput-boolean p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAlert:Z

    return-object p0
.end method

.method public setPromptDialogPaddingTop(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$200(Lcom/transsion/widgetslib/dialog/PromptDialog;)Lcom/transsion/widgetslib/dialog/PromptController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setPromptDialogPaddingTop(I)V

    return-object p0
.end method

.method public setSingleChecked(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 399
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mSingleCheckedText:Ljava/lang/CharSequence;

    .line 400
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 401
    iput-boolean p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChecked:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 6

    .line 417
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 418
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 419
    iput-object p3, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p2, 0x1

    .line 420
    iput-boolean p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 6

    .line 426
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCursor:Landroid/database/Cursor;

    .line 427
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 428
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mLabelColumn:Ljava/lang/String;

    .line 429
    iput-object p4, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 430
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 444
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 445
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 446
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 447
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 454
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 455
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 456
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 5

    .line 436
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 437
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 438
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 439
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTopTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTopTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTopTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 4

    .line 467
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mView:Landroid/view/View;

    .line 468
    iput p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 474
    iput p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 1

    .line 528
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 529
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-object p0
.end method
