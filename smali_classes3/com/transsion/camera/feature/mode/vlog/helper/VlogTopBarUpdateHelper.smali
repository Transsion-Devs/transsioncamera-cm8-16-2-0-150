.class public Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;,
        Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mAnimatorHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerHeight:I

.field mContainerWidth:I

.field mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    .line 46
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    .line 47
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;-><init>(Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;

    return-void
.end method

.method private calculateIntervalTranslate(II)I
    .registers 6

    .line 160
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateIntervalTranslate------mContainerWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " itemSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " itemViewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerHeight:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerWidth:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_35

    const/4 p0, 0x0

    return p0

    :cond_35
    sub-int/2addr p0, p2

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    sub-int/2addr p1, v0

    .line 169
    div-int/2addr p0, p1

    return p0
.end method

.method private updateShowViews(Ljava/util/Map;IZZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;IZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 91
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_top_bar_item_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v2, :cond_1d

    .line 94
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v0, v4, v3}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->calculateIntervalTranslate(II)I

    move-result v4

    goto :goto_29

    .line 96
    :cond_1d
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_item_distance_expand:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_29
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p4, :cond_3d

    .line 99
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3d

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_3d

    move v7, v6

    goto :goto_3e

    :cond_3d
    move v7, v5

    .line 100
    :goto_3e
    sget-object v8, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateShowViews : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v5

    :goto_5e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 104
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 106
    instance-of v12, v10, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v12, :cond_83

    const/4 v12, -0x1

    if-eq v1, v12, :cond_83

    .line 108
    move-object v12, v10

    check-cast v12, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v12, v1, v5}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 111
    :cond_83
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_8f

    .line 112
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_a5

    .line 114
    :cond_8f
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    iget-object v13, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eq v12, v13, :cond_a5

    .line 115
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a5
    :goto_a5
    if-eqz v2, :cond_b4

    .line 122
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v12

    if-ne v12, v6, :cond_b0

    move v12, v9

    move v9, v4

    goto :goto_d7

    :cond_b0
    add-int/lit8 v12, v9, 0x1

    mul-int/2addr v9, v4

    goto :goto_d7

    :cond_b4
    const/16 v12, 0xb4

    if-eq v1, v12, :cond_c7

    const/16 v12, 0x10e

    if-eq v1, v12, :cond_c7

    add-int/lit8 v9, v9, 0x1

    add-int v12, v3, v4

    mul-int/2addr v12, v9

    :goto_c1
    move/from16 v16, v12

    move v12, v9

    move/from16 v9, v16

    goto :goto_d7

    .line 131
    :cond_c7
    iget v12, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerHeight:I

    iget v13, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerWidth:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v9, v9, 0x1

    add-int v13, v3, v4

    mul-int/2addr v13, v9

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    goto :goto_c1

    .line 141
    :goto_d7
    sget-object v13, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[updateShowViews] orientation: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", needDivideEqually: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", curTranslate: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    const/4 v14, 0x4

    invoke-virtual {v13, v11, v9, v6, v14}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->update(Ljava/lang/String;III)V

    if-eqz v7, :cond_116

    if-eqz v2, :cond_116

    .line 146
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;

    iget v13, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerWidth:I

    iget v14, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerHeight:I

    if-le v13, v14, :cond_111

    move v13, v6

    goto :goto_112

    :cond_111
    move v13, v5

    :goto_112
    invoke-virtual {v9, v11, v10, v13}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->animator(Ljava/lang/String;Landroid/view/View;Z)V

    goto :goto_124

    .line 148
    :cond_116
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;

    iget v13, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerWidth:I

    iget v14, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerHeight:I

    if-le v13, v14, :cond_120

    move v13, v6

    goto :goto_121

    :cond_120
    move v13, v5

    :goto_121
    invoke-virtual {v9, v11, v10, v13}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V

    .line 151
    :goto_124
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    invoke-virtual {v9, v11}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_133

    if-eq v9, v10, :cond_133

    .line 153
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    :cond_133
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    invoke-virtual {v9, v11, v10}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->cacheView(Ljava/lang/String;Landroid/view/View;)V

    move v9, v12

    goto/16 :goto_5e

    :cond_13b
    return-void
.end method


# virtual methods
.method public setContainerWidthAndHeight(II)V
    .registers 3

    .line 51
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerWidth:I

    .line 52
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainerHeight:I

    return-void
.end method

.method public update(Ljava/util/Map;IZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;IZZ)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->updateStart()V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->animatorStart()V

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->updateShowViews(Ljava/util/Map;IZZ)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->updateEnd()Ljava/util/List;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_18
    if-ge p3, p2, :cond_3a

    .line 66
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p4, :cond_30

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;Landroid/view/View;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->addAlphaAnimator(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_37

    .line 79
    :cond_30
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_37

    .line 80
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_37
    :goto_37
    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    :cond_3a
    if-eqz p4, :cond_41

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->animatorEnd()V

    :cond_41
    return-void
.end method
