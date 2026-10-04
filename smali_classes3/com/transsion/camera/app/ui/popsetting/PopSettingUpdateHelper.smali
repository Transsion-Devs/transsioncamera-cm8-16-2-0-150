.class public Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;,
        Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAnimatorHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

.field private final mContainer:Landroid/view/ViewGroup;

.field private mContainerHeight:I

.field private mContainerWidth:I

.field private mUseCenterDirection:Z

.field private final mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopSettingUpdateHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    .line 39
    new-instance p1, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    .line 40
    new-instance v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;-><init>(Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

    return-void
.end method

.method private updateShowViews(Ljava/util/Map;IZ)V
    .registers 16

    .line 71
    iget-object p3, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_16

    move v0, v1

    goto :goto_22

    .line 78
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->treasure_box_container_translate:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    :goto_22
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 82
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 83
    instance-of v7, v5, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v7, :cond_50

    const/4 v7, -0x1

    if-eq p2, v7, :cond_50

    .line 84
    move-object v7, v5

    check-cast v7, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v7, p2, v1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 86
    :cond_50
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_5c

    .line 87
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6a

    .line 89
    :cond_5c
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :goto_6a
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mUseCenterDirection:Z

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v7, :cond_96

    .line 94
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-ne v7, v9, :cond_7b

    .line 95
    iget v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerWidth:I

    sub-int/2addr v7, p3

    div-int/2addr v7, v2

    goto :goto_9d

    .line 96
    :cond_7b
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-ne v7, v2, :cond_8f

    .line 97
    iget v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerWidth:I

    add-int/lit8 v10, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    mul-int/2addr v7, v4

    mul-int/lit8 v4, p3, 0x2

    sub-int/2addr v7, v4

    div-int/2addr v7, v8

    move v4, v10

    goto :goto_9d

    :cond_8f
    add-int/lit8 v7, v4, 0x1

    mul-int/2addr v4, v0

    move v11, v7

    move v7, v4

    move v4, v11

    goto :goto_9d

    .line 102
    :cond_96
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-ne v7, v9, :cond_8f

    move v7, v0

    .line 108
    :goto_9d
    iget-object v10, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {v10, v6, v7, v9, v8}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->update(Ljava/lang/String;III)V

    .line 109
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

    iget v8, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerWidth:I

    iget v10, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerHeight:I

    if-le v8, v10, :cond_ab

    goto :goto_ac

    :cond_ab
    move v9, v1

    :goto_ac
    invoke-virtual {v7, v6, v5, v9}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V

    .line 110
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {v7, v6}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_be

    if-eq v7, v5, :cond_be

    .line 112
    iget-object v8, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    :cond_be
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {v7, v6, v5}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->cacheView(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_2b

    :cond_c5
    return-void
.end method


# virtual methods
.method setContainerWidthAndHeight(II)V
    .registers 6

    .line 48
    sget-object v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 49
    iput p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerWidth:I

    .line 50
    iput p2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerHeight:I

    return-void
.end method

.method update(Ljava/util/Map;IZ)V
    .registers 6

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->updateStart()V

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->updateShowViews(Ljava/util/Map;IZ)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->updateEnd()Ljava/util/List;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_13
    if-ge p3, p2, :cond_25

    .line 63
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_22

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_22
    add-int/lit8 p3, p3, 0x1

    goto :goto_13

    :cond_25
    return-void
.end method
