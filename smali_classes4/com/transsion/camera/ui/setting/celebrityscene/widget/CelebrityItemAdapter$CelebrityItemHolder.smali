.class public Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CelebrityItemHolder"
.end annotation


# instance fields
.field private mItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mItemFrameLayout:Landroid/widget/FrameLayout;

.field private mItemImageView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

.field private final mPopInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRootView:Landroid/view/View;

.field private mSelectedBorder:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmItemFrameLayout(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyAlphaAnimation(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;Landroid/view/View;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->applyAlphaAnimation(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitViewByItem(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;ZZII)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->initViewByItem(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;ZZII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 7

    .line 134
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 130
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mRootView:Landroid/view/View;

    .line 136
    sget v0, Lcom/transsion/camera/R$id;->celebrity_item_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemFrameLayout:Landroid/widget/FrameLayout;

    .line 137
    sget v0, Lcom/transsion/camera/R$id;->celebrity_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 138
    sget v0, Lcom/transsion/camera/R$id;->celebrity_item_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemImageView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    .line 139
    sget v0, Lcom/transsion/camera/R$id;->celebrity_item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mTitleView:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/transsion/camera/R$id;->celebrity_item_select_border:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemFrameLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemFrameLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder$1;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private applyAlphaAnimation(Landroid/view/View;I)V
    .registers 9

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 154
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    .line 155
    new-array v2, v1, [F

    fill-array-data v2, :array_4e

    .line 156
    const-string v3, "scaleX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    fill-array-data v3, :array_56

    .line 157
    const-string v4, "scaleY"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v1, [F

    fill-array-data v4, :array_5e

    .line 158
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

    .line 155
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x12c

    .line 161
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    int-to-long p0, p2

    const-wide/16 v1, 0x32

    mul-long/2addr p0, v1

    .line 162
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 163
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

.method private initViewByItem(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;ZZII)V
    .registers 7

    if-nez p4, :cond_c

    if-nez p5, :cond_c

    .line 169
    iget-object p4, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemImageView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    sget p5, Lcom/transsion/camera/R$drawable;->ic_celebrity_item_on:I

    invoke-virtual {p4, p5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_15

    .line 171
    :cond_c
    iget-object p4, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemImageView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;->getDrawableResource()I

    move-result p5

    invoke-virtual {p4, p5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 173
    :goto_15
    iget-object p4, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;->getTitleResource()I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->filter_normal_text_size:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 176
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mTitleView:Landroid/widget/TextView;

    int-to-float p4, p4

    const/4 v0, 0x0

    invoke-virtual {p5, v0, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p4

    if-nez p4, :cond_4c

    if-eqz p3, :cond_45

    .line 179
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    sget p4, Lcom/transsion/camera/R$drawable;->filter_selected_cover_screen_light:I

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4c

    .line 181
    :cond_45
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    sget p4, Lcom/transsion/camera/R$drawable;->filter_selected_cover:I

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4c
    :goto_4c
    if-eqz p2, :cond_65

    .line 185
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mTitleView:Landroid/widget/TextView;

    sget p3, Lcom/transsion/camera/R$color;->celebrate_filter_selected_text_color:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 189
    :cond_65
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mSelectedBorder:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mTitleView:Landroid/widget/TextView;

    sget p3, Lcom/transsion/camera/R$color;->celebrate_filter_normal_text_color:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public updateRotation(IZ)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemImageView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    return-void
.end method

.method public updateSize(II)V
    .registers 5

    if-lez p1, :cond_11

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 198
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    if-nez p2, :cond_35

    .line 204
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->celebrate_filter_back_ground_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 205
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemImageView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    mul-int/lit8 p1, p1, 0x2

    .line 206
    div-int/lit8 p1, p1, 0x3

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 207
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mItemImageView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_35
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->filter_normal_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->mTitleView:Landroid/widget/TextView;

    const/4 p2, 0x0

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
