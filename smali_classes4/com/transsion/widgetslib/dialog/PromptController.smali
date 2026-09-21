.class public final Lcom/transsion/widgetslib/dialog/PromptController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;,
        Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;,
        Lcom/transsion/widgetslib/dialog/PromptController$ButtonHandler;
    }
.end annotation


# instance fields
.field private buttonsView:Landroid/view/View;

.field private dividerView:Landroid/view/View;

.field private mAutoDismiss:Z

.field private final mBtnLayout:Landroid/widget/LinearLayout;

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

.field private final mContainer:Landroid/widget/RelativeLayout;

.field private mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mFrameContainer:Landroid/widget/FrameLayout;

.field private mFrameContainerTrueHeight:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasNegativeButton:Z

.field private mHasNeutralButton:Z

.field private mHasPositiveButton:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInputMessagePosition:I

.field private mIsAlert:Z

.field private mIsAppDialogFragment:Z

.field private mIsButtonVertical:Z

.field private mIsInputDialog:Z

.field private mListView:Landroid/view/View;

.field private mNoBtnBottomInsets:I

.field private mPositiveButtonEnable:Z

.field private mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

.field private mTitleView:Landroid/widget/LinearLayout;

.field private final mView:Landroid/widget/FrameLayout;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 7

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mPositiveButtonEnable:Z

    const/4 v2, 0x0

    .line 88
    iput-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 93
    iput-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 98
    iput-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 101
    iput-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsInputDialog:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAppDialogFragment:Z

    .line 109
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptController$1;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 134
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 136
    iput-object p3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    .line 137
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    .line 139
    invoke-virtual {p3, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v0, 0x50

    .line 140
    invoke-virtual {p3, v0}, Landroid/view/Window;->setGravity(I)V

    .line 144
    sget p3, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_container:I

    invoke-virtual {p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    .line 145
    new-instance p3, Lcom/transsion/widgetslib/dialog/PromptController$2;

    invoke-direct {p3, p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController$2;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    sget p1, Lcom/transsion/widgetslib/R$id;->mContainer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    .line 155
    sget p1, Lcom/transsion/widgetslib/R$id;->btnLayout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/dialog/PromptController;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelOutSide:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/CheckedTextView;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setListPositiveButtonStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/view/View;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/dialog/PromptController;)I
    .registers 1

    .line 61
    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainerTrueHeight:I

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/FrameLayout;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/Context;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/dialog/PromptController;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Handler;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelable:Z

    return p0
.end method

.method private varargs calculateAndUpdateLayout([Ljava/lang/String;)V
    .registers 9

    .line 797
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_6
    if-ge v3, v0, :cond_18

    aget-object v5, p1, v3

    .line 798
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_15

    .line 800
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    move-object v1, v5

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 804
    :cond_18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 805
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 806
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 807
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 808
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->countButtons()I

    move-result v1

    if-lez v1, :cond_6b

    .line 809
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->countButtons()I

    move-result v3

    mul-int/2addr v3, v0

    sub-int/2addr v1, v3

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->countButtons()I

    move-result v0

    div-int/2addr v1, v0

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_68

    const/4 p1, 0x1

    goto :goto_69

    :cond_68
    move p1, v2

    .line 810
    :goto_69
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    .line 813
    :cond_6b
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    .line 814
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    if-eqz v0, :cond_74

    .line 815
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_vertical:I

    goto :goto_76

    .line 816
    :cond_74
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_horizontal:I

    :goto_76
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    .line 813
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->buttonsView:Landroid/view/View;

    .line 819
    sget v0, Lcom/transsion/widgetslib/R$id;->view_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->dividerView:Landroid/view/View;

    .line 820
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->buttonsView:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->btn_positive:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    .line 821
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->buttonsView:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->btn_negative:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    .line 822
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->buttonsView:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->btn_neutral:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    .line 824
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setBtnHeight()V

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 6

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 922
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 926
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    .line 927
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_14
    if-lez v0, :cond_29

    add-int/lit8 v0, v0, -0x1

    .line 930
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 931
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_14

    invoke-static {v3}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v1

    :cond_29
    return v2
.end method

.method private countButtons()I
    .registers 2

    .line 905
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    if-eqz v0, :cond_12

    .line 906
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-eqz v0, :cond_10

    .line 907
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x3

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private dealCheckItems([Ljava/lang/CharSequence;[Z)V
    .registers 7

    if-nez p2, :cond_8

    .line 389
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    return-void

    .line 392
    :cond_8
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_f

    .line 393
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    return-void

    .line 395
    :cond_f
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    const/4 v0, 0x0

    move v1, v0

    .line 396
    :goto_16
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 397
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

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

    .line 506
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list_compat:I

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 507
    sget v0, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_compat:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    .line 508
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 509
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x0

    .line 510
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")",
            "Landroidx/recyclerview/widget/RecyclerView;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 474
    sget v1, Lcom/transsion/widgetslib/R$id;->os_damp_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 475
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 476
    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 477
    instance-of v2, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    if-eqz v2, :cond_3c

    .line 478
    move-object v2, p1

    check-cast v2, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    invoke-virtual {v2, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 479
    instance-of p2, p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    if-eqz p2, :cond_3c

    .line 480
    move-object p2, p1

    check-cast p2, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    .line 481
    invoke-virtual {p2, p0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->setWeakReference(Lcom/transsion/widgetslib/dialog/PromptController;)V

    .line 484
    :cond_3c
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 486
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    if-nez p1, :cond_60

    .line 487
    invoke-static {v1, v3, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p1

    .line 489
    sget p2, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_parent:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 490
    instance-of v0, p2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    if-eqz v0, :cond_60

    if-eqz p1, :cond_60

    .line 491
    check-cast p2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    .line 492
    invoke-virtual {p2, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V

    .line 493
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$7;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$7;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    :cond_60
    return-object v1
.end method

.method private getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 724
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 726
    sget v1, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object p0
.end method

.method private getLayoutParamsCustomLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 701
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 703
    sget v1, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_content:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object p0
.end method

.method private getLayoutParamsCustomLayoutBelowTitle()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 708
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 710
    sget v1, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object p0
.end method

.method private getLayoutParamsCustomMessage()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4

    .line 715
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 717
    sget v2, Lcom/transsion/widgetslib/R$id;->os_module_dialog_custom_view:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 718
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_input_message_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 719
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_input_message_margin_bottom:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method private getLayoutParamsTitleLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 731
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 733
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object p0
.end method

.method private hasPickView(Landroid/view/View;)Z
    .registers 7

    .line 750
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    instance-of v0, p1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz v0, :cond_c

    return v1

    .line 754
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    .line 758
    :cond_12
    check-cast p1, Landroid/view/ViewGroup;

    .line 759
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_18
    if-lez v0, :cond_2d

    add-int/lit8 v0, v0, -0x1

    .line 762
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 763
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_18

    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->hasPickView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    return v1

    :cond_2d
    return v2
.end method

.method private haveHorPNOnly()Z
    .registers 2

    .line 901
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private isBottomMsgInputDialog()Z
    .registers 2

    .line 697
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsInputDialog:Z

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInputMessagePosition:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 5

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 173
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p1

    neg-int v0, p1

    if-lt p0, v0, :cond_28

    if-lt p2, v0, :cond_28

    .line 175
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    if-gt p0, v0, :cond_28

    .line 176
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p1

    if-le p2, p0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    return p0

    :cond_28
    :goto_28
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    const-string v0, "widgetslib.Utils"

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private noButtonInsets()V
    .registers 3

    .line 746
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mNoBtnBottomInsets:I

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private setBtnHeight()V
    .registers 6

    .line 828
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->haveHorPNOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->dividerView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 829
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 831
    :cond_e
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_4e

    .line 832
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setBtnTextExceedSize(Landroid/widget/Button;)V

    .line 834
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_35

    .line 836
    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3c

    .line 838
    :cond_35
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mPositiveButtonEnable:Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 840
    :goto_3c
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAlert:Z

    if-eqz v0, :cond_53

    .line 841
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_dialog_positive_btn_alert_color:I

    .line 842
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 841
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_53

    .line 845
    :cond_4e
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 848
    :cond_53
    :goto_53
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-eqz v0, :cond_6b

    .line 849
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setBtnTextExceedSize(Landroid/widget/Button;)V

    .line 851
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_70

    .line 853
    :cond_6b
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 856
    :goto_70
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-eqz v0, :cond_88

    .line 857
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setBtnTextExceedSize(Landroid/widget/Button;)V

    .line 859
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8d

    .line 861
    :cond_88
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 864
    :goto_8d
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    if-eqz v0, :cond_aa

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    if-eqz v0, :cond_aa

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-eqz v0, :cond_aa

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-eqz v0, :cond_aa

    .line 865
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_dialog_positive_btn_text_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 873
    :cond_aa
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->buttonsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 876
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_117

    .line 877
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 878
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    if-eqz v2, :cond_de

    .line 879
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_height_vertical:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 880
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    mul-int/2addr v2, v0

    iget-boolean v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 882
    :cond_de
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsInputDialog:Z

    if-eqz v2, :cond_ee

    .line 883
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void

    .line 885
    :cond_ee
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 886
    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_space050:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 887
    iget-boolean v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    if-eqz v4, :cond_10b

    add-int/2addr v3, v2

    .line 888
    :cond_10b
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v0, v3

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_117
    return-void
.end method

.method private setBtnTextExceedSize(Landroid/widget/Button;)V
    .registers 4

    .line 1256
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptController$11;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController$11;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setIconContent(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1014
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/widgetslib/R$id;->iconImg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1015
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 1017
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1018
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    if-eqz v1, :cond_3c

    .line 1021
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_title_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_title_padding_end:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v1, p1, v2, p0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3c
    return-void
.end method

.method private setListPositiveButtonStatus()V
    .registers 5

    .line 463
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mPositiveButtonEnable:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    if-eqz v1, :cond_2d

    .line 464
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_1d

    .line 465
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->getCheckedItemCount()I

    move-result p0

    if-lez p0, :cond_19

    move v2, v3

    :cond_19
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 466
    :cond_1d
    instance-of p0, v1, Landroid/widget/ListView;

    if-eqz p0, :cond_2d

    .line 467
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Landroid/content/DialogInterface$OnMultiChoiceClickListener;",
            ")V"
        }
    .end annotation

    .line 446
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$6;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$6;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-void
.end method

.method private setupButtons(Z)V
    .registers 5

    .line 774
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-nez v0, :cond_10

    .line 775
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->noButtonInsets()V

    return-void

    :cond_10
    if-eqz p1, :cond_1d

    .line 778
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    .line 779
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    .line 781
    :cond_1d
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    .line 782
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    .line 785
    :cond_28
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveText:Ljava/lang/CharSequence;

    const-string v0, ""

    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    :cond_33
    move-object p1, v0

    :goto_34
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_3d
    move-object v1, v0

    :goto_3e
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_46

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_46
    filled-new-array {p1, v1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->calculateAndUpdateLayout([Ljava/lang/String;)V

    return-void
.end method

.method private setupView()V
    .registers 11

    .line 557
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 558
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 560
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 561
    :goto_13
    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    if-eqz v4, :cond_19

    move v4, v1

    goto :goto_1a

    :cond_19
    move v4, v2

    .line 562
    :goto_1a
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_20

    move v5, v1

    goto :goto_21

    :cond_20
    move v5, v2

    .line 563
    :goto_21
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    if-eqz v6, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    if-eqz v3, :cond_3b

    .line 567
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 568
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v6, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    :cond_3b
    if-eqz v4, :cond_87

    .line 572
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->isBottomMsgInputDialog()Z

    move-result v0

    if-nez v0, :cond_87

    if-eqz v3, :cond_58

    .line 574
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v2, v6, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_72

    :cond_58
    if-eqz v5, :cond_6d

    .line 576
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v2, v2, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_72

    .line 578
    :cond_6d
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_72
    if-eqz v3, :cond_80

    .line 581
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_87

    .line 583
    :cond_80
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_87
    :goto_87
    if-eqz v1, :cond_a4

    if-nez v4, :cond_a4

    .line 588
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_9f

    .line 590
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a4

    .line 592
    :cond_9f
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a4
    :goto_a4
    if-eqz v1, :cond_f6

    if-eqz v3, :cond_f6

    .line 596
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_f6

    .line 599
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 601
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_dialog_title_padding_end:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 602
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_dialog_title_padding_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 599
    invoke-virtual {v0, v6, v2, v7, v8}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 605
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    if-nez v0, :cond_f6

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-nez v0, :cond_f6

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-nez v0, :cond_f6

    .line 606
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_list_dialog_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v2, v2, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_f6
    if-eqz v1, :cond_ff

    if-nez v3, :cond_ff

    .line 611
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_ff
    const/4 v0, -0x1

    if-eqz v5, :cond_1ba

    const/4 v2, -0x2

    if-eqz v4, :cond_115

    .line 616
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    .line 617
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 618
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 619
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13c

    :cond_115
    if-eqz v1, :cond_13c

    .line 621
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-eq v6, v0, :cond_13c

    .line 622
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 623
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, 0x3

    .line 624
    sget v7, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_parent:I

    invoke-virtual {v6, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 625
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13c
    :goto_13c
    if-eqz v4, :cond_188

    .line 642
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->isBottomMsgInputDialog()Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 643
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsCustomLayoutBelowTitle()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 646
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsCustomMessage()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_1ba

    .line 650
    :cond_16f
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 651
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsCustomLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1ba

    :cond_188
    if-eqz v1, :cond_1af

    .line 654
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 655
    new-instance v2, Lcom/transsion/widgetslib/dialog/PromptController$10;

    invoke-direct {v2, p0, v1}, Lcom/transsion/widgetslib/dialog/PromptController$10;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 677
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 678
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1ba

    .line 680
    :cond_1af
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1ba
    :goto_1ba
    if-eqz v3, :cond_1d1

    .line 684
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_1d1

    .line 685
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsTitleLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    :cond_1d1
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/dialog/PromptController;->setupButtons(Z)V

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_11

    const/4 v0, -0x2

    if-eq p1, v0, :cond_e

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 942
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 944
    :cond_e
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    .line 946
    :cond_11
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getCheckedView()Landroid/widget/CheckedTextView;
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method public getIsAppDialogFragment()Z
    .registers 1

    .line 1043
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAppDialogFragment:Z

    return p0
.end method

.method public getListView()Landroid/view/View;
    .registers 1

    .line 961
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-object p0
.end method

.method public getNoBtnBottomInsets()I
    .registers 1

    .line 738
    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mNoBtnBottomInsets:I

    return p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .registers 2

    .line 954
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_d

    .line 955
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

    .line 187
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsInputDialog:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_e
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_19

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

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

.method public installContent()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 182
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setupView()V

    return-void
.end method

.method public isCancelable()Z
    .registers 1

    .line 1073
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelable:Z

    return p0
.end method

.method public isCanceledOnTouchOutside()Z
    .registers 1

    .line 1081
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelOutSide:Z

    return p0
.end method

.method public onPrepareListView(Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;)V
    .registers 3

    .line 542
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_b

    .line 543
    check-cast p0, Landroid/widget/ListView;

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_b
    return-void
.end method

.method public setAutoDismiss(Z)V
    .registers 2

    .line 1117
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z

    return-void
.end method

.method public setBlackMode()V
    .registers 8

    .line 1269
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_black_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleViewBg(I)V

    .line 1270
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_26

    .line 1271
    sget v1, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1272
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_primary_ims_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1274
    :cond_26
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    if-eqz v0, :cond_3f

    .line 1275
    sget v1, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3f

    .line 1277
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_primary2_ims_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1281
    :cond_3f
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    const v1, -0x101009e

    const v2, 0x10100a7

    const/4 v3, 0x0

    if-eqz v0, :cond_8c

    .line 1282
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1283
    filled-new-array {v2}, [I

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg_ims_press:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1284
    filled-new-array {v1}, [I

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg_normal:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1285
    new-array v4, v3, [I

    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg_normal:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1286
    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1287
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$color;->os_text_secondary_ims_color:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1289
    :cond_8c
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_c5

    .line 1290
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1291
    filled-new-array {v2}, [I

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg_ims_press:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1292
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg_normal:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1293
    new-array v1, v3, [I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg_normal:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1294
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1297
    :cond_c5
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->haveHorPNOnly()Z

    move-result v0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->dividerView:Landroid/view/View;

    if-eqz v0, :cond_df

    .line 1298
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->dividerView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_color_white8:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_df
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 6

    .line 274
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p4, :cond_11

    if-eqz p3, :cond_11

    .line 279
    iget-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_11
    const/4 p3, -0x3

    const/4 v0, 0x1

    if-eq p1, p3, :cond_31

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2a

    const/4 p3, -0x1

    if-ne p1, p3, :cond_22

    .line 284
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 285
    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 286
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    return-void

    .line 299
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_2a
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 290
    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 291
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    return-void

    .line 294
    :cond_31
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 295
    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 296
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    return-void
.end method

.method public setButtonVertical(Z)V
    .registers 2

    .line 1121
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    .line 1056
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 2

    .line 1077
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelOutSide:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .registers 3

    .line 548
    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    .line 549
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_11

    .line 550
    check-cast p0, Landroid/widget/ListView;

    const/4 v0, 0x1

    .line 551
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 552
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_11
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .registers 3

    .line 1047
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    if-eqz p0, :cond_1b

    .line 1048
    sget v0, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1b

    .line 1049
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v0

    if-eq p1, v0, :cond_1b

    .line 1050
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_1b
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1004
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_8

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    return-void

    .line 1005
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1b

    .line 1006
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 1008
    :cond_1b
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setIconContent(Landroid/graphics/drawable/Drawable;)V

    .line 1009
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setInputMessagePosition(I)V
    .registers 2

    .line 1085
    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInputMessagePosition:I

    return-void
.end method

.method public setIsAlert(Z)V
    .registers 2

    .line 965
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAlert:Z

    return-void
.end method

.method public setIsAppDialogFragment(Z)V
    .registers 2

    .line 1039
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAppDialogFragment:Z

    return-void
.end method

.method public setIsInputDialog(Z)V
    .registers 2

    .line 1035
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsInputDialog:Z

    return-void
.end method

.method public setList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .line 328
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 330
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 331
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 333
    :cond_17
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    invoke-direct {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;)V

    .line 334
    invoke-virtual {p0, p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 530
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$9;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$9;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-void
.end method

.method public setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 314
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$4;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$4;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-void
.end method

.method public setList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 308
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 309
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;)V

    .line 310
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1026
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    if-eqz v0, :cond_10

    .line 1027
    sget p0, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1028
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1030
    :cond_10
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setMessageView(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessageView(Ljava/lang/CharSequence;)V
    .registers 6

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 220
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_message:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/damping/DampingLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    .line 221
    sget p0, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 222
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_20
    return-void
.end method

.method public setMultiChoiceList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .registers 6

    .line 432
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 433
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 434
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 435
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 437
    :cond_17
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 p2, 0x2

    invoke-direct {p1, p3, p2}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 438
    invoke-direct {p0, p1, p4}, Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 440
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setMultiChoiceList([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .registers 5

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->dealCheckItems([Ljava/lang/CharSequence;[Z)V

    .line 382
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 383
    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 384
    invoke-direct {p0, p2, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public setNoBtnBottomInsets(I)V
    .registers 2

    .line 742
    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mNoBtnBottomInsets:I

    return-void
.end method

.method public setPositiveButtonEnable(Z)V
    .registers 2

    .line 304
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mPositiveButtonEnable:Z

    return-void
.end method

.method public setPromptDialogPaddingTop(I)V
    .registers 5

    .line 1067
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_17

    .line 1068
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    return-void
.end method

.method public setSingleChecked(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V
    .registers 7

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 228
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_singlechecked:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->setView(ILandroid/view/View;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_39

    .line 230
    sget v2, Lcom/transsion/widgetslib/R$id;->text_choice:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    .line 231
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_39

    .line 233
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 235
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$3;

    invoke-direct {p2, p0, p3}, Lcom/transsion/widgetslib/dialog/PromptController$3;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_39
    return-void
.end method

.method public setSingleChoiceList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .line 367
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 369
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 370
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 372
    :cond_17
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 373
    invoke-virtual {p0, p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 375
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setSingleChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 515
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$8;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$8;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    .line 524
    instance-of p0, p1, Landroid/widget/ListView;

    if-eqz p0, :cond_15

    .line 525
    check-cast p1, Landroid/widget/ListView;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_15
    return-void
.end method

.method public setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$5;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$5;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-void
.end method

.method public setSingleChoiceList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    .line 342
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 343
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 344
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 969
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    .line 970
    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 971
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 973
    :cond_10
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleView(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleMaxTwoLines()V
    .registers 6

    .line 991
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    if-eqz v0, :cond_16

    .line 992
    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 993
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 994
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void

    .line 996
    :cond_16
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 997
    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 998
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 999
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public setTitleSingleLine()V
    .registers 5

    .line 978
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    .line 979
    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 980
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 981
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void

    .line 983
    :cond_15
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 984
    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 985
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 986
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public setTitleView(Ljava/lang/CharSequence;)V
    .registers 6

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 192
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_19

    .line 193
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 195
    :cond_19
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 196
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-void
.end method

.method public setTitleViewBg(I)V
    .registers 2

    .line 201
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_7

    .line 202
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)V
    .registers 6

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 208
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 209
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 211
    :cond_19
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/widgetslib/R$id;->text_top_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    invoke-static {p0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_36
    return-void
.end method

.method public setView(ILandroid/view/View;)V
    .registers 7

    if-nez p1, :cond_4

    if-eqz p2, :cond_39

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_view:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1f

    .line 259
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_22

    .line 261
    :cond_1f
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    :goto_22
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainerTrueHeight:I

    if-nez p1, :cond_39

    .line 266
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 267
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainerTrueHeight:I

    :cond_39
    return-void
.end method

.method public shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 165
    :goto_b
    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1e

    move p1, v2

    goto :goto_1f

    :cond_1e
    move p1, v1

    :goto_1f
    if-eqz p0, :cond_23

    if-nez v0, :cond_25

    :cond_23
    if-eqz p1, :cond_26

    :cond_25
    return v2

    :cond_26
    return v1
.end method
