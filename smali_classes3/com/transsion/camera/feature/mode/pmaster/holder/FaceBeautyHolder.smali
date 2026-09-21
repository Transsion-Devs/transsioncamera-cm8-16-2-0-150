.class public Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;
.super Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;
.source "SourceFile"


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final sStates:[[I


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mStateList:Landroid/content/res/ColorStateList;

.field private final mStateListBlack:Landroid/content/res/ColorStateList;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$5pA8q59JXm2joxRGj9478Boz4FQ(Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->lambda$bindHolder$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const v0, 0x10100a7

    .line 16
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->PRESSED_STATE_SET:[I

    const v0, 0x10100a1

    .line 20
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 24
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->NORMAL_STATE_SET:[I

    .line 26
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 6

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;-><init>(Landroid/view/View;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mMainHandler:Landroid/os/Handler;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    .line 43
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    .line 44
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 47
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 49
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 51
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 54
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->sStates:[[I

    filled-new-array {p1, v1}, [I

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mStateList:Landroid/content/res/ColorStateList;

    .line 55
    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-direct {v1, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mStateListBlack:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private synthetic lambda$bindHolder$0()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_e
    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;IIZII)V
    .registers 7

    .line 60
    instance-of p5, p1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    if-eqz p5, :cond_57

    .line 61
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    .line 62
    iget p5, p1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->drawableId:I

    if-lez p5, :cond_16

    .line 63
    iget-object p6, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p6, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->titleId:I

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_16
    if-ne p2, p3, :cond_36

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mMainHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;)V

    const-wide/16 p5, 0x32

    invoke-virtual {p1, p2, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_46

    .line 79
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_46
    if-eqz p4, :cond_50

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mStateListBlack:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 86
    :cond_50
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_57
    return-void
.end method
