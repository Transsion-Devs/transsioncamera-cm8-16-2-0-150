.class public Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEF_SELECTED_PST:I = -0x1


# instance fields
.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageViewRectSize:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageViewResId:I

.field private mIsDropDownSpinner:Z

.field private mSelectedItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSelectedPst:I

.field private mShowSortIcon:Z

.field private mTextViewColor:Ljava/lang/Integer;

.field private mTextViewColorStateList:Landroid/content/res/ColorStateList;

.field private final mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mShowSortIcon:Z

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewColor:Ljava/lang/Integer;

    .line 46
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewColorStateList:Landroid/content/res/ColorStateList;

    .line 59
    iput p3, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewResId:I

    .line 60
    iput p4, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    sget v2, Lcom/transsion/widgetslib/R$layout;->os_popup_item_layout_selected:I

    const v3, 0x1020014

    sget v4, Lcom/transsion/widgetslib/R$id;->os_list_popup_selected:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;-><init>(Landroid/content/Context;IIILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    .line 49
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private setSelectedStatus(ILandroid/view/View;)V
    .registers 9

    .line 136
    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedItem:Ljava/lang/Object;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    move p1, v1

    .line 137
    :goto_c
    iget v0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewResId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 139
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_4a

    if-eqz p1, :cond_2c

    .line 142
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$integer;->OSSemiBoldWeight:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_32

    .line 144
    :cond_2c
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 146
    :goto_32
    check-cast v0, Landroid/widget/TextView;

    .line 147
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3f

    .line 149
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_4a

    .line 150
    :cond_3f
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewColor:Ljava/lang/Integer;

    if-eqz v2, :cond_4a

    .line 151
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    :cond_4a
    :goto_4a
    iget v0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewResId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    iget v2, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    const/16 v3, 0x8

    if-gez v2, :cond_58

    move v2, v3

    goto :goto_5d

    :cond_58
    if-eqz p1, :cond_5c

    move v2, v1

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x4

    :goto_5d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_71

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_71

    .line 158
    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_71
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewRectSize:Lkotlin/Pair;

    if-eqz v2, :cond_ad

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_ad

    .line 162
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewRectSize:Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_ad

    .line 163
    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 165
    iget-object v5, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewRectSize:Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    iget-object v5, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewRectSize:Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :cond_ad
    sget v2, Lcom/transsion/widgetslib/R$id;->os_list_popup_sort:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_ba

    .line 170
    iget-boolean p0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mShowSortIcon:Z

    if-eqz p0, :cond_ba

    goto :goto_bb

    :cond_ba
    move v1, v3

    :goto_bb
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-ne p0, v3, :cond_d7

    .line 173
    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_d7
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 110
    iget-boolean p3, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mIsDropDownSpinner:Z

    if-eqz p3, :cond_d

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->setSelectedStatus(ILandroid/view/View;)V

    :cond_d
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 123
    iget-boolean p3, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mIsDropDownSpinner:Z

    if-eqz p3, :cond_16

    .line 124
    iget p0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewResId:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    .line 125
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 127
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->setSelectedStatus(ILandroid/view/View;)V

    :cond_19
    return-object p2
.end method

.method public setDropDownSpinner(Z)V
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mIsDropDownSpinner:Z

    return-void
.end method

.method public setImageViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageViewRectSize(Lkotlin/Pair;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mImageViewRectSize:Lkotlin/Pair;

    return-void
.end method

.method public setSelected(I)V
    .registers 3

    if-ltz p1, :cond_11

    .line 74
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 75
    iput p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    .line 76
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedItem:Ljava/lang/Object;

    return-void

    :cond_11
    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    return-void
.end method

.method public setSelected(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedPst:I

    .line 93
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mSelectedItem:Ljava/lang/Object;

    return-void
.end method

.method public setShowSortIcon(Z)V
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mShowSortIcon:Z

    return-void
.end method

.method public setTextViewColor(Ljava/lang/Integer;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewColor:Ljava/lang/Integer;

    return-void
.end method

.method public setTextViewColorStateList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectedArrayAdapter;->mTextViewColorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method
