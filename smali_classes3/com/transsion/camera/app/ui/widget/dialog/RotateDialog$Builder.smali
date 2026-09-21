.class public Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

.field public dialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    .line 249
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->dialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 250
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->createController(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->dialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->-$$Nest$fgetmController(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->apply(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->dialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iget-boolean v1, v1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->dialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    return-object p0
.end method

.method public hasSecondLayout(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->hasSecondLayout:Z

    return-object p0
.end method

.method public setCancelable(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCancelable:Z

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCancelOutSide:Z

    return-object p0
.end method

.method public setCustomClickListener(Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCustomLayoutClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public setMaxProgress(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 4

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsProgressDialog:Z

    .line 563
    iput p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mMaxProgress:I

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 4

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 341
    iput-object p2, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 353
    iput-object p2, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNumRate(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsNumRate:Z

    return-object p0
.end method

.method public setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOrientation:I

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 5

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p2, p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 315
    iput-object p2, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setProgressMessage(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 4

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mTextProgressMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setProgressMessageSingleLine(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mProgressMessageSingleLine:Z

    return-object p0
.end method

.method public setSecondSummary(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mSecondSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondSwitchState(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mSecondSwitchState:Z

    return-object p0
.end method

.method public setSecondTitile(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mSecondTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 6

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mItems:[Ljava/lang/CharSequence;

    .line 452
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput p2, p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCheckedItem:I

    .line 453
    iput-object p3, p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p2, 0x1

    .line 454
    iput-boolean p2, p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 5

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mItems:[Ljava/lang/CharSequence;

    .line 469
    iput p2, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCheckedItem:I

    .line 470
    iput-object p3, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 471
    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 4

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mView:Landroid/view/View;

    .line 502
    iput p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;
    .registers 3

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->P:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;

    iput-object p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 508
    iput p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mViewLayoutResId:I

    return-object p0
.end method
