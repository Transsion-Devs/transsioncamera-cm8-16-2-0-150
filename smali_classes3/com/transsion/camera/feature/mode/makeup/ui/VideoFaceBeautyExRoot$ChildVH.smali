.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildVH"
.end annotation


# instance fields
.field private final mFaceBeautyItemRoot:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

.field private mIconBackgroundView:Landroid/widget/FrameLayout;

.field private final mIconView:Landroid/widget/ImageView;

.field private mProgressBar:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;

.field private final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public static synthetic $r8$lambda$Qnx8_JavSQWRMZajmyJjJgeYr6c(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->lambda$bindHolder$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitleView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V
    .registers 8

    .line 1539
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 1540
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1541
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1542
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    .line 1543
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    .line 1544
    sget v2, Lcom/transsion/camera/feature/makeup/R$id;->face_beauty_item_root:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mFaceBeautyItemRoot:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    .line 1545
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1547
    invoke-static {p1, p2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateFaceBeautyItemLayout(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;)V

    .line 1548
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 1549
    sget p1, Lcom/transsion/camera/feature/makeup/R$id;->video_face_item_circle_bar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mProgressBar:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;

    .line 1550
    sget p1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1551
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_55

    .line 1552
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    :cond_55
    return-void
.end method

.method private synthetic lambda$bindHolder$0()V
    .registers 2

    .line 1570
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .registers 7

    .line 1564
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    if-eqz v0, :cond_128

    .line 1565
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    .line 1566
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mFaceBeautyItemRoot:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateFaceBeautyItemLayout(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;)V

    .line 1567
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1568
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1570
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1571
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1573
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mProgressBar:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;

    if-eqz v0, :cond_7f

    .line 1574
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->setSelect(Z)V

    goto :goto_7f

    .line 1577
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1578
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p2, :cond_67

    .line 1580
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_78

    .line 1583
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1586
    :goto_78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mProgressBar:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;

    if-eqz v0, :cond_7f

    .line 1587
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->setSelect(Z)V

    .line 1590
    :cond_7f
    :goto_7f
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v0

    if-lez v0, :cond_c0

    if-eqz p2, :cond_b7

    .line 1592
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmBlackIconMap(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_ad

    .line 1593
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_ad

    .line 1594
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c0

    .line 1596
    :cond_ad
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c0

    .line 1599
    :cond_b7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1603
    :cond_c0
    :goto_c0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mProgressBar:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;

    if-eqz v0, :cond_e9

    if-eqz p2, :cond_d3

    .line 1604
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_black_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_df

    .line 1605
    :cond_d3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 1604
    :goto_df
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->setNormalColor(I)V

    .line 1606
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mProgressBar:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;

    iget v1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->progress:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceCircularProgressBar;->setProgress(I)V

    .line 1609
    :cond_e9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_128

    .line 1610
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10c

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10c

    .line 1611
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_on_background:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_10c
    if-nez p2, :cond_121

    .line 1614
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_11b

    .line 1615
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background_black_light_ui5:I

    goto :goto_11d

    .line 1616
    :cond_11b
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background:I

    .line 1614
    :goto_11d
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 1618
    :cond_121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_black_background:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_128
    return-void
.end method

.method public getType()I
    .registers 1

    const p0, 0xfa02

    return p0
.end method

.method public updateRotation(IIZ)V
    .registers 4

    if-eqz p1, :cond_3

    return-void

    .line 1630
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mFaceBeautyItemRoot:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    return-void
.end method
