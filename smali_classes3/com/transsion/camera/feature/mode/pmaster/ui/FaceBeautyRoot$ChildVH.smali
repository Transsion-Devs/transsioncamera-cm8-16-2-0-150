.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildVH"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method public static synthetic $r8$lambda$tXdg930ERN8D7EuNRSN9WqfkEsI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->lambda$bindHolder$0()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V
    .registers 6

    .line 1337
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    .line 1338
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1339
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    .line 1340
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    .line 1341
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1343
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->feature_item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    .line 1344
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 1345
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->pmu_item_circle_bar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    .line 1346
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1347
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_53

    .line 1348
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    .line 1351
    :cond_53
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_69

    .line 1352
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1353
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_69

    .line 1354
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    :cond_69
    return-void
.end method

.method private synthetic lambda$bindHolder$0()V
    .registers 3

    .line 1373
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 1374
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1375
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_e
    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .registers 8

    .line 1366
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    if-eqz v0, :cond_db

    .line 1367
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    .line 1368
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1369
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1370
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1372
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-eqz v0, :cond_69

    .line 1379
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setSelect(Z)V

    goto :goto_69

    .line 1382
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1383
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_59

    .line 1385
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    goto :goto_5b

    .line 1386
    :cond_59
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    .line 1384
    :goto_5b
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1387
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-eqz v0, :cond_69

    .line 1388
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setSelect(Z)V

    .line 1392
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-eqz v0, :cond_92

    if-eqz p2, :cond_7c

    .line 1393
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_black_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_88

    .line 1394
    :cond_7c
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 1393
    :goto_88
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setNormalColor(I)V

    .line 1395
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    iget v1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->progress:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setProgress(I)V

    .line 1398
    :cond_92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d2

    .line 1399
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b5

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_on_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_d2

    .line 1402
    :cond_b5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_bc

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_black_background:I

    goto :goto_be

    .line 1403
    :cond_bc
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background:I

    .line 1402
    :goto_be
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez p2, :cond_d2

    .line 1404
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_d2

    .line 1405
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateIconBackgroundView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/widget/FrameLayout;)V

    .line 1410
    :cond_d2
    :goto_d2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/ITDFaceBeautyResConstant;->updateFaceBeautyImageView(Landroid/widget/ImageView;IZ)V

    :cond_db
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

    .line 1419
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    return-void
.end method
