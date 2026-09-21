.class public Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;
.super Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemDecorationFlip"
.end annotation


# instance fields
.field private mFirstItemRectFlip:Landroid/graphics/Rect;

.field private mLastItemRectFlip:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;


# direct methods
.method public static synthetic $r8$lambda$O8SWPtnJAdKZHXAREfRDlsNKeyc(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;II)Landroid/graphics/Rect;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->lambda$getFirstItemRect$1(II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T7UZogaGnzveOwawqlaLALE0z9Q(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;I)Landroid/graphics/Rect;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->lambda$getLastItemRect$3(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ruynVjxfmcXjcqBukxF_5aF6-no(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;II)Landroid/graphics/Rect;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->lambda$getFirstItemRect$0(II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zXzSTMzU3XmuZjp3Y_10bxkqwkE(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;I)Landroid/graphics/Rect;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->lambda$getLastItemRect$2(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V
    .registers 2

    .line 1144
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    return-void
.end method

.method private synthetic lambda$getFirstItemRect$0(II)Landroid/graphics/Rect;
    .registers 5

    .line 1157
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->mFirstItemRectFlip:Landroid/graphics/Rect;

    return-object v0
.end method

.method private synthetic lambda$getFirstItemRect$1(II)Landroid/graphics/Rect;
    .registers 5

    .line 1163
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mFirstItemRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private synthetic lambda$getLastItemRect$2(I)Landroid/graphics/Rect;
    .registers 5

    .line 1177
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_recycler_view_last_item_padding_flip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1178
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->mLastItemRectFlip:Landroid/graphics/Rect;

    return-object v1
.end method

.method private synthetic lambda$getLastItemRect$3(I)Landroid/graphics/Rect;
    .registers 5

    .line 1184
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_recycler_view_first_item_padding_flip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1185
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mLastItemRect:Landroid/graphics/Rect;

    return-object v1
.end method


# virtual methods
.method protected getFirstItemRect(I)Landroid/graphics/Rect;
    .registers 5

    .line 1150
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_recycler_view_first_item_padding_flip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1151
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->getItemPadding()I

    move-result v1

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_2e

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_2e

    const/16 v2, 0x10e

    if-eq p1, v2, :cond_2e

    .line 1162
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mFirstItemRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;II)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    .line 1156
    :cond_2e
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->mFirstItemRectFlip:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;II)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getItemPadding()I
    .registers 3

    .line 1193
    iget v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mItemPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 1194
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_recycler_view_item_padding_flip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mItemPadding:I

    .line 1196
    :cond_13
    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mItemPadding:I

    return p0
.end method

.method protected getLastItemRect(I)Landroid/graphics/Rect;
    .registers 4

    .line 1171
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->getItemPadding()I

    move-result v0

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_22

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_22

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_22

    .line 1183
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;->mLastItemRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    .line 1176
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;->mLastItemRectFlip:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method
