.class public Lcom/transsion/widgetslib/widget/SearchBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/SearchBar$SearchAnimationParams;,
        Lcom/transsion/widgetslib/widget/SearchBar$ExitAnimForTransitionListener;,
        Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;,
        Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;,
        Lcom/transsion/widgetslib/widget/SearchBar$BackClickListener;,
        Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;,
        Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;,
        Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;,
        Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchBar"


# instance fields
.field private mBackClickListener:Landroid/view/View$OnClickListener;

.field private mBackView:Landroid/widget/ImageView;

.field private mBackViewStaticWidth:I

.field private mClickView:Landroid/widget/TextView;

.field private mClickViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

.field private mCompleteInput:Z

.field private mCurrentRootWidth:I

.field private mCustomIconClickListener:Landroid/view/View$OnClickListener;

.field private mCustomIconInEdittextClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteAll:Landroid/widget/ImageView;

.field private mDeleteMargin:I

.field private mFrameLayoutRoot:Landroid/view/View;

.field private mImgCustom:Landroid/widget/ImageView;

.field private mImgCustomInEdittext:Landroid/widget/ImageView;

.field private mIsBackMode:Z

.field private mIsIDLE:Z

.field private mIsSearStatusOnInitial:Z

.field private mItemClickListener:Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

.field private mLeftMargin:I

.field private mLinearRoot:Landroid/view/View;

.field private mLlDelCustomContainer:Landroid/widget/LinearLayout;

.field private mMoveWidth:I

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnSearch:Z

.field private mRequireSearchAnimManagerTrans:Z

.field private mSearchBarClickListener:Landroid/view/View$OnClickListener;

.field private mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

.field private mSearchBarTextPaddingEnd:I

.field private mSearchBarTextPaddingEndWithDelIcon:I

.field private mSearchIcon:Landroid/widget/ImageView;

.field private mSearchView:Landroid/widget/AutoCompleteTextView;

.field private mSearchViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

.field private mStateChangeListener:Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mWidth0:I

.field private mWidth1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    .line 71
    new-instance v0, Lcom/transsion/widgetslib/widget/SearchBar$BackClickListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/SearchBar$BackClickListener;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mRequireSearchAnimManagerTrans:Z

    .line 343
    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$7;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$7;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_search_bar_layout:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_delete_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    .line 84
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 85
    sget v1, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar_isBackMode:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsBackMode:Z

    .line 86
    sget v1, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar_osSearchBarIconInEdittext:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    .line 87
    sget v1, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar_isSearStatusOnInitial:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsSearStatusOnInitial:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end_with_del_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEndWithDelIcon:I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEnd:I

    .line 90
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_icon_common_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_search_back_view_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_icon_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackViewStaticWidth:I

    .line 94
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->initView()V

    .line 95
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->initEvent()V

    .line 96
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->preDraw()V

    .line 97
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealOsDiff()V

    .line 98
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    .line 99
    new-instance p1, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p1, p0, p2}, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    .line 100
    new-instance p1, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-direct {p1, p0, p2}, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/SearchBar;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsIDLE:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/widgetslib/widget/SearchBar;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    return p0
.end method

