.class public Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;
.super Lcom/transsion/camera/app/ui/widget/RotateLayout;
.source "SourceFile"


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final sStates:[[I


# instance fields
.field private mCollapsedTabContainer:Landroid/widget/LinearLayout;

.field private mCollapsedTabTextView:Landroid/widget/TextView;

.field private mCurrentTabSwitchLeftMargin:I

.field private mEffectList:Landroidx/recyclerview/widget/RecyclerView;

.field private mEffectListContainer:Landroid/widget/FrameLayout;

.field private mExpandArrow:Landroid/widget/ImageView;

.field private mHoverTabArrow:Landroid/widget/ImageView;

.field private mHoverTabContainer:Landroid/widget/LinearLayout;

.field private mHoverTabTextView:Landroid/widget/TextView;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMenuContainer:Landroid/widget/LinearLayout;

.field private mNeedShowEffectRecyclerView:Z

.field private mNeedShowNoEffectButton:Z

.field private mNeedShowScrollerBar:Z

.field private mNeedShowTabSwitchView:Z

.field private mNoEffect:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mNoEffectContainer:Landroid/widget/FrameLayout;

.field private final mResources:Landroid/content/res/Resources;

.field private mScrollerViewBackground:Landroid/widget/FrameLayout;

.field private final mStateList:Landroid/content/res/ColorStateList;

.field private final mStateListLowLight:Landroid/content/res/ColorStateList;

.field private mTabMenuContainer:Landroid/view/ViewGroup;

.field private mTabViewSwitchContainer:Landroid/widget/LinearLayout;

.field private mTopUI:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x10100a1

    .line 27
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 30
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->NORMAL_STATE_SET:[I

    .line 32
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mResources:Landroid/content/res/Resources;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->initCustomAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->createMenuContainer()V

    .line 77
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->initView()V

    .line 78
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->collapse_tab_selected_text_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 79
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->collapse_tab_unselected_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 80
    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->sStates:[[I

    filled-new-array {p2, p1}, [I

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mStateList:Landroid/content/res/ColorStateList;

    .line 81
    new-instance p1, Landroid/content/res/ColorStateList;

    const/high16 v0, -0x1000000

    filled-new-array {p2, v0}, [I

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mStateListLowLight:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private createMenuContainer()V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->tab_menu_layout_content:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 105
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->menu_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mMenuContainer:Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->top_ui:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTopUI:Landroid/widget/FrameLayout;

    .line 107
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->common_effect_list_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mEffectListContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private initCustomAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    if-eqz p2, :cond_39

    .line 86
    sget-object v0, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->TabMenuUICustomView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    :try_start_8
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->TabMenuUICustomView_needShowTabSwitchView:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowTabSwitchView:Z

    .line 90
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->TabMenuUICustomView_needShowNoEffectButton:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowNoEffectButton:Z

    .line 93
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->TabMenuUICustomView_needShowEffectRecyclerView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowEffectRecyclerView:Z

    .line 96
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->TabMenuUICustomView_needShowScrollerBar:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowScrollerBar:Z
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2d

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V

    return-void

    :catchall_2d
    move-exception p0

    if-eqz p1, :cond_38

    .line 86
    :try_start_30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    throw p0

    :cond_39
    return-void
.end method

.method private initEffectRecyclerView()V
    .registers 5

    .line 148
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->common_effect_list_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mEffectListContainer:Landroid/widget/FrameLayout;

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->effect_list_layout:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->effect_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mEffectList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private initTopUI()V
    .registers 6

    .line 120
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowNoEffectButton:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->tab_no_effect_layout:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->no_effect_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNoEffectContainer:Landroid/widget/FrameLayout;

    .line 122
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->no_effect:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNoEffect:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 124
    :cond_23
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowTabSwitchView:Z

    if-eqz v0, :cond_45

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->tab_switch_layout:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->tab_menu_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTabMenuContainer:Landroid/view/ViewGroup;

    .line 126
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->tab_view_switch_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    .line 128
    :cond_45
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowScrollerBar:Z

    if-eqz v0, :cond_c3

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->collapsed_tab_layout:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTopUI:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 130
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    .line 131
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mCollapsedTabTextView:Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mExpandArrow:Landroid/widget/ImageView;

    .line 133
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->tab_background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->collapsed_tab_layout:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mHoverTabContainer:Landroid/widget/LinearLayout;

    .line 138
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_tab_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mHoverTabTextView:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mHoverTabContainer:Landroid/widget/LinearLayout;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->expand_arrow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mHoverTabArrow:Landroid/widget/ImageView;

    .line 140
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->collapsed_scroller_bar_background:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->collapsed_scroller_bar_background:I

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mScrollerViewBackground:Landroid/widget/FrameLayout;

    :cond_c3
    return-void
.end method


# virtual methods
.method public getCollapsedTabContainer()Landroid/widget/LinearLayout;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getCurrentTabInternalMargin()I
    .registers 1

    .line 208
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mCurrentTabSwitchLeftMargin:I

    return p0
.end method

.method public getEffectList()Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mEffectList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getEffectListContainer()Landroid/widget/FrameLayout;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mEffectListContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getHoverTabContainer()Landroid/widget/LinearLayout;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mHoverTabContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getMenuContainer()Landroid/widget/LinearLayout;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mMenuContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getNoEffectImageView()Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNoEffect:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public getScrollerViewBackground()Landroid/widget/FrameLayout;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mScrollerViewBackground:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getTabMenuContainer()Landroid/view/ViewGroup;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTabMenuContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTabViewSwitchContainer()Landroid/widget/LinearLayout;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getTopUI()Landroid/widget/FrameLayout;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTopUI:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public initView()V
    .registers 2

    .line 111
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowTabSwitchView:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowScrollerBar:Z

    if-eqz v0, :cond_b

    .line 112
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->initTopUI()V

    .line 114
    :cond_b
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mNeedShowEffectRecyclerView:Z

    if-eqz v0, :cond_12

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->initEffectRecyclerView()V

    :cond_12
    return-void
.end method

.method public setEnable(Z)V
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mCollapsedTabContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 213
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mScrollerViewBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    .line 216
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 219
    :goto_13
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 220
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public updateRingScreenLight(Z)V
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mCollapsedTabTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mStateListLowLight:Landroid/content/res/ColorStateList;

    goto :goto_9

    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mStateList:Landroid/content/res/ColorStateList;

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mExpandArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->expand_arrow_low_light:I

    goto :goto_15

    :cond_13
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->expand_arrow:I

    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mHoverTabTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1f

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mStateListLowLight:Landroid/content/res/ColorStateList;

    goto :goto_21

    :cond_1f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mStateList:Landroid/content/res/ColorStateList;

    :goto_21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mHoverTabArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_2b

    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->expand_arrow_low_light:I

    goto :goto_2d

    :cond_2b
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->expand_arrow:I

    :goto_2d
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public updateTabSwitchLeftMargin(I)V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 199
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mTabViewSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 201
    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 202
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 204
    :cond_1d
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mCurrentTabSwitchLeftMargin:I

    return-void
.end method

.method public updateTabSwitchLeftMarginByResId(I)V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->updateTabSwitchLeftMargin(I)V

    return-void
.end method
