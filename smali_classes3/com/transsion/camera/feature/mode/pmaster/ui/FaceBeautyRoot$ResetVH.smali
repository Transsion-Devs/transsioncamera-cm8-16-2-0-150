.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ResetVH;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetVH"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V
    .registers 6

    .line 1442
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    .line 1443
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1444
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    .line 1445
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    .line 1446
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1448
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->feature_item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    .line 1449
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 1450
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1451
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_49

    .line 1452
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    :cond_49
    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .registers 6

    .line 1464
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;

    if-eqz v0, :cond_42

    .line 1465
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;

    .line 1466
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_13

    .line 1467
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    goto :goto_15

    .line 1468
    :cond_13
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    .line 1466
    :goto_15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1470
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3b

    if-eqz p2, :cond_25

    .line 1471
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_black_background:I

    goto :goto_27

    .line 1472
    :cond_25
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background:I

    .line 1471
    :goto_27
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez p2, :cond_3b

    .line 1473
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_3b

    .line 1474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateIconBackgroundView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/widget/FrameLayout;)V

    .line 1477
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;->drawableId:I

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/ITDFaceBeautyResConstant;->updateFaceBeautyImageView(Landroid/widget/ImageView;IZ)V

    :cond_42
    return-void
.end method

.method public getType()I
    .registers 1

    const p0, 0xfa03

    return p0
.end method

.method public updateRotation(IIZ)V
    .registers 4

    if-eqz p1, :cond_3

    return-void

    .line 1486
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    return-void
.end method
