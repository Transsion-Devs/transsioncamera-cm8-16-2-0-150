.class Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;,
        Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;,
        Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mIsFirstEntry:Z


# instance fields
.field mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerHeight:I

.field mContainerWidth:I

.field private mDisplayLeftToRight:Z

.field private mIsPopSettingSupport:Z

.field private mUseCenterDirection:Z

.field mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsFirstEntry()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsFirstEntry:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarUpdateHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsFirstEntry:Z

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mDisplayLeftToRight:Z

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    .line 67
    new-instance p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    .line 68
    new-instance v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    const/4 p1, 0x1

    .line 69
    sput-boolean p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsFirstEntry:Z

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsPopSettingSupport:Z

    return-void
.end method

.method private calculateIntervalTranslate(II)I
    .registers 6

    .line 319
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[calculateIntervalTranslate] itemSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " itemViewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    if-le v0, p0, :cond_25

    goto :goto_26

    :cond_25
    move v0, p0

    :goto_26
    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-gt p1, v1, :cond_30

    sub-int/2addr v0, p2

    int-to-float p1, v0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_30
    sub-int/2addr v0, p2

    int-to-float p2, v0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    sub-int/2addr p1, v1

    .line 330
    div-int/2addr p0, p1

    return p0
.end method

.method private updateShowViews(Ljava/util/Map;IZII)Ljava/util/List;
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 157
    iget-object v5, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 158
    iget-object v6, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->expand_item_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 163
    iget-boolean v7, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mDisplayLeftToRight:Z

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_2c

    :cond_29
    move v7, v10

    goto/16 :goto_9f

    :cond_2c
    if-ne v3, v9, :cond_50

    .line 165
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v7

    if-le v7, v9, :cond_50

    if-ne v4, v8, :cond_43

    .line 167
    iget-object v7, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lcom/transsion/camera/R$dimen;->column_left_and_right_top_bar_container_item_distance:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_9f

    .line 169
    :cond_43
    iget-object v7, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_container_item_distance:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_9f

    :cond_50
    if-ne v3, v8, :cond_84

    .line 171
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v7

    if-le v7, v9, :cond_84

    if-eqz v2, :cond_77

    if-ne v4, v8, :cond_6a

    .line 174
    iget-object v7, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lcom/transsion/camera/R$dimen;->column_left_and_right_top_bar_container_item_distance:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_68
    neg-int v7, v7

    goto :goto_9f

    .line 176
    :cond_6a
    iget-object v7, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_container_item_distance:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_68

    .line 179
    :cond_77
    iget-object v7, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lcom/transsion/camera/R$dimen;->expand_left_and_right_top_bar_container_item_distance:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_9f

    .line 181
    :cond_84
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v7

    if-ge v7, v8, :cond_97

    .line 182
    iget-boolean v7, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsPopSettingSupport:Z

    if-nez v7, :cond_29

    .line 183
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v0, v7, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->calculateIntervalTranslate(II)I

    move-result v7

    goto :goto_9f

    .line 188
    :cond_97
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v0, v7, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->calculateIntervalTranslate(II)I

    move-result v7

    .line 190
    :goto_9f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v10

    :goto_ad
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2cf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 193
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move/from16 v16, v8

    const/high16 v8, 0x3f800000    # 1.0f

    .line 194
    invoke-virtual {v14, v8}, Landroid/view/View;->setScaleX(F)V

    .line 195
    invoke-virtual {v14, v8}, Landroid/view/View;->setScaleY(F)V

    .line 196
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v8, v9, :cond_de

    const-string v8, "key_flash_facade"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_de

    move v7, v10

    .line 199
    :cond_de
    instance-of v8, v14, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v8, :cond_eb

    const/4 v8, -0x1

    if-eq v1, v8, :cond_eb

    .line 200
    move-object v8, v14

    check-cast v8, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v8, v1, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 202
    :cond_eb
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_f9

    .line 203
    iget-object v8, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v17, v10

    goto :goto_111

    .line 205
    :cond_f9
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    move/from16 v17, v10

    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eq v8, v10, :cond_111

    .line 206
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 207
    iget-object v8, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_111
    :goto_111
    if-eqz v2, :cond_194

    .line 212
    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/16 v18, 0x4

    sget v8, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_container_width:I

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 213
    iget-boolean v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mUseCenterDirection:Z

    if-eqz v10, :cond_154

    .line 214
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v8, v9, :cond_134

    .line 215
    iget v8, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    sub-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x2

    move/from16 v10, v16

    goto/16 :goto_218

    .line 216
    :cond_134
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v8

    move/from16 v10, v16

    if-ne v8, v10, :cond_14d

    .line 217
    iget v8, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    add-int/lit8 v10, v13, 0x1

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v9

    mul-int/2addr v8, v13

    mul-int/lit8 v13, v5, 0x2

    sub-int/2addr v8, v13

    div-int/lit8 v8, v8, 0x4

    :goto_149
    move v13, v10

    :goto_14a
    const/4 v10, 0x2

    goto/16 :goto_218

    :cond_14d
    :goto_14d
    add-int/lit8 v8, v13, 0x1

    mul-int v10, v13, v7

    :goto_151
    move v13, v8

    move v8, v10

    goto :goto_14a

    :cond_154
    const/4 v10, 0x5

    if-ne v4, v10, :cond_15f

    if-ne v3, v9, :cond_15a

    goto :goto_14d

    :cond_15a
    add-int/lit8 v10, v13, 0x1

    mul-int/2addr v13, v7

    :goto_15d
    add-int/2addr v8, v13

    goto :goto_149

    :cond_15f
    move/from16 v10, v18

    if-ne v4, v10, :cond_170

    const/4 v10, 0x2

    if-ne v3, v10, :cond_16b

    add-int/lit8 v8, v13, 0x1

    neg-int v10, v7

    mul-int/2addr v10, v13

    goto :goto_151

    :cond_16b
    add-int/lit8 v10, v13, 0x1

    mul-int/2addr v13, v7

    :goto_16e
    sub-int/2addr v8, v13

    goto :goto_149

    .line 234
    :cond_170
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v10

    if-ne v10, v9, :cond_17e

    const/4 v10, 0x2

    if-ne v3, v10, :cond_17b

    goto/16 :goto_218

    :cond_17b
    move v8, v7

    goto/16 :goto_218

    :cond_17e
    move/from16 v19, v9

    const/4 v10, 0x2

    .line 241
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsPopSettingSupport:Z

    if-eqz v9, :cond_18d

    if-ne v3, v10, :cond_18d

    add-int/lit8 v9, v13, 0x1

    mul-int/2addr v13, v7

    add-int/2addr v8, v13

    move v13, v9

    goto :goto_14a

    :cond_18d
    add-int/lit8 v8, v13, 0x1

    mul-int v9, v13, v7

    :goto_191
    move v13, v8

    move v8, v9

    goto :goto_14a

    :cond_194
    move/from16 v19, v9

    .line 249
    iget-object v8, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/R$dimen;->expand_left_and_right_top_bar_container_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v9, 0xb4

    if-eq v1, v9, :cond_1d1

    const/16 v9, 0x10e

    if-eq v1, v9, :cond_1d1

    .line 271
    iget-boolean v8, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsPopSettingSupport:Z

    if-eqz v8, :cond_1cb

    const/4 v10, 0x2

    if-ne v3, v10, :cond_1be

    .line 273
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    add-int v9, v5, v7

    mul-int/2addr v8, v9

    add-int/lit8 v10, v13, 0x1

    mul-int/2addr v13, v9

    goto :goto_16e

    .line 282
    :cond_1be
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x3

    add-int v9, v5, v6

    mul-int/2addr v8, v9

    add-int/lit8 v10, v13, 0x1

    mul-int/2addr v13, v9

    goto :goto_15d

    :cond_1cb
    add-int/lit8 v8, v13, 0x1

    add-int v9, v5, v7

    mul-int/2addr v9, v13

    goto :goto_191

    .line 253
    :cond_1d1
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsPopSettingSupport:Z

    if-eqz v9, :cond_20f

    const/4 v10, 0x2

    if-ne v3, v10, :cond_1ec

    .line 255
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    add-int v16, v5, v7

    mul-int v9, v9, v16

    add-int/2addr v9, v8

    add-int/lit8 v8, v13, 0x1

    mul-int v13, v13, v16

    add-int/2addr v9, v13

    :goto_1e9
    move v13, v8

    move v8, v9

    goto :goto_218

    .line 257
    :cond_1ec
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v8

    move/from16 v9, v19

    if-ne v8, v9, :cond_200

    add-int/lit8 v8, v13, 0x1

    add-int v16, v5, v6

    mul-int v13, v13, v16

    move/from16 v21, v13

    move v13, v8

    move/from16 v8, v21

    goto :goto_218

    .line 260
    :cond_200
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v8

    sub-int/2addr v8, v9

    add-int v9, v5, v6

    mul-int/2addr v8, v9

    add-int/lit8 v16, v13, 0x1

    mul-int/2addr v13, v9

    sub-int/2addr v8, v13

    move/from16 v13, v16

    goto :goto_218

    :cond_20f
    const/4 v10, 0x2

    add-int/lit8 v8, v13, 0x1

    rsub-int/lit8 v9, v13, 0x5

    add-int v13, v5, v7

    mul-int/2addr v9, v13

    goto :goto_1e9

    .line 290
    :goto_218
    sget-object v9, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v5

    const-string v5, "[updateShowViews] orientation: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", needDivideEqually: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", curTranslate: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 292
    iget-object v5, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v1, 0x1

    const/4 v10, 0x4

    invoke-virtual {v5, v15, v8, v1, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->update(Ljava/lang/String;III)V

    .line 294
    iget-object v1, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_257

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_257

    const/4 v1, 0x1

    goto :goto_259

    :cond_257
    move/from16 v1, v17

    .line 295
    :goto_259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needAnimation = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_2a2

    if-eqz v2, :cond_2a2

    .line 297
    iget-object v1, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    iget v5, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    iget v8, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerHeight:I

    if-le v5, v8, :cond_27b

    const/4 v5, 0x1

    goto :goto_27d

    :cond_27b
    move/from16 v5, v17

    :goto_27d
    invoke-virtual {v1, v15, v14, v5, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->animator(Ljava/lang/String;Landroid/view/View;ZI)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    move-result-object v1

    if-eqz v1, :cond_2b1

    .line 298
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2b1

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateShowViews: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b1

    .line 303
    :cond_2a2
    iget-object v1, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    iget v5, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    iget v8, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerHeight:I

    if-le v5, v8, :cond_2ac

    const/4 v9, 0x1

    goto :goto_2ae

    :cond_2ac
    move/from16 v9, v17

    :goto_2ae
    invoke-virtual {v1, v15, v14, v9}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V

    .line 306
    :cond_2b1
    :goto_2b1
    iget-object v1, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v1, v15}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c0

    if-eq v1, v14, :cond_2c0

    .line 308
    iget-object v5, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 310
    :cond_2c0
    iget-object v1, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v1, v15, v14}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->cacheView(Ljava/lang/String;Landroid/view/View;)V

    move/from16 v1, p2

    move/from16 v10, v17

    move/from16 v5, v20

    const/4 v8, 0x2

    const/4 v9, 0x1

    goto/16 :goto_ad

    :cond_2cf
    move v1, v9

    move/from16 v17, v10

    if-eq v3, v1, :cond_2d6

    .line 313
    sput-boolean v17, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsFirstEntry:Z

    :cond_2d6
    return-object v11
