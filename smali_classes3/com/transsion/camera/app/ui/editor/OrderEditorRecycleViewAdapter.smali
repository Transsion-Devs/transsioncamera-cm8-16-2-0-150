.class public Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;,
        Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;
    }
.end annotation


# instance fields
.field private final ASDMODE:Ljava/lang/String;

.field private final MAINTITLE:Ljava/lang/String;

.field private final SUBTITLE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mCurrentCamera:Ljava/lang/String;

.field private final mMainFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

.field private mMainModeList:Ljava/util/List;

.field public mModesNumberInTab:I

.field private mOrderEditorUIItems:Ljava/util/List;

.field private final mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

.field private mOtherModeList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->ASDMODE:Ljava/lang/String;

    .line 24
    const-string v0, "MAINFUCTION"

    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->MAINTITLE:Ljava/lang/String;

    .line 25
    const-string v1, "OTHERFUCTION"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->SUBTITLE:Ljava/lang/String;

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainModeList:Ljava/util/List;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherModeList:Ljava/util/List;

    .line 30
    const-string v2, "0"

    iput-object v2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 37
    new-instance v2, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 38
    new-instance v3, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 39
    iput-object v0, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/camera/R$string;->order_editor_main_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 41
    iput-object v1, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->order_editor_sub_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 43
    new-instance p1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    const/4 v0, 0x1

    invoke-direct {p1, v2, v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 44
    new-instance p1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-direct {p1, v3, v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 45
    iput p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    return-void
.end method


# virtual methods
.method public getFinalOrder()Ljava/util/List;
    .registers 7

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_45

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 159
    new-instance v4, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v4}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 160
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 161
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 162
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v3

    iget v3, v3, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    iput v3, v4, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 163
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_45
    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 138
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->isTitle()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    return p0

    .line 141
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 p0, 0x2

    return p0

    .line 144
    :cond_2e
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getMainModeCount()I
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    return v0
.end method

.method public getOrderEditorUIItems()Ljava/util/List;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 22
    check-cast p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;I)V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 69
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getItemViewType(I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_26

    .line 70
    iget-object p2, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$color;->editor_title_text_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 74
    :cond_26
    iget-object p2, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object p2, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$color;->unselected_mode_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object p0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    iget-object p0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_66

    .line 79
    iget-object p0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 80
    iget-object p0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 83
    :cond_66
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_18

    .line 52
    new-instance p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 52
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$layout;->mode_order_editor_title_layout:I

    .line 53
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_18
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3e

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 56
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$layout;->mode_order_editor_ui_layout:I

    .line 57
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/R$drawable;->ic_bg_editor_ai_mode:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    new-instance p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 62
    :cond_3e
    new-instance p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 62
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$layout;->mode_order_editor_ui_layout:I

    .line 63
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public updateModeList(Ljava/util/List;Ljava/lang/String;I)V
    .registers 6

    .line 111
    iput-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    .line 112
    iput p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    .line 113
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 114
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x6

    const/4 p3, 0x0

    if-ge p1, p2, :cond_1e

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainModeList:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3e

    .line 118
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainModeList:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, p3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherModeList:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    :goto_3e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mMainFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    iget p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_5b

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    .line 125
    :cond_5b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOrderEditorUIItems:Ljava/util/List;

    iget p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    add-int/lit8 p2, p2, 0x1

    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mOtherFunction:Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
