.class public abstract Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStates:[[I


# instance fields
.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mEffectListener:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;

.field protected mEffectSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected final mItemUISpec:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;

.field protected mListAdapter:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;

.field private final mListItemDecoration:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

.field private final mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

.field protected mOrientation:I

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mScreenFormType:I

.field private final mStateList:Landroid/content/res/ColorStateList;

.field private final mStateListLowLight:Landroid/content/res/ColorStateList;

.field protected mTabContainer:Landroid/view/View;

.field protected mTabView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$7zmNhQcjsOKTpu9ONlhipjMBWOk(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->lambda$setupListItemView$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HBjxZBWyGhVoCTMNtYg8AbSRyfI(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->lambda$setupTabItemView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$anf1MsN_nMPCAPO-I_oihQIVYaI(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->lambda$setDeviceSettingData$2(Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractSettingItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const v0, 0x10100a1

    .line 46
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 50
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->NORMAL_STATE_SET:[I

    .line 52
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;)V
    .registers 6

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mItemUISpec:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;

    .line 85
    sget-object p1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 87
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_effect_list_padding:I

    .line 88
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_effect_list_item_interval:I

    .line 89
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_effect_list_padding:I

    .line 90
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;-><init>(III)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    .line 91
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_effect_list_padding:I

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_effect_list_item_interval_expanded:I

    .line 93
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_effect_list_padding:I

    .line 94
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;-><init>(III)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    .line 96
    sget-object p1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$color;->ai_art_museum_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 97
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$color;->ai_art_museum_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 98
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v2, Lcom/transsion/camera/feature/aiartmuseum/R$color;->ai_art_museum_unselected_color_low_light:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 100
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->sStates:[[I

    filled-new-array {p1, v0}, [I

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mStateList:Landroid/content/res/ColorStateList;

    .line 101
    new-instance v0, Landroid/content/res/ColorStateList;

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mStateListLowLight:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private effectItemSelected()Z
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mEffectSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_d

    .line 216
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "effectItemSelected mEffectSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 219
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mEffectSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setDeviceSettingData$2(Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;)V
    .registers 4

    .line 312
    iget-object v0, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v1, "key_ai_art_museum"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 313
    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mEffectSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void

    .line 314
    :cond_f
    iget-object v0, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 315
    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    :cond_1f
    return-void
.end method

.method private synthetic lambda$setupListItemView$1(Ljava/lang/String;)V
    .registers 2

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_7

    .line 241
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$setupTabItemView$0(Landroid/view/View;)V
    .registers 3

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabContainer:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1f

    .line 195
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mEffectSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_14

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 198
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mEffectListener:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;

    if-eqz p1, :cond_1f

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;->onItemChanged(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private setupListItemView()V
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_c

    .line 224
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setupListItemView mRecyclerView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x1

    .line 231
    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mScreenFormType:I

    if-ne v0, v1, :cond_2b

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_32

    .line 234
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 236
    :goto_32
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 236
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 239
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->supportItemInfoList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;-><init>(Ljava/util/List;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$OnItemClickListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListAdapter:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->updateSelectItem()V

    .line 249
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->updateListVisibility()V

    return-void
.end method

.method private setupTabItemView()V
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabView:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabContainer:Landroid/view/View;

    if-nez v1, :cond_9

    goto :goto_29

    .line 187
    :cond_9
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mItemUISpec:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;->getTabText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabContainer:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabContainer:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->updateTabSelect()V

    return-void

    .line 183
    :cond_29
    :goto_29
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupTabItemView mTabView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTabContainer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateListVisibility()V
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_d

    .line 254
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "updateListVisibility mRecyclerView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->effectItemSelected()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x0

    goto :goto_17

    :cond_15
    const/16 p0, 0x8

    :goto_17
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSelectItem()V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListAdapter:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;

    if-nez v1, :cond_9

    goto :goto_11

    .line 265
    :cond_9
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->setSelect(Ljava/lang/String;)V

    return-void

    .line 262
    :cond_11
    :goto_11
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectItem mDeviceSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mListAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListAdapter:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateTabSelect()V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mEffectSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabView:Landroid/widget/TextView;

    if-nez v0, :cond_9

    goto :goto_11

    .line 211
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->effectItemSelected()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 208
    :cond_11
    :goto_11
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTabSelect mEffectSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mEffectSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTabView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private viewVisible(Landroid/view/View;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_b

    .line 285
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isViewVisible view is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 288
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    return p0

    .line 292
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 293
    :goto_16
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_4b

    .line 294
    check-cast p1, Landroid/view/View;

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_46

    .line 296
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viewVisible parentView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 299
    :cond_46
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_16

    :cond_4b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public createItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 5

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->itemSupport()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->createTabItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 149
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->createListItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-void

    .line 151
    :cond_d
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createItemView currentItemNotSupport "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected createListItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 169
    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$layout;->ai_art_museum_effect_list_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mItemUISpec:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;->getListId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected createTabItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 156
    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$layout;->ai_art_museum_effect_tab_item_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabContainer:Landroid/view/View;

    .line 157
    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_effect_tab_item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabView:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_35

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_effect_tab_internal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabContainer:Landroid/view/View;

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 164
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabContainer:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mItemUISpec:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initItemUI(II)V
    .registers 3

    .line 117
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mScreenFormType:I

    .line 118
    iput p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mOrientation:I

    return-void
.end method

.method protected itemSupport()Z
    .registers 3

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 322
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "itemSupport mDeviceSetting is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 325
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 326
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1b

    return v1

    :cond_1b
    return v0
.end method

.method public onItemChanged(Ljava/lang/String;)V
    .registers 2

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->updateTabSelect()V

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->updateListVisibility()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 141
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mOrientation:I

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->updateLayout()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 123
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mScreenFormType:I

    .line 124
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_26

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 126
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x1

    .line 127
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mScreenFormType:I

    if-ne p2, v0, :cond_1f

    .line 128
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_26

    .line 130
    :cond_1f
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 133
    :cond_26
    :goto_26
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListAdapter:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;

    if-eqz p2, :cond_32

    .line 134
    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->setScreenFormType(I)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListAdapter:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_32
    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 308
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setDeviceSettingData settingDataList is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 311
    :cond_a
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setItemListener(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mEffectListener:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;

    return-void
.end method

.method public setupItemView()V
    .registers 1

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->setupTabItemView()V

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->setupListItemView()V

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->updateLayout()V

    return-void
.end method

.method public abstract supportItemInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected updateLayout()V
    .registers 4

    .line 269
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 270
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_10

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_11

    :cond_10
    const/4 v0, 0x0

    .line 274
    :cond_11
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabView:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    int-to-float v0, v0

    .line 275
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 277
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mListAdapter:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2a

    .line 278
    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mOrientation:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->viewVisible(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->setOrientation(IZ)V

    :cond_2a
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mTabView:Landroid/widget/TextView;

    if-nez v0, :cond_d

    .line 332
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateLowLight mTabView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_d
    if-eqz p1, :cond_12

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mStateListLowLight:Landroid/content/res/ColorStateList;

    goto :goto_14

    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;->mStateList:Landroid/content/res/ColorStateList;

    :goto_14
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
