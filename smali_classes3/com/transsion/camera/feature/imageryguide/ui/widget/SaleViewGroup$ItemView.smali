.class Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemView"
.end annotation


# instance fields
.field container:Landroid/view/ViewGroup;

.field image:Landroid/widget/ImageView;

.field private final mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field text:Landroid/widget/TextView;

.field textCover:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;


# direct methods
.method public static synthetic $r8$lambda$oEykClMdU6LsKOcEgHiOvD3X_w0(Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->lambda$initClickListener$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 4

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->container:Landroid/view/ViewGroup;

    .line 59
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->image:Landroid/widget/ImageView;

    .line 60
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->text:Landroid/widget/TextView;

    .line 61
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->textCover:Landroid/view/View;

    .line 62
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    .line 64
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->initContainer(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->initImageView(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->initTextView(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->initGradientView(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->initClickListener(Landroid/content/Context;)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->container:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->container:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->textCover:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->container:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->text:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initClickListener(Landroid/content/Context;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->container:Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initContainer(Landroid/content/Context;)V
    .registers 4

    .line 95
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->setViewRadius(Landroid/view/View;I)V

    return-void
.end method

.method private initGradientView(Landroid/content/Context;)V
    .registers 10

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_cover_view_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 108
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p1

    const/4 v1, 0x0

    const/high16 v2, -0x67000000

    filled-new-array {v1, v2}, [I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 115
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 116
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->textCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x50

    .line 124
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->textCover:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initImageView(Landroid/content/Context;)V
    .registers 3

    .line 143
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 147
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->image:Landroid/widget/ImageView;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private initTextView(Landroid/content/Context;)V
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->text:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800053

    .line 136
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_text_margin_start:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_text_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, v2, v2, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->text:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$initClickListener$0(Landroid/content/Context;Landroid/view/View;)V
    .registers 8

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    if-eqz v0, :cond_70

    .line 78
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->MODE_ENTRY_MODENAME_MAP:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_25

    .line 80
    :cond_23
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_asd_mode_title:I

    .line 82
    :goto_25
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 83
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_analytics_sale_mode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x27

    .line 84
    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 89
    :cond_64
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    return-void
.end method
