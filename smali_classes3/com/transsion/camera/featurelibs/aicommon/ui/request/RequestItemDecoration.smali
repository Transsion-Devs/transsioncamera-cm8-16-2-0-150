.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mAdapter:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

.field private final mIntervalHeaderTitle:I

.field private final mIntervalItemItem:I

.field private final mIntervalItemSwitch:I

.field private final mIntervalItemTitle:I

.field private final mIntervalSwitchTitle:I

.field private final mIntervalTitleItem:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mAdapter:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    .line 47
    sget-object p1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 48
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_interval_header_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalHeaderTitle:I

    .line 50
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_interval_title_item:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalTitleItem:I

    .line 52
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_interval_item_item:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalItemItem:I

    .line 54
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_interval_item_switch:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalItemSwitch:I

    .line 56
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_interval_item_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalItemTitle:I

    .line 58
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_interval_switch_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalSwitchTitle:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 66
    iget-object p4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mAdapter:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-virtual {p4}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->items()Ljava/util/List;

    move-result-object p4

    .line 67
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_80

    .line 71
    :cond_11
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 72
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-le p2, p3, :cond_80

    const/4 p3, 0x1

    sub-int/2addr v0, p3

    if-ge p2, v0, :cond_80

    .line 75
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;

    add-int/2addr p2, p3

    .line 76
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;

    .line 78
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->getType()I

    move-result p4

    if-nez p4, :cond_3e

    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->getType()I

    move-result p4

    if-ne p3, p4, :cond_3e

    .line 79
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalHeaderTitle:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 80
    :cond_3e
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->getType()I

    move-result p4

    if-ne p3, p4, :cond_4d

    instance-of p4, p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-eqz p4, :cond_4d

    .line 81
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalTitleItem:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 82
    :cond_4d
    instance-of p4, v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-eqz p4, :cond_5a

    instance-of v1, p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-eqz v1, :cond_5a

    .line 83
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalItemItem:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_5a
    if-eqz p4, :cond_65

    .line 84
    instance-of v1, p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    if-eqz v1, :cond_65

    .line 85
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalItemSwitch:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_65
    if-eqz p4, :cond_72

    .line 86
    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->getType()I

    move-result p4

    if-ne p3, p4, :cond_72

    .line 87
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalItemTitle:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 88
    :cond_72
    instance-of p4, v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    if-eqz p4, :cond_80

    invoke-virtual {p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->getType()I

    move-result p2

    if-ne p3, p2, :cond_80

    .line 89
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestItemDecoration;->mIntervalSwitchTitle:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_80
    :goto_80
    return-void
.end method
