.class public Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCityInfo:Ljava/lang/String;

.field mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

.field private mEditWaterMarkPreviewRoot:Landroid/widget/FrameLayout;

.field private mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

.field private mEditWaterMarkUIItems:Ljava/util/List;

.field private mEditWaterMarkUIItemsSort:Ljava/util/List;

.field private mIFragmentSortControl:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;

.field mShowBrandWaterMarkSort:Landroid/widget/TextView;

.field mShowCityWaterMarkSort:Landroid/widget/TextView;

.field mShowTextWaterMarkSort:Landroid/widget/TextView;

.field mShowTimeWaterMarkSort:Landroid/widget/TextView;

.field private mTextInfo:Ljava/lang/String;

.field private mTimeInfo:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$79X9_2JYwHgFtuEGMfB9wZNvwhQ(Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->lambda$initViews$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditWaterMarkSortFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    return-void
.end method

.method private getBrandWatermark()I
    .registers 1

    .line 336
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 337
    sget p0, Lcom/transsion/camera/R$drawable;->edit_watermark_brand_special:I

    return p0

    .line 339
    :cond_9
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandPreview:Z

    if-eqz p0, :cond_14

    .line 340
    sget p0, Lcom/transsion/camera/R$drawable;->edit_watermark_brand_preview:I

    return p0

    :cond_14
    sget p0, Lcom/transsion/camera/R$drawable;->edit_watermark_brand:I

    return p0
.end method

.method private synthetic lambda$initViews$0()V
    .registers 2

    .line 124
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->getEditWaterMarkUIItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mIFragmentSortControl:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;->onUpdateSortWaterMark()V

    .line 129
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateTextView()V

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showWaterMarkSorted()V

    return-void
.end method

.method private showBrandWaterMark(Landroid/widget/TextView;)V
    .registers 5

    .line 205
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 208
    :cond_7
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 209
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 210
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->getBrandWatermark()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 211
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->getBrandWatermark()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 212
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/camera/R$dimen;->edit_watermark_brand_preview_height:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 216
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 218
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showWaterMarkSorted()V
    .registers 6

    const/4 v0, 0x0

    .line 144
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_197

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v1, :cond_6f

    .line 146
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-nez v1, :cond_2c

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 148
    :cond_2c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v2, :cond_43

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 150
    :cond_43
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v4, :cond_5a

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 152
    :cond_5a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_193

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showBrandWaterMark(Landroid/widget/TextView;)V

    goto/16 :goto_193

    .line 155
    :cond_6f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_d2

    .line 156
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-nez v1, :cond_8f

    .line 157
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 158
    :cond_8f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v2, :cond_a6

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 160
    :cond_a6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v4, :cond_bd

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 162
    :cond_bd
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_193

    .line 163
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showBrandWaterMark(Landroid/widget/TextView;)V

    goto/16 :goto_193

    .line 165
    :cond_d2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_134

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-nez v1, :cond_f2

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 168
    :cond_f2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v2, :cond_109

    .line 169
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 170
    :cond_109
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v4, :cond_120

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_193

    .line 172
    :cond_120
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_193

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showBrandWaterMark(Landroid/widget/TextView;)V

    goto :goto_193

    .line 175
    :cond_134
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-ne v0, v1, :cond_193

    .line 176
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-nez v1, :cond_154

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_193

    .line 178
    :cond_154
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v2, :cond_16a

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_193

    .line 180
    :cond_16a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v4, :cond_180

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_193

    .line 182
    :cond_180
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_193

    .line 183
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showBrandWaterMark(Landroid/widget/TextView;)V

    :cond_193
    :goto_193
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_197
    return-void
.end method

.method private updateEditWaterMarkRootLayout(II)V
    .registers 8

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkPreviewRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10b

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

    if-nez v1, :cond_a

    goto/16 :goto_10b

    .line 296
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 297
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 298
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 300
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->setting_edit_watermark_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 299
    invoke-virtual {v2, v1, v1, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eqz p2, :cond_d2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_30

    goto/16 :goto_d2

    .line 307
    :cond_30
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/R$dimen;->setting_edit_watermark_expand_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_8b

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_8b

    .line 322
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 323
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/R$dimen;->setting_base_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 324
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 325
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/R$dimen;->setting_base_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 326
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 327
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_101

    .line 311
    :cond_8b
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 312
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/R$dimen;->setting_base_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 314
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/R$dimen;->setting_base_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 315
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 316
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_101

    .line 302
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_edit_watermark_normal_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 303
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/R$dimen;->setting_base_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 304
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_base_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 305
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_base_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 331
    :goto_101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkPreviewRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10b
    :goto_10b
    return-void
.end method

.method private updateShowTextView(Landroid/widget/TextView;)V
    .registers 4

    .line 222
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 225
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$dimen;->default_edit_watermark_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p0, -0x2

    .line 227
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 229
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTextView()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateShowTextView(Landroid/widget/TextView;)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateShowTextView(Landroid/widget/TextView;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateShowTextView(Landroid/widget/TextView;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateShowTextView(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .registers 1

    return-void
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 1

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEditWaterMarkUIItemsSorted()Ljava/util/List;
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    return-object p0
.end method

.method protected getPreferenceResource()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .registers 2

    .line 265
    sget p0, Lcom/transsion/camera/R$id;->edit_watermark_sort_fragment_toolbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    .line 266
    sget p1, Lcom/transsion/camera/R$string;->edit_watermark_sort_top_bar:I

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 267
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 6

    .line 107
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_sort_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    .line 108
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 109
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_preview_root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkPreviewRoot:Landroid/widget/FrameLayout;

    const v0, 0x102003f

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

    .line 112
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_order_recyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    new-instance v0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    .line 114
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editWaterMarkUIItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    if-eqz v0, :cond_63

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->updateItemsList(Ljava/util/List;)V

    .line 122
    :cond_63
    new-instance v0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchHelper;

    new-instance v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    new-instance v3, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback;-><init>(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 132
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 134
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateEditWaterMarkRootLayout(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 288
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 289
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->updateEditWaterMarkRootLayout(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 86
    new-instance p3, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 87
    sget p0, Lcom/transsion/camera/R$layout;->edit_watermark_preference_sort_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mIFragmentSortControl:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;->onExitSortWaterMark()V

    .line 140
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    .line 92
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, ""

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 97
    :cond_2b
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_edit_watermark_sort"

    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    sget p2, Lcom/transsion/camera/R$id;->show_time_watermark_sort:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    .line 99
    sget p2, Lcom/transsion/camera/R$id;->show_city_watermark_sort:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    .line 100
    sget p2, Lcom/transsion/camera/R$id;->show_text_watermark_sort:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    .line 101
    sget p2, Lcom/transsion/camera/R$id;->show_brand_watermark_sort:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->showWaterMarkSorted()V

    return-void
.end method

.method protected removeAllPreferences()V
    .registers 1

    return-void
.end method

.method public setCityInfo(Ljava/lang/String;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mCityInfo:Ljava/lang/String;

    return-void
.end method

.method public setIFragmentSortControl(Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mIFragmentSortControl:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;

    return-void
.end method

.method public setItemsList(Ljava/util/List;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mEditWaterMarkUIItemsSort:Ljava/util/List;

    return-void
.end method

.method public setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V
    .registers 2

    .line 72
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    return-void
.end method

.method public setTextInfo(Ljava/lang/String;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTextInfo:Ljava/lang/String;

    return-void
.end method

.method public setTimeInfo(Ljava/lang/String;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mTimeInfo:Ljava/lang/String;

    return-void
.end method

.method public unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTextWaterMarkSort:Landroid/widget/TextView;

    .line 346
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowBrandWaterMarkSort:Landroid/widget/TextView;

    .line 347
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowCityWaterMarkSort:Landroid/widget/TextView;

    .line 348
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mShowTimeWaterMarkSort:Landroid/widget/TextView;

    .line 349
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method protected unInitViews()V
    .registers 1

    return-void
.end method
