.class public Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;
.super Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
        "Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final mIconView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;-><init>(Landroid/view/View;)V

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    .line 24
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    .line 25
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2, v2, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 27
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p0, :cond_36

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_43

    .line 28
    :cond_36
    sget p0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon_background:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 30
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_43
    return-void
.end method


# virtual methods
.method public bindHolder(Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;IIZZ)V
    .registers 7

    .line 38
    iget p4, p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->drawableId:I

    if-lez p4, :cond_10

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->titleId:I

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_10
    const/4 p4, 0x1

    if-ne p2, p3, :cond_1e

    .line 43
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 44
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_29

    .line 46
    :cond_1e
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 47
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 49
    :goto_29
    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    if-ne p1, p4, :cond_3e

    if-eqz p5, :cond_3e

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mDisableStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mIconView:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/featurelibs/makeupRes/R$drawable;->ic_multi_reset_disable:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 53
    :cond_3e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic bindHolder(Ljava/lang/Object;IIZZ)V
    .registers 6

    .line 15
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/makeup/holder/SlimBodyHolder;->bindHolder(Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;IIZZ)V

    return-void
.end method
