.class public Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;
    }
.end annotation


# instance fields
.field private mBackOrderEditorUIItems:Ljava/util/List;

.field private mCurrentCamera:Ljava/lang/String;

.field private mEditorModeItemLeft:I

.field private mEditorModeItemTop:I

.field private mFrontOrderEditorUIItems:Ljava/util/List;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mLayoutResId:I

.field private mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mModesNumberInTab:I

.field private mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$-ix_ziWBMPduMbGCQKPkiNDyfAk(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RoAFKuiyD-987DRHJ_p1DeIYoQA(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->lambda$setModeList$1(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEditorModeItemLeft(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mEditorModeItemLeft:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrderEditorRecycleViewAdapter(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    .line 39
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    .line 44
    sget v0, Lcom/transsion/camera/R$layout;->editor_preference_fragment:I

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mLayoutResId:I

    return-void
.end method

.method private synthetic lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 3

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$setModeList$1(Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 3

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .registers 1

    return-void
.end method

.method protected getPreferenceResource()I
    .registers 1

    .line 109
    sget p0, Lcom/transsion/camera/R$xml;->editor_preferences:I

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .registers 2

    .line 116
    sget p0, Lcom/transsion/camera/R$id;->editor_fragment_toolbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_12

    .line 118
    sget p1, Lcom/transsion/camera/R$string;->order_editor_top_bar:I

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 119
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_12
    return-object p0
.end method

.method public initModesNumber(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    return-void
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 8

    .line 70
    sget v0, Lcom/transsion/camera/R$id;->mode_order_editor_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    .line 71
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->editor_mode_item_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mEditorModeItemLeft:I

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->editor_mode_item_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mEditorModeItemTop:I

    .line 74
    sget v0, Lcom/transsion/camera/R$id;->mode_order_editor_recyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    new-instance v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    .line 76
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 77
    new-instance v1, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$1;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 88
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    if-eqz v0, :cond_7b

    .line 92
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    goto :goto_6f

    :cond_6d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    :goto_6f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->updateModeList(Ljava/util/List;Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    :cond_7b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/app/ui/anim/EditorItemAnimator;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/anim/EditorItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;Lcom/transsion/camera/app/ui/ModeOrderEditorFragment-IA;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 98
    new-instance v0, Lcom/transsion/camera/app/ui/editor/EditorTouchItemHelper;

    new-instance v1, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v2, Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    new-instance v5, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;-><init>(Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/editor/EditorTouchItemHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 65
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mLayoutResId:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected removeAllPreferences()V
    .registers 1

    return-void
.end method

.method public setModeList(Ljava/util/List;Ljava/lang/String;I)V
    .registers 5

    .line 140
    iput p3, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    .line 141
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    .line 142
    const-string v0, "0"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 143
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 144
    new-instance p2, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    if-eqz p1, :cond_41

    .line 146
    iput p3, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    .line 147
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    invoke-virtual {p1, p2, p0, p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->updateModeList(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    .line 151
    :cond_27
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 152
    new-instance p2, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    if-eqz p1, :cond_41

    .line 154
    iput p3, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    .line 155
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    invoke-virtual {p1, p2, p0, p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->updateModeList(Ljava/util/List;Ljava/lang/String;I)V

    :cond_41
    return-void
.end method

.method public setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingFragmentManger:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    return-void
.end method

.method public unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 175
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    return-void
.end method

.method protected unInitViews()V
    .registers 1

    return-void
.end method