.end method


# virtual methods
.method setContainerWidthAndHeight(II)V
    .registers 6

    .line 78
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setContainerWidthAndHeight] containerWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", containerHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    .line 80
    iput p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerHeight:I

    return-void
.end method

.method public setDisplayLeftToRight(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mDisplayLeftToRight:Z

    return-void
.end method

.method public setUseMiddleDirection(Z)V
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mUseCenterDirection:Z

    return-void
.end method

.method update(Ljava/util/Map;IZIILandroid/animation/Animator$AnimatorListener;)V
    .registers 12

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->updateStart()V

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p3, :cond_b

    move v1, v0

    goto :goto_d

    :cond_b
    const/high16 v1, 0x3f000000    # 0.5f

    .line 103
    :goto_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->updateShowViews(Ljava/util/Map;IZII)Ljava/util/List;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    .line 108
    iget-object p3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmKey(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->isValidAnimatorParamHolder(Ljava/lang/String;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 109
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 114
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->updateEnd()Ljava/util/List;

    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_42
    if-ge p4, p2, :cond_7f

    .line 116
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    .line 117
    new-instance v3, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    invoke-direct {v3, p5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V

    .line 118
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setStartAlpha(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setEndAlpha(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object v3

    .line 120
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setStartScale(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object v3

    .line 121
    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setEndScale(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;

    invoke-direct {v4, p0, p5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V

    .line 122
    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->setAction(Ljava/util/function/Consumer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    move-result-object p5

    .line 141
    invoke-virtual {p5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->build()Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    move-result-object p5

    .line 142
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-static {p5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmKey(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->isValidAnimatorParamHolder(Ljava/lang/String;Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 143
    invoke-interface {v2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 p4, p4, 0x1

    goto :goto_42

    .line 146
    :cond_7f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a9

    .line 147
    sget-object p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "update: "

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->animatorStart()V

    .line 149
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_96
    if-ge p3, p1, :cond_a4

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    check-cast p2, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    .line 150
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->apply()V

    goto :goto_96

    .line 152
    :cond_a4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {p0, p6}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->animatorEnd(Landroid/animation/Animator$AnimatorListener;)V

    :cond_a9
    return-void
.end method
