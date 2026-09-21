.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinVH"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V
    .registers 6

    .line 1492
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    .line 1493
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1494
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    .line 1495
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    .line 1496
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1498
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->feature_item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .registers 4

    .line 1508
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    if-eqz v0, :cond_54

    .line 1509
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    .line 1510
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 1511
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1512
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1513
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 1516
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1517
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1518
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object p0

    if-eqz p2, :cond_4b

    .line 1519
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    goto :goto_4d

    .line 1520
    :cond_4b
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    .line 1518
    :goto_4d
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_54
    return-void
.end method

.method public getType()I
    .registers 1

    const p0, 0xfa05

    return p0
.end method
