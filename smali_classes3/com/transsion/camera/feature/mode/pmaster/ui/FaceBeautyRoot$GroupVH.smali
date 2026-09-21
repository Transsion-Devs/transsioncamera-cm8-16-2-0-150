.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupVH"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method public static synthetic $r8$lambda$SaytRRrjGR1mMT2jnwH0Pvxg854(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->lambda$bindHolderGroup$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TCuwmo2ZZ7dm8haGCoTJsvdwbNM(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->lambda$bindHolderGroupUI4Menu$1()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V
    .registers 6

    .line 1169
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    .line 1170
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1171
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    .line 1172
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    .line 1173
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1175
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->feature_item_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    .line 1176
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 1177
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->pmu_item_circle_bar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    .line 1178
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1179
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_53

    .line 1180
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    .line 1183
    :cond_53
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_69

    .line 1184
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1185
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_69

    .line 1186
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    :cond_69
    return-void
.end method

.method private bindHolderGroup(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;Z)V
    .registers 9

    .line 1218
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 1219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    if-eqz v0, :cond_43

    .line 1220
    sget v2, Lcom/transsion/camera/feature/pmaster/R$id;->mu_img_item_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 1221
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$misExpandedState(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z

    move-result v2

    const/16 v3, 0x10e

    if-eqz v2, :cond_1f

    .line 1222
    invoke-virtual {v0, v3, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_43

    .line 1223
    :cond_1f
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_40

    .line 1224
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_3c

    if-eq v2, v3, :cond_38

    .line 1234
    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_43

    .line 1229
    :cond_38
    invoke-virtual {v0, v4, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_43

    .line 1226
    :cond_3c
    invoke-virtual {v0, v3, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_43

    .line 1238
    :cond_40
    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1241
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_4a

    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->expandBlackDrawableId:I

    goto :goto_4c

    :cond_4a
    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->expandDrawableId:I

    :goto_4c
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1242
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1244
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_64
    if-ge v3, v2, :cond_ad

    .line 1248
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    .line 1249
    instance-of v5, v4, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    if-eqz v5, :cond_64

    .line 1250
    check-cast v4, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    .line 1251
    invoke-static {v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1258
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1260
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1262
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_cd

    .line 1269
    :cond_ad
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1271
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_c4

    .line 1272
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    goto :goto_c6

    .line 1273
    :cond_c4
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    .line 1271
    :goto_c6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1275
    :goto_cd
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->drawableId:I

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/ITDFaceBeautyResConstant;->updateFaceBeautyImageView(Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method private bindHolderGroupUI4Menu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;Z)V
    .registers 9

    .line 1280
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindHolder,TYPE_GROUP, group.isExpand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    .line 1284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "whiten"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_8a

    .line 1286
    :cond_39
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_42
    if-ge v3, v0, :cond_89

    .line 1288
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_86

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget-object v5, v5, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1289
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    move v0, v2

    goto :goto_8a

    :cond_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_89
    move v0, v1

    .line 1296
    :goto_8a
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindHolder,TYPE_GROUP, selected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", curSkinColorFeatureKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", group.selectKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->selectKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", group.progress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->progress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1298
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-eqz v3, :cond_f4

    .line 1299
    invoke-virtual {v3, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setSelect(Z)V

    .line 1300
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-eqz p2, :cond_de

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_black_color:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_ea

    .line 1301
    :cond_de
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_color:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 1300
    :goto_ea
    invoke-virtual {v3, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setNormalColor(I)V

    .line 1302
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    iget v4, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->progress:I

    invoke-virtual {v3, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setProgress(I)V

    :cond_f4
    if-eqz v0, :cond_11e

    .line 1306
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1307
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1308
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1310
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_13e

    .line 1317
    :cond_11e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1319
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_135

    .line 1320
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    goto :goto_137

    .line 1321
    :cond_135
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    .line 1319
    :goto_137
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1324
    :goto_13e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_15d

    if-eqz p2, :cond_147

    .line 1325
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_black_background:I

    goto :goto_149

    .line 1326
    :cond_147
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_mu_item_background:I

    .line 1325
    :goto_149
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez p2, :cond_15d

    .line 1327
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_15d

    .line 1328
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconBackgroundView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateIconBackgroundView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/widget/FrameLayout;)V

    .line 1331
    :cond_15d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->drawableId:I

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/ITDFaceBeautyResConstant;->updateFaceBeautyImageView(Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method private synthetic lambda$bindHolderGroup$0()V
    .registers 3

    .line 1263
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 1264
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1265
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$bindHolderGroupUI4Menu$1()V
    .registers 3

    .line 1311
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 1312
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1313
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_e
    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .registers 4

    .line 1199
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    if-eqz v0, :cond_13

    .line 1200
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    .line 1201
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1202
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->bindHolderGroup(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;Z)V

    return-void

    .line 1204
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->bindHolderGroupUI4Menu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;Z)V

    :cond_13
    return-void
.end method

.method public getType()I
    .registers 1

    const p0, 0xfa01

    return p0
.end method

.method public updateRotation(IIZ)V
    .registers 4

    if-eqz p1, :cond_3

    return-void

    .line 1214
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    return-void
.end method
