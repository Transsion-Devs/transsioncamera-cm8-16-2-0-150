.class public Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hasSecondLayout:Z

.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAutoDismiss:Z

.field public mCancelOutSide:Z

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomLayoutClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mElegant:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsAlert:Z

.field public mIsAppDialogFragment:Z

.field public mIsButtonVertical:Z

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsInputDialog:Z

.field public mIsMultiChoice:Z

.field public mIsNumRate:Z

.field public mIsProgressDialog:Z

.field public mIsSingleChecked:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMaxProgress:I

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mNoBtnInsets:I

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOrientation:I

.field public mPositiveButtonEnable:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mProgressMessageSingleLine:Z

.field public mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public mSecondSummary:Ljava/lang/String;

.field public mSecondSwitchState:Z

.field public mSecondTitle:Ljava/lang/String;

.field public mSingleCheckedText:Ljava/lang/CharSequence;

.field public mTextProgressMessage:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTopTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mPositiveButtonEnable:Z

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCheckedItem:I

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mAutoDismiss:Z

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mElegant:Z

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsProgressDialog:Z

    .line 65
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->hasSecondLayout:Z

    .line 68
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mSecondSwitchState:Z

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mContext:Landroid/content/Context;

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCancelable:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCancelOutSide:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mTopTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setTopTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setTitleView(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setMessageView(Ljava/lang/CharSequence;)V

    .line 82
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setOrientation(I)V

    .line 83
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mViewLayoutResId:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setView(ILandroid/view/View;)V

    .line 84
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsAlert:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setIsAlert(Z)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 86
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mPositiveButtonEnable:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setPositiveButtonEnable(Z)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x3

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 89
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsButtonVertical:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setButtonVertical(Z)V

    .line 90
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mNoBtnInsets:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setNoBtnBottomInsets(I)V

    .line 91
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_6c

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_5e

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCheckedItems:[Z

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setMultiChoiceList([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    goto/16 :goto_cb

    .line 94
    :cond_5e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_cb

    .line 95
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mLabelColumn:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setMultiChoiceList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    goto :goto_cb

    .line 97
    :cond_6c
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_9e

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_7a

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSingleChoiceList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_cb

    .line 100
    :cond_7a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_8e

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_8e

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_cb

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mLabelColumn:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSingleChoiceList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_cb

    :cond_8e
    if-eqz v0, :cond_96

    .line 105
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_cb

    .line 107
    :cond_96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSingleChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_cb

    .line 109
    :cond_9e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_a8

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_cb

    .line 111
    :cond_a8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_bc

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_bc

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_cb

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mLabelColumn:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_cb

    :cond_bc
    if-eqz v0, :cond_c4

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_cb

    .line 118
    :cond_c4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    :cond_cb
    :goto_cb
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mSingleCheckedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d6

    .line 122
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsSingleChecked:Z

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSingleChecked(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 129
    :cond_d6
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_df

    .line 130
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCheckedItem:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setCheckedItem(I)V

    .line 133
    :cond_df
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsProgressDialog:Z

    if-eqz v0, :cond_ee

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mTextProgressMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mMaxProgress:I

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mProgressMessageSingleLine:Z

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsNumRate:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setProgress(Ljava/lang/CharSequence;IZZ)V

    .line 138
    :cond_ee
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->hasSecondLayout:Z

    if-eqz v0, :cond_fd

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mSecondTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mSecondSummary:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mSecondSwitchState:Z

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCustomLayoutClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSecondLayout(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 142
    :cond_fd
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mAutoDismiss:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setAutoDismiss(Z)V

    .line 143
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsInputDialog:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setIsInputDialog(Z)V

    .line 144
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mIsAppDialogFragment:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setIsAppDialogFragment(Z)V

    .line 145
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCancelable:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setCancelable(Z)V

    .line 146
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogParams;->mCancelOutSide:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
