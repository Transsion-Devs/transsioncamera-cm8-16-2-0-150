.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetVH"
.end annotation


# instance fields
.field private final mFaceBeautyItemRoot:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

.field private mIconBackgroundView:Landroid/widget/FrameLayout;

.field private final mIconView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitleView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V
    .registers 8

    .line 1682
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 1683
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1684
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1685
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    .line 1686
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    .line 1687
    sget v2, Lcom/transsion/camera/feature/makeup/R$id;->face_beauty_item_root:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mFaceBeautyItemRoot:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    .line 1688
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1690
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1691
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon_background:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1692
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_48

    .line 1693
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    .line 1696
    :cond_48
    invoke-static {p1, p2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateFaceBeautyItemLayout(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;)V

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .registers 6

    .line 1706
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;

    if-eqz v0, :cond_77

    .line 1707
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;

    .line 1708
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mFaceBeautyItemRoot:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateFaceBeautyItemLayout(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;)V

    if-eqz p2, :cond_1b

    .line 1710
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_24

    .line 1712
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1714
    :goto_24
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    if-lez v0, :cond_5b

    if-eqz p2, :cond_56

    .line 1716
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmBlackIconMap(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4e

    .line 1717
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_4e

    .line 1718
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5b

    .line 1720
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5b

    .line 1723
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1727
    :cond_5b
    :goto_5b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_77

    if-nez p2, :cond_72

    .line 1729
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_6c

    .line 1730
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background_black_light_ui5:I

    goto :goto_6e

    .line 1731
    :cond_6c
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background:I

    .line 1729
    :goto_6e
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 1733
    :cond_72
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_black_background:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_77
    return-void
.end method

.method public getType()I
    .registers 1

    const p0, 0xfa04

    return p0
.end method

.method public updateRotation(IIZ)V
    .registers 4

    if-eqz p1, :cond_3

    return-void

    .line 1744
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mFaceBeautyItemRoot:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    return-void
.end method
