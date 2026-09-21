.class public Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolder"
.end annotation


# static fields
.field private static final ANIMATION_DURATION_300:I = 0x12c


# instance fields
.field protected mCompatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

.field private final mFilterCover:Landroid/widget/ImageView;

.field protected mItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field public final mItemRootLayout:Landroid/widget/FrameLayout;

.field private final mPopInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mSelectedBorder:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field protected root:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .registers 7

    .line 99
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    .line 101
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->filter_item_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mItemRootLayout:Landroid/widget/FrameLayout;

    .line 102
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->filter_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mCompatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    .line 103
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->item_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 104
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->filter_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    .line 105
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->filter_select_border:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    .line 106
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->filter_cover:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mFilterCover:Landroid/widget/ImageView;

    .line 108
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_63

    const/4 p1, 0x1

    .line 109
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 110
    new-instance p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder$1;-><init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_63
    return-void
.end method


# virtual methods
.method protected applyAlphaAnimation(Landroid/view/View;I)V
    .registers 9

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 122
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    .line 123
    new-array v2, v1, [F

    fill-array-data v2, :array_4e

    .line 124
    const-string v3, "scaleX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    fill-array-data v3, :array_56

    .line 125
    const-string v4, "scaleY"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v1, [F

    fill-array-data v4, :array_5e

    .line 126
    const-string v5, "alpha"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    aput-object p1, v4, v1

    .line 123
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x12c

    .line 129
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    int-to-long p0, p2

    const-wide/16 v1, 0x32

    mul-long/2addr p0, v1

    .line 130
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 131
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_4e
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_56
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_5e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected initViewByItem(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;ZZ)V
    .registers 7

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mCompatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getDrawableRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mFilterCover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getTitleRes()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->filter_normal_text_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_4d

    if-eqz p3, :cond_46

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->filter_selected_cover_screen_light:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4d

    .line 145
    :cond_46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->filter_selected_cover:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4d
    :goto_4d
    if-eqz p2, :cond_66

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->filter_selected_text_color:I

    invoke-virtual {v0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_7d

    .line 153
    :cond_66
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->filter_normal_text_color:I

    invoke-virtual {v0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 157
    :goto_7d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_88

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_88
    return-void
.end method

.method public updateRotation(IIZ)V
    .registers 4

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mCompatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    return-void
.end method

.method updateSize(II)V
    .registers 4

    if-lez p1, :cond_11

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 165
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    const/4 p1, 0x7

    if-ne p1, p2, :cond_21

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->flip_filter_normal_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2d

    .line 174
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->filter_normal_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 176
    :goto_2d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    const/4 p2, 0x0

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
