.class public Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemDecoration"
.end annotation


# instance fields
.field protected mFirstItemRect:Landroid/graphics/Rect;

.field protected mItemPadding:I

.field protected mLastItemRect:Landroid/graphics/Rect;

.field protected mOtherItemRect:Landroid/graphics/Rect;

.field protected mSplitItemRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;


# direct methods
.method public static synthetic $r8$lambda$-wKNGkJEnKoPsPXTeZ0zWlJiEMU(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->lambda$getFirstItemRect$1()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0HEZXzu4pUmWoC6bl1F2-CAkk9w(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->lambda$getLastItemRect$2()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rKqWGnPUQihwBNga2fJOVtKX5Oc(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->lambda$getOtherItemRect$3()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uibE5RmgCIR4H3g3H_G0AIQ5Oxo(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->lambda$getSplitItemRect$0()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V
    .registers 2

    .line 1335
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, -0x1

    .line 1336
    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mItemPadding:I

    return-void
.end method

.method private synthetic lambda$getFirstItemRect$1()Landroid/graphics/Rect;
    .registers 5

    .line 1375
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_15

    .line 1376
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_recycler_view_header_footer_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1377
    :goto_15
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->getItemPadding()I

    move-result v2

    .line 1378
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mFirstItemRect:Landroid/graphics/Rect;

    return-object v3
.end method

.method private synthetic lambda$getLastItemRect$2()Landroid/graphics/Rect;
    .registers 5

    .line 1385
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1386
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_recycler_end_footer_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_1f

    .line 1387
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_recycler_view_header_footer_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1388
    :goto_1f
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->getItemPadding()I

    move-result v1

    .line 1389
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mLastItemRect:Landroid/graphics/Rect;

    return-object v2
.end method

.method private synthetic lambda$getOtherItemRect$3()Landroid/graphics/Rect;
    .registers 4

    .line 1396
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->getItemPadding()I

    move-result v0

    .line 1397
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mOtherItemRect:Landroid/graphics/Rect;

    return-object v1
.end method

.method private synthetic lambda$getSplitItemRect$0()Landroid/graphics/Rect;
    .registers 4

    .line 1367
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->getItemPadding()I

    move-result v0

    .line 1368
    new-instance v1, Landroid/graphics/Rect;

    neg-int v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mSplitItemRect:Landroid/graphics/Rect;

    return-object v1
.end method


# virtual methods
.method protected getFirstItemRect(I)Landroid/graphics/Rect;
    .registers 3

    .line 1374
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mFirstItemRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 1344
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1345
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->onGetItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public getItemPadding()I
    .registers 3

    .line 1403
    iget v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mItemPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 1404
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_recycler_view_item_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mItemPadding:I

    .line 1406
    :cond_13
    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mItemPadding:I

    return p0
.end method

.method protected getLastItemRect(I)Landroid/graphics/Rect;
    .registers 3

    .line 1384
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mLastItemRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method protected getOtherItemRect(I)Landroid/graphics/Rect;
    .registers 3

    .line 1395
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mOtherItemRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method protected getSplitItemRect(I)Landroid/graphics/Rect;
    .registers 3

    .line 1366
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mSplitItemRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method protected onGetItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 1349
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    .line 1350
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 1351
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_10

    :cond_f
    const/4 p3, 0x0

    .line 1353
    :goto_10
    instance-of p2, p2, Lcom/transsion/camera/feature/colorstyle/setting/widget/SplitItemView;

    if-eqz p2, :cond_1f

    .line 1354
    iget-object p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->access$400(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->getSplitItemRect(I)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_45

    :cond_1f
    if-nez p4, :cond_2c

    .line 1356
    iget-object p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->access$500(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->getFirstItemRect(I)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_45

    :cond_2c
    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_3b

    .line 1358
    iget-object p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->access$600(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->getLastItemRect(I)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_45

    .line 1360
    :cond_3b
    iget-object p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->access$700(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->getOtherItemRect(I)Landroid/graphics/Rect;

    move-result-object p0

    .line 1362
    :goto_45
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
