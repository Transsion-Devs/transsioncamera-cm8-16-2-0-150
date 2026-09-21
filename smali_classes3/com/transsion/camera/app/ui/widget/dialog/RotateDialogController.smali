.class public Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ButtonHandler;,
        Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;,
        Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;
    }
.end annotation


# instance fields
.field private mAutoDismiss:Z

.field private mBtnLayout:Landroid/widget/LinearLayout;

.field private final mButtonListener:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCancelOutSide:Z

.field private mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field private mCheckedView:Landroid/widget/CheckedTextView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mContentAdapter:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

.field private final mContext:Landroid/content/Context;

.field private mFrameContainer:Landroid/widget/FrameLayout;

.field private mFrameContainerTrueHeight:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasNegativeButton:Z

.field private mHasNeutralButton:Z

.field private mHasPositiveButton:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsAlert:Z

.field private mIsAppDialogFragment:Z

.field private mIsButtonVertical:Z

.field private mIsInputDialog:Z

.field private mIsNumRate:Z

.field private mListView:Landroid/view/View;

.field public mMaxProgress:I

.field private mNoBtnBottomInsets:I

.field private mOrientation:I

.field private mPositiveButtonEnable:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field public mProgressMessageSingleLine:Z

.field private mProgressMessageTv:Landroid/widget/TextView;

.field private mProgressRoot:Landroid/view/View;

.field private mProgressTv:Landroid/widget/TextView;

.field private mRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mScreenFormType:I

.field private mScreenTypeChanged:Z

.field private mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

.field public mSecondLayoutRoot:Landroid/view/View;

.field public mSecondSummary:Landroid/widget/TextView;

.field public mSecondSwitch:Landroid/widget/Switch;

.field public mSecondTitle:Landroid/widget/TextView;