.method static synthetic access$1302(Lcom/transsion/widgetslib/widget/SearchBar;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/widgetslib/widget/SearchBar;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/widget/SearchBar;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsSearStatusOnInitial:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewWidthDiff()V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconInEdittextClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCurrentRootWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mFrameLayoutRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private backEnterAnimForTransition()Landroid/animation/AnimatorSet;
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 461
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->backEnterAnimForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private backEnterAnimForTransition(FF)Landroid/animation/AnimatorSet;
    .registers 20

    move-object/from16 v0, p0

    .line 422
    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewWidthDiff()V

    .line 423
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    .line 424
    :goto_10
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v4

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    neg-int v4, v4

    .line 425
    :goto_18
    iget-object v5, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    int-to-float v4, v4

    const/4 v6, 0x2

    new-array v7, v6, [F

    aput v4, v7, v2

    const/4 v4, 0x0

    aput v4, v7, v3

    .line 426
    const-string v8, "translationX"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 428
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    iget v9, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    iget v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    int-to-float v10, v10

    .line 429
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getTransitionScale(F)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    const-string v10, "width"

    invoke-static {v7, v10, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 431
    iget v9, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    if-eqz v1, :cond_45

    neg-int v9, v9

    .line 432
    :cond_45
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    int-to-float v9, v9

    new-array v11, v6, [F

    aput v4, v11, v2

    aput v9, v11, v3

    .line 433
    invoke-static {v10, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 434
    iget-object v11, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    new-array v12, v6, [F

    aput v4, v12, v2

    aput v9, v12, v3

    .line 435
    invoke-static {v11, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 436
    iget-object v12, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    new-array v13, v6, [F

    aput v4, v13, v2

    aput v9, v13, v3

    .line 437
    invoke-static {v12, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 438
    iget-object v12, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    new-array v13, v6, [F

    fill-array-data v13, :array_da

    .line 439
    const-string v14, "alpha"

    invoke-static {v12, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-wide/16 v13, 0x96

    .line 440
    invoke-virtual {v12, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v13, 0xfa

    .line 441
    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 442
    sget-object v13, Lcom/transsion/widgetslib/widget/SearchBar$SearchAnimationParams;->ENTER_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 445
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    move v15, v4

    move-object/from16 v16, v5

    const-wide/16 v4, 0x190

    .line 446
    invoke-virtual {v14, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 447
    invoke-virtual {v14, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x6

    .line 448
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v16, v4, v2

    aput-object v7, v4, v3

    aput-object v10, v4, v6

    const/4 v5, 0x3

    aput-object v9, v4, v5

    const/4 v5, 0x4

    aput-object v12, v4, v5

    const/4 v5, 0x5

    aput-object v11, v4, v5

    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 450
    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mRequireSearchAnimManagerTrans:Z

    if-eqz v4, :cond_ca

    move/from16 v4, p2

    neg-float v4, v4

    if-eqz v1, :cond_b6

    const/4 v1, -0x1

    goto :goto_b7

    :cond_b6
    move v1, v3

    :goto_b7
    int-to-float v1, v1

    mul-float/2addr v4, v1

    .line 452
    new-array v1, v6, [F

    aput v15, v1, v2

    aput v4, v1, v3

    invoke-static {v0, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 453
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 455
    :cond_ca
    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v14, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v14

    nop

    :array_da
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private backExitAnimForTransition(FF)Landroid/animation/AnimatorSet;
    .registers 19

    move-object/from16 v0, p0

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v2

    .line 466
    :goto_d
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v4

    if-eqz v1, :cond_14

    goto :goto_15

    :cond_14
    neg-int v4, v4

    .line 467
    :goto_15
    iget-object v5, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    int-to-float v4, v4

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v8, v7, v2

    aput v4, v7, v3

    .line 468
    const-string v4, "translationX"

    invoke-static {v5, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x15e

    .line 469
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 470
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    iget v11, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    int-to-float v11, v11

    .line 471
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getTransitionScale(F)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    const-string v12, "width"

    invoke-static {v7, v12, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 472
    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 473
    iget v11, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    if-eqz v1, :cond_4a

    neg-int v11, v11

    .line 475
    :cond_4a
    iget-object v12, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    int-to-float v11, v11

    new-array v13, v6, [F

    aput v11, v13, v2

    aput v8, v13, v3

    .line 476
    invoke-static {v12, v4, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 477
    invoke-virtual {v12, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 478
    iget-object v13, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    new-array v14, v6, [F

    aput v11, v14, v2

    aput v8, v14, v3

    .line 479
    invoke-static {v13, v4, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 480
    invoke-virtual {v13, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 481
    iget-object v14, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    new-array v15, v6, [F

    aput v11, v15, v2

    aput v8, v15, v3

    .line 482
    invoke-static {v14, v4, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 483
    invoke-virtual {v11, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 485
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    new-array v10, v6, [F

    fill-array-data v10, :array_d8

    .line 486
    const-string v14, "alpha"

    invoke-static {v9, v14, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v14, 0x64

    .line 487
    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 489
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 490
    sget-object v14, Lcom/transsion/widgetslib/widget/SearchBar$SearchAnimationParams;->EXIT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v14, 0x6

    .line 491
    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v5, v14, v2

    aput-object v7, v14, v3

    aput-object v12, v14, v6

    const/4 v5, 0x3

    aput-object v13, v14, v5

    const/4 v5, 0x4

    aput-object v9, v14, v5

    const/4 v5, 0x5

    aput-object v11, v14, v5

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 493
    iget-boolean v5, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mRequireSearchAnimManagerTrans:Z

    if-eqz v5, :cond_c8

    move/from16 v5, p2

    neg-float v5, v5

    if-eqz v1, :cond_b4

    const/4 v1, -0x1

    goto :goto_b5

    :cond_b4
    move v1, v3

    :goto_b5
    int-to-float v1, v1

    mul-float/2addr v5, v1

    .line 495
    new-array v1, v6, [F

    aput v5, v1, v2

    aput v8, v1, v3

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 496
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    invoke-virtual {v10, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 498
    :cond_c8
    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$ExitAnimForTransitionListener;

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/widgetslib/widget/SearchBar$ExitAnimForTransitionListener;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v10, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v10

    nop

    :array_d8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private dealCusIconInEdittextMargin()V
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    .line 240
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_26

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_element_common_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_2a

    :cond_26
    const/4 v1, 0x0

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 246
    :goto_2a
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2f
    return-void
.end method

.method private dealDeleteIconVisibility()V
    .registers 4

    .line 554
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 555
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 556
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    .line 557
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 558
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->isSearchBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 559
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_62

    .line 560
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_62

    .line 562
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_62

    .line 566
    :cond_4c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_62

    .line 567
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_62

    .line 569
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    :cond_62
    :goto_62
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealCusIconInEdittextMargin()V

    return-void
.end method

.method private dealOsDiff()V
    .registers 4

    .line 251
    sget v0, Lcom/transsion/widgetslib/R$attr;->osSearchBarMargin:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_margin_hios:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    .line 254
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getIsBackMode()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_margin_xos:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_51

    .line 259
    :cond_49
    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 261
    :goto_51
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private dealSearchViewTextPadding()V
    .registers 6

    .line 207
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 208
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 209
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->isSearchBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 210
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEndWithDelIcon:I

    .line 211
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4d

    .line 212
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEndWithDelIcon:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_element_common_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_cus_icon_in_edittext_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4d

    .line 215
    :cond_41
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEnd:I

    .line 216
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4d

    .line 217
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEndWithDelIcon:I

    .line 220
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 221
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 223
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 220
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 225
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_75

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end_with_del_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_7f

    .line 228
    :cond_75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 230
    :goto_7f
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    .line 231
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    .line 233
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 230
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 234
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealCusIconInEdittextMargin()V

    return-void
.end method

.method private dealSearchViewWidthDiff()V
    .registers 4

    .line 378
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2f

    .line 380
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_back_mode_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    :cond_2f
    return-void
.end method

.method private hideKeyboard()V
    .registers 3

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$1;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$2;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$3;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$4;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$4;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$5;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$6;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$6;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 4

    .line 104
    sget v0, Lcom/transsion/widgetslib/R$id;->text_click:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/transsion/widgetslib/R$id;->relative_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mFrameLayoutRoot:Landroid/view/View;

    .line 106
    sget v0, Lcom/transsion/widgetslib/R$id;->linear_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLinearRoot:Landroid/view/View;

    .line 107
    sget v0, Lcom/transsion/widgetslib/R$id;->text_search:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 108
    sget v0, Lcom/transsion/widgetslib/R$id;->img_btn_back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    .line 109
    sget v0, Lcom/transsion/widgetslib/R$id;->img_search_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    .line 110
    sget v0, Lcom/transsion/widgetslib/R$id;->img_delete_all:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/transsion/widgetslib/R$id;->img_custom:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/transsion/widgetslib/R$id;->ll_del_custom_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    .line 113
    sget v0, Lcom/transsion/widgetslib/R$id;->img_custom_in_edittext:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    .line 114
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_6f

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_6f
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getIsBackMode()Z

    move-result v0

    if-nez v0, :cond_84

    .line 119
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->showSoftInput()V

    :cond_84
    return-void
.end method

.method private preDraw()V
    .registers 3

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$8;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$8;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setSearchViewLeftMargin(I)V
    .registers 6

    .line 319
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 320
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_space150:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 322
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    add-int/2addr p1, v2

    .line 323
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 324
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showSoftInput()V
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1b

    .line 544
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1b

    .line 548
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1b
    return-void
.end method

.method private syncComponentMargin(Z)V
    .registers 7

    .line 265
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 267
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    move v4, v3

    goto :goto_1f

    .line 268
    :cond_1d
    iget v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    :goto_1f
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    if-eqz p1, :cond_25

    goto :goto_27

    .line 269
    :cond_25
    iget v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    :goto_27
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    if-eqz p1, :cond_2f

    .line 270
    iget p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    goto :goto_34

    :cond_2f
    iget p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    add-int/2addr p1, v3

    :goto_34
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 271
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addTextWatcher(Landroid/text/TextWatcher;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 366
    :cond_3
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public endSearch()V
    .registers 4

    const/4 v0, 0x0

    .line 577
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnSearch:Z

    .line 578
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    .line 579
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    .line 580
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 582
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearchForTransition()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 584
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mStateChangeListener:Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;

    if-eqz p0, :cond_22

    .line 585
    invoke-interface {p0}, Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;->onSearchEnd()V

    :cond_22
    return-void
.end method

.method public endSearchForTransition()Landroid/animation/AnimatorSet;
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 662
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearchForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public endSearchForTransition(FF)Landroid/animation/AnimatorSet;
    .registers 3

    .line 666
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->backExitAnimForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public getBackView()Landroid/view/View;
    .registers 1

    .line 729
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getBackViewStaticWidth()I
    .registers 1

    .line 418
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackViewStaticWidth:I

    return p0
.end method

.method public getClickTextView()Landroid/widget/TextView;
    .registers 1

    .line 599
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeleteAllIconView()Landroid/view/View;
    .registers 1

    .line 278
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getDeleteButton()Landroid/view/View;
    .registers 1

    .line 725
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method public getImgCustomInEdittext()Landroid/view/View;
    .registers 1

    .line 741
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getImgCustomView()Landroid/view/View;
    .registers 1

    .line 737
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected getIsBackMode()Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsBackMode:Z

    return p0
.end method

.method public getLinearRootView()Landroid/view/View;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLinearRoot:Landroid/view/View;

    return-object p0
.end method

.method public getRightIconVisibility()Z
    .registers 1

    .line 333
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public getSearchIconView()Landroid/view/View;
    .registers 1

    .line 733
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getSearchTextView()Landroid/widget/AutoCompleteTextView;
    .registers 1

    .line 606
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransitionScale(F)F
    .registers 4

    .line 819
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 820
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result p1

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 822
    sget-object p1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_3e

    .line 824
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_back_mode_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_3e
    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    .line 826
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public isOnSearch()Z
    .registers 1

    .line 590
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnSearch:Z

    return p0
.end method

.method public isSearchBarEnabled()Z
    .registers 1

    .line 776
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 832
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 833
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 834
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 835
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 840
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 841
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 842
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 2

    .line 782
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public removeTextWatcher(Landroid/text/TextWatcher;)V
    .registers 2

    .line 370
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public requireSearchAnimManagerTrans(Z)V
    .registers 2

    .line 688
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mRequireSearchAnimManagerTrans:Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .line 638
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setBackClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackClickListener:Landroid/view/View$OnClickListener;

    .line 201
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCustomIconInEdittextClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 811
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconInEdittextClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCustomSearchIcon(I)V
    .registers 2

    .line 632
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    .line 633
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    return-void
.end method

.method public setDeleteButtonVisibility(I)V
    .registers 2

    .line 721
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setHint(I)V
    .registers 3

    .line 622
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3

    .line 594
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputMax(II)V
    .registers 4

    .line 786
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->setInputMax(ILjava/lang/String;)V

    return-void
.end method

.method public setInputMax(ILjava/lang/String;)V
    .registers 5

    .line 790
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/text/InputFilter;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setIsIDLE(Z)V
    .registers 2

    .line 286
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsIDLE:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;)V
    .registers 2

    .line 646
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

    return-void
.end method

.method public setOnStateChangeListener(Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;)V
    .registers 2

    .line 642
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mStateChangeListener:Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;

    return-void
.end method

.method public setRightIcon(I)V
    .registers 3

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->setRightIcon(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightIcon(ILandroid/view/View$OnClickListener;)V
    .registers 4

    .line 308
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconClickListener:Landroid/view/View$OnClickListener;

    .line 309
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    .line 311
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->syncComponentMargin(Z)V

    .line 312
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    if-eqz p1, :cond_26

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 314
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setSearchViewLeftMargin(I)V

    :cond_26
    return-void
.end method

.method public setRightIconVisibility(Z)V
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->syncComponentMargin(Z)V

    .line 296
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    if-eqz v0, :cond_34

    if-eqz p1, :cond_23

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_31

    .line 301
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_margin_hios:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 303
    :goto_31
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setSearchViewLeftMargin(I)V

    :cond_34
    return-void
.end method

.method public setRootWidth(I)V
    .registers 2

    .line 815
    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    return-void
.end method

.method public setSearchBarClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 650
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSearchBarEnabled(Z)V
    .registers 4

    .line 756
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    if-nez v1, :cond_d

    goto :goto_46

    .line 759
    :cond_d
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 760
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_2e

    .line 762
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 763
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 764
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 765
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_40

    .line 767
    :cond_2e
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const v0, 0x3f266666    # 0.65f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 768
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 769
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 771
    :goto_40
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    .line 772
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    :cond_46
    :goto_46
    return-void
.end method

.method public setSearchBarIconInEdittext(I)V
    .registers 3

    .line 807
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setSearchBarIconInEdittext(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSearchBarIconInEdittext(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 795
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    .line 796
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    .line 799
    :cond_10
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1f

    .line 800
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 803
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    return-void
.end method

.method public setSearchSource(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 626
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_search_source_item_layout:I

    sget v2, Lcom/transsion/widgetslib/R$id;->search_item_text:I

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 628
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .registers 4

    const/4 v0, 0x1

    .line 745
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCompleteInput:Z

    .line 746
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    .line 748
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    const/4 p1, 0x0

    .line 749
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCompleteInput:Z

    if-eqz p2, :cond_16

    .line 751
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearch()V

    :cond_16
    return-void
.end method

.method public setTextHeightElegant(Z)V
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 614
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 616
    :cond_7
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_e

    .line 617
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_e
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 358
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    .line 359
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public startSearch()V
    .registers 3

    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnSearch:Z

    .line 530
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->backEnterAnimForTransition()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 534
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->showSoftInput()V

    .line 535
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    .line 536
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    .line 537
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mStateChangeListener:Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;

    if-eqz p0, :cond_27

    .line 538
    invoke-interface {p0}, Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;->onSearchStart()V

    :cond_27
    return-void
.end method

.method public startSearchForTransition()Landroid/animation/AnimatorSet;
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 658
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->backEnterAnimForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public startSearchForTransition(FF)Landroid/animation/AnimatorSet;
    .registers 3

    .line 654
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->backEnterAnimForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public syncDimens()V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mFrameLayoutRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCurrentRootWidth:I

    .line 504
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mFrameLayoutRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    .line 505
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    .line 506
    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    .line 507
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewWidthDiff()V

    .line 508
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_60

    .line 509
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    if-eq v0, v1, :cond_49

    .line 510
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 511
    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 512
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    :cond_49
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    neg-int v0, v0

    goto :goto_55

    :cond_53
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    .line 515
    :goto_55
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 516
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 518
    :cond_60
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_83

    .line 519
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    if-eq v0, v1, :cond_83

    .line 520
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 521
    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 522
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    :cond_83
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    return-void
.end method

.method public updateEnterForTransition()V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_8

    .line 671
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    :cond_8
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    if-eqz p0, :cond_f

    .line 674
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public updateExitForTransition()V
    .registers 3

    .line 679
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 680
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    :cond_8
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    if-eqz p0, :cond_f

    .line 683
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    return-void
.end method