.field public mTextProgressMessage:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonNegative(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/Button;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNegativeMessage(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/os/Message;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNeutral(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/Button;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNeutralMessage(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/os/Message;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonPositive(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/Button;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonPositiveMessage(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/os/Message;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckedView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/CheckedTextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedView:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentAdapter(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContentAdapter:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameContainer(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameContainerTrueHeight(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainerTrueHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetListPositiveButtonStatus(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setListPositiveButtonStatus()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItem:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsButtonVertical:Z

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mPositiveButtonEnable:Z

    .line 99
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mAutoDismiss:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsInputDialog:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsAppDialogFragment:Z

    .line 106
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenFormType:I

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenTypeChanged:Z

    .line 109
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$1;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    .line 131
    new-instance p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ButtonHandler;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHandler:Landroid/os/Handler;

    .line 132
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenFormType:I

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 6

    .line 827
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 829
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 832
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    .line 833
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_14
    if-gtz v0, :cond_17

    return v2

    :cond_17
    add-int/lit8 v0, v0, -0x1

    .line 841
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 842
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_14

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v1
.end method

.method private dealCheckItems([Ljava/lang/CharSequence;[Z)V
    .registers 7

    if-nez p2, :cond_8

    .line 421
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    return-void

    .line 423
    :cond_8
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_f

    .line 424
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    return-void

    .line 426
    :cond_f
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    const/4 v0, 0x0

    move v1, v0

    .line 428
    :goto_16
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 429
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    array-length v3, p2

    if-ge v1, v3, :cond_24

    aget-boolean v3, p2, v1

    if-eqz v3, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    move v3, v0

    :goto_25
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2a
    return-void
.end method

.method private generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;
    .registers 6

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list_compat:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 511
    sget v0, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_compat:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    .line 512
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 513
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x0

    .line 514
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 9

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 482
    sget v1, Lcom/transsion/widgetslib/R$id;->os_damp_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 483
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 484
    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 485
    instance-of v2, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    if-eqz v2, :cond_3c

    .line 486
    move-object v2, p1

    check-cast v2, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    invoke-virtual {v2, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 487
    instance-of p2, p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    if-eqz p2, :cond_3c

    .line 488
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContentAdapter:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    .line 489
    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->setWeakReference(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V

    .line 493
    :cond_3c
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 494
    invoke-static {v1, v3, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p1

    .line 495
    sget p2, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_parent:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 496
    instance-of v0, p2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    if-eqz v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 497
    check-cast p2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    .line 498
    invoke-virtual {p2, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V

    .line 499
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$7;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$7;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    :cond_5c
    return-object v1
.end method

.method private getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 707
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 709
    sget v1, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object p0
.end method

.method private getLayoutParamsCustomLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 700
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 702
    sget v1, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_content:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object p0
.end method

.method private getLayoutParamsTitleLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 714
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 716
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object p0
.end method

.method private hasPickView(Landroid/view/View;)Z
    .registers 7

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    instance-of v0, p1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz v0, :cond_c

    return v1

    .line 735
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    .line 738
    :cond_12
    check-cast p1, Landroid/view/ViewGroup;

    .line 739
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_18
    if-gtz v0, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    .line 747
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 748
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_18

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->hasPickView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    return v1
.end method

.method private haveHorPNOnly()Z
    .registers 2

    .line 755
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsButtonVertical:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasPositiveButton:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNegativeButton:Z

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNeutralButton:Z

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private initProgressView()V
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_dialog_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressRoot:Landroid/view/View;

    .line 202
    sget v1, Lcom/transsion/widgetslib/R$id;->dialog_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressRoot:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->dialog_progress_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressTv:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressRoot:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->text_progress_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressMessageTv:Landroid/widget/TextView;

    .line 206
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsNumRate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mMaxProgress:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressMessageTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressMessageTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTextProgressMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressMessageTv:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressMessageSingleLine:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressMessageTv:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressMessageSingleLine:Z

    if-eqz v3, :cond_5c

    goto :goto_60

    :cond_5c
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    :goto_60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressRoot:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setView(ILandroid/view/View;)V

    return-void
.end method

.method private noButtonInsets()V
    .registers 3

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mNoBtnBottomInsets:I

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private setIconContent(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 916
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->iconImg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_13

    const/4 v0, 0x0

    .line 918
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    return-void
.end method

.method private setListPositiveButtonStatus()V
    .registers 5

    .line 470
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mPositiveButtonEnable:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    if-eqz v1, :cond_2d

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContentAdapter:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_1d

    .line 472
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->getCheckedItemCount()I

    move-result p0

    if-lez p0, :cond_19

    move v2, v3

    :cond_19
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 473
    :cond_1d
    instance-of p0, v1, Landroid/widget/ListView;

    if-eqz p0, :cond_2d

    .line 474
    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result p0

    if-lez p0, :cond_2a

    move v2, v3

    :cond_2a
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2d
    return-void
.end method

.method private setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .registers 4

    .line 454
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$6;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    return-void
.end method

.method private setupButtons(Z)V
    .registers 7

    .line 759
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasPositiveButton:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNegativeButton:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNeutralButton:Z

    if-nez v0, :cond_10

    .line 760
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->noButtonInsets()V

    return-void

    :cond_10
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 762
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->canTextInput(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 763
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsButtonVertical:Z

    goto :goto_2b

    .line 765
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mBtnLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_dialog_horizontal_divider:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 768
    :goto_2b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsButtonVertical:Z

    if-eqz v1, :cond_34

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_vertical:I

    goto :goto_36

    :cond_34
    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_horizontal:I

    :goto_36
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 770
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->haveHorPNOnly()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 771
    sget v1, Lcom/transsion/widgetslib/R$id;->view_divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 772
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 775
    :cond_4d
    sget v1, Lcom/transsion/widgetslib/R$id;->btn_positive:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositive:Landroid/widget/Button;

    .line 776
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasPositiveButton:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_90

    .line 777
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedView:Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_77

    .line 780
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_7e

    .line 782
    :cond_77
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositive:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mPositiveButtonEnable:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 785
    :goto_7e
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsAlert:Z

    if-eqz v1, :cond_93

    .line 786
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_dialog_positive_btn_alert_color:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_93

    .line 789
    :cond_90
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 792
    :cond_93
    :goto_93
    sget v1, Lcom/transsion/widgetslib/R$id;->btn_negative:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNegative:Landroid/widget/Button;

    .line 793
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNegativeButton:Z

    if-eqz v2, :cond_ae

    .line 794
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b1

    .line 797
    :cond_ae
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 800
    :goto_b1
    sget v1, Lcom/transsion/widgetslib/R$id;->btn_neutral:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNeutral:Landroid/widget/Button;

    .line 801
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNeutralButton:Z

    if-eqz v2, :cond_cc

    .line 802
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_cf

    .line 805
    :cond_cc
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 808
    :goto_cf
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 809
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_133

    .line 810
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 811
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsButtonVertical:Z

    if-eqz v1, :cond_f4

    .line 812
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasPositiveButton:Z

    mul-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNegativeButton:Z

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNeutralButton:Z

    mul-int/2addr p1, v2

    add-int/2addr p1, v1

    .line 815
    :cond_f4
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsInputDialog:Z

    if-eqz v1, :cond_113

    .line 816
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p1, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    .line 817
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_divider_margin_10:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    invoke-virtual {v1, v0, v0, v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void

    .line 819
    :cond_113
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    .line 820
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    if-eqz p0, :cond_128

    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_divider_margin_10:I

    goto :goto_12a

    :cond_128
    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_divider_margin:I

    :goto_12a
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p1, p0

    invoke-virtual {v1, v0, v0, v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_133
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 994
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    .line 995
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 997
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mBtnLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_e

    .line 998
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_e
    return-void
.end method

.method public getTitleView()Landroid/widget/TextView;
    .registers 2

    .line 863
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_d

    .line 864
    sget v0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public haveInputAbility()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsInputDialog:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_19

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->canTextInput(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public isCancelable()Z
    .registers 1

    .line 961
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCancelable:Z

    return p0
.end method

.method public isCanceledOnTouchOutside()Z
    .registers 1

    .line 969
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCancelOutSide:Z

    return p0
.end method

.method public onConfigurationChanged()V
    .registers 4

    .line 1010
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenTypeChanged:Z

    if-eqz v0, :cond_16

    .line 1011
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1012
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenFormType:I

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_11

    :cond_f
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mOrientation:I

    :goto_11
    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1014
    :cond_14
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenTypeChanged:Z

    :cond_16
    return-void
.end method

.method public setAutoDismiss(Z)V
    .registers 2

    .line 973
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mAutoDismiss:Z

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 6

    .line 307
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    if-nez p4, :cond_10

    if-eqz p3, :cond_10

    .line 309
    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_10
    const/4 p3, -0x3

    const/4 v0, 0x1

    if-eq p1, p3, :cond_30

    const/4 p3, -0x2

    if-eq p1, p3, :cond_29

    const/4 p3, -0x1

    if-ne p1, p3, :cond_21

    .line 324
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 325
    iput-object p4, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 326
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasPositiveButton:Z

    return-void

    .line 329
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_29
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 320
    iput-object p4, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 321
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNegativeButton:Z

    return-void

    .line 314
    :cond_30
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 315
    iput-object p4, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 316
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mHasNeutralButton:Z

    :cond_36
    return-void
.end method

.method public setButtonVertical(Z)V
    .registers 2

    .line 977
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsButtonVertical:Z

    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    .line 957
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 2

    .line 965
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCancelOutSide:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .registers 3

    .line 553
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItem:I

    .line 554
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_11

    .line 555
    check-cast p0, Landroid/widget/ListView;

    const/4 v0, 0x1

    .line 556
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 557
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_11
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_8

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    return-void

    .line 905
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1b

    .line 906
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    .line 909
    :cond_1b
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setIconContent(Landroid/graphics/drawable/Drawable;)V

    .line 910
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIsAlert(Z)V
    .registers 2

    .line 875
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsAlert:Z

    return-void
.end method

.method public setIsAppDialogFragment(Z)V
    .registers 2

    .line 939
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsAppDialogFragment:Z

    return-void
.end method

.method public setIsInputDialog(Z)V
    .registers 2

    .line 935
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsInputDialog:Z

    return-void
.end method

.method public setList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .line 358
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 361
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 362
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 365
    :cond_17
    new-instance p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;-><init>(Ljava/util/List;)V

    .line 366
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 368
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 535
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$9;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$9;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    return-void
.end method

.method public setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 346
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$4;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$4;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    return-void
.end method

.method public setList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 340
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 341
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;-><init>(Ljava/util/List;)V

    .line 342
    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setMessageView(Ljava/lang/CharSequence;)V
    .registers 6

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_message:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/damping/DampingLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    .line 166
    sget p0, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 167
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_20
    return-void
.end method

.method public setMultiChoiceList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .registers 6

    .line 438
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 441
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 442
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 445
    :cond_17
    new-instance p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    const/4 p2, 0x2

    invoke-direct {p1, p3, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 446
    invoke-direct {p0, p1, p4}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 448
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setMultiChoiceList([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .registers 5

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->dealCheckItems([Ljava/lang/CharSequence;[Z)V

    .line 414
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 415
    new-instance p2, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 416
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public setNoBtnBottomInsets(I)V
    .registers 2

    .line 725
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mNoBtnBottomInsets:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    .line 983
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenFormType:I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    move v0, p1

    .line 987
    :goto_8
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v2, :cond_f

    .line 988
    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 990
    :cond_f
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mOrientation:I

    return-void
.end method

.method public setPositiveButtonEnable(Z)V
    .registers 2

    .line 336
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mPositiveButtonEnable:Z

    return-void
.end method

.method public setProgress(I)V
    .registers 6

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressRoot:Landroid/view/View;

    if-nez v0, :cond_7

    .line 265
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->initProgressView()V

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mMaxProgress:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mMaxProgress:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mMaxProgress:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 271
    const-string/jumbo v1, "tr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "%%%d"

    const/4 v3, 0x0

    if-nez v1, :cond_83

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 272
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtlDigit()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 276
    :cond_6b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d%%"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 279
    :cond_83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(Ljava/lang/CharSequence;IZZ)V
    .registers 5

    .line 255
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTextProgressMessage:Ljava/lang/CharSequence;

    .line 256
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mMaxProgress:I

    .line 257
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mProgressMessageSingleLine:Z

    .line 258
    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mIsNumRate:Z

    .line 260
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->initProgressView()V

    return-void
.end method

.method public setSecondLayout(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .registers 7

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondLayoutRoot:Landroid/view/View;

    if-eqz v0, :cond_51

    .line 223
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->preference_list_second_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 225
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondLayoutRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->custom_switch_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_26

    .line 229
    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 231
    :cond_26
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondLayoutRoot:Landroid/view/View;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->preference_list_second_summary:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_47

    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondSummary:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_47

    .line 236
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mSecondLayoutRoot:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$3;

    invoke-direct {p2, p0, p4}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$3;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_51
    return-void
.end method

.method public setSingleChecked(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V
    .registers 7

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 173
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_singlechecked:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setView(ILandroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_39

    .line 175
    sget v2, Lcom/transsion/widgetslib/R$id;->text_choice:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_39

    .line 177
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    .line 178
    invoke-static {v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v2

    .line 177
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedView:Landroid/widget/CheckedTextView;

    new-instance p2, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$2;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_39
    return-void
.end method

.method public setSingleChoiceList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .line 397
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 400
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 401
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 404
    :cond_17
    new-instance p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 405
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 407
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setSingleChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 519
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$8;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$8;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    .line 528
    instance-of p0, p1, Landroid/widget/ListView;

    if-eqz p0, :cond_15

    .line 529
    check-cast p1, Landroid/widget/ListView;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_15
    return-void
.end method

.method public setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 380
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$5;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$5;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    return-void
.end method

.method public setSingleChoiceList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    .line 374
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 375
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 376
    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setTitleView(Ljava/lang/CharSequence;)V
    .registers 6

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_19

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    .line 145
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 146
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-void
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)V
    .registers 6

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    .line 156
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/widgetslib/R$id;->text_top_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    return-void
.end method

.method public setView(ILandroid/view/View;)V
    .registers 7

    if-nez p1, :cond_4

    if-eqz p2, :cond_39

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_view:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1f

    .line 292
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_22

    .line 294
    :cond_1f
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    :goto_22
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainerTrueHeight:I

    if-nez p1, :cond_39

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainerTrueHeight:I

    :cond_39
    return-void
.end method

.method public setupView(Landroid/view/View;)V
    .registers 12

    .line 563
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->rotate_layout_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 564
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$10;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 571
    sget v0, Lcom/transsion/widgetslib/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    .line 572
    sget v0, Lcom/transsion/widgetslib/R$id;->btnLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mBtnLayout:Landroid/widget/LinearLayout;

    .line 574
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 575
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 576
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    if-eqz p1, :cond_3f

    move v1, v0

    goto :goto_40

    :cond_3f
    move v1, v2

    .line 577
    :goto_40
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    if-eqz v3, :cond_46

    move v3, v0

    goto :goto_47

    :cond_46
    move v3, v2

    .line 578
    :goto_47
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4d

    move v4, v0

    goto :goto_4e

    :cond_4d
    move v4, v2

    .line 579
    :goto_4e
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    if-eqz v5, :cond_54

    move v5, v0

    goto :goto_55

    :cond_54
    move v5, v2

    :goto_55
    if-eqz v1, :cond_69

    .line 582
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 583
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    sget v6, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    invoke-virtual {p1, v6}, Landroid/view/View;->setId(I)V

    :cond_69
    if-eqz v3, :cond_af

    if-eqz v1, :cond_80

    .line 588
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v2, v6, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9a

    :cond_80
    if-eqz v4, :cond_95

    .line 590
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v2, v2, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9a

    .line 592
    :cond_95
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_9a
    if-eqz v1, :cond_a8

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_af

    .line 598
    :cond_a8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_af
    :goto_af
    if-eqz v5, :cond_c4

    if-nez v3, :cond_c4

    .line 604
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 605
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c4
    if-eqz v5, :cond_f8

    if-eqz v1, :cond_f8

    .line 610
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_f8

    .line 612
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    .line 613
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_dialog_title_padding_end:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    .line 614
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_dialog_title_padding_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 612
    invoke-virtual {p1, v6, v2, v7, v8}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_f8
    if-eqz v5, :cond_101

    if-nez v1, :cond_101

    .line 619
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_101
    const/4 p1, -0x1

    if-eqz v4, :cond_1fa

    const/4 v6, -0x2

    if-eqz v3, :cond_117

    .line 625
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 626
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 627
    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_164

    :cond_117
    if-eqz v5, :cond_12b

    .line 629
    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-eq v7, p1, :cond_164

    move v2, v0

    goto :goto_164

    .line 632
    :cond_12b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->hasPickView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_164

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_164

    .line 633
    sget v7, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_164

    .line 635
    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_body_font:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 636
    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v8, v7

    const/high16 v9, 0x3fc00000    # 1.5f

    div-float/2addr v8, v9

    float-to-int v8, v8

    .line 637
    invoke-virtual {v0, v7, v2, v8, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_164
    :goto_164
    const/4 v0, 0x3

    if-eqz v3, :cond_198

    .line 642
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 643
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->getLayoutParamsCustomLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_1fa

    .line 645
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1fa

    .line 647
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 648
    sget v3, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_parent:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1fa

    :cond_198
    if-eqz v5, :cond_1d7

    .line 653
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mListView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 654
    new-instance v5, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;

    invoke-direct {v5, p0, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$11;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 669
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 670
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_1fa

    .line 672
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1fa

    .line 674
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 675
    sget v3, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_parent:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1fa

    .line 680
    :cond_1d7
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_1fa

    .line 682
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1fa

    .line 684
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 685
    sget v3, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_parent:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1fa
    :goto_1fa
    if-eqz v1, :cond_211

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_211

    .line 693
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mTitleView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->getLayoutParamsTitleLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    :cond_211
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setupButtons(Z)V

    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 3

    .line 1003
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenFormType:I

    if-eq v0, p1, :cond_9

    .line 1004
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenFormType:I

    const/4 p1, 0x1

    .line 1005
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mScreenTypeChanged:Z

    :cond_9
    return-void
.end method
