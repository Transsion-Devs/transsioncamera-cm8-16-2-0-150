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

.field private static sFirstEntry:Z


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

.method static bridge synthetic -$$Nest$sfgetsFirstEntry()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->sFirstEntry:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopSettingUpdateHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->sFirstEntry:Z

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    .line 47
    new-instance p1, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    .line 48
    new-instance v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;-><init>(Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

    const/4 p0, 0x1

    .line 49
    sput-boolean p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->sFirstEntry:Z

    return-void
.end method

.method private updateShowViews(Ljava/util/Map;IZ)V
    .registers 16

    .line 82
    iget-object p3, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 86
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_16

    move v0, v1

    goto :goto_35

    .line 89
    :cond_16
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->treasure_box_container_translate:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_35

    .line 92
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_container_translate:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 96
    :goto_35
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 98
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 99
    instance-of v7, v5, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v7, :cond_63

    const/4 v7, -0x1

    if-eq p2, v7, :cond_63

    .line 100
    move-object v7, v5

    check-cast v7, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v7, p2, v1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 102
    :cond_63
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_6f

    .line 103
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7d

    .line 105
    :cond_6f
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    :goto_7d
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mUseCenterDirection:Z

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v7, :cond_a9

    .line 110
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-ne v7, v9, :cond_8e

    .line 111
    iget v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerWidth:I

    sub-int/2addr v7, p3

    div-int/2addr v7, v2

    goto :goto_b0

    .line 112
    :cond_8e
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-ne v7, v2, :cond_a2

    .line 113
    iget v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerWidth:I

    add-int/lit8 v10, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    mul-int/2addr v7, v4

    mul-int/lit8 v4, p3, 0x2

    sub-int/2addr v7, v4

    div-int/2addr v7, v8

    move v4, v10

    goto :goto_b0

    :cond_a2
    add-int/lit8 v7, v4, 0x1

    mul-int/2addr v4, v0

    move v11, v7

    move v7, v4

    move v4, v11

    goto :goto_b0

    .line 118
    :cond_a9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-ne v7, v9, :cond_a2

    move v7, v0

    .line 124
    :goto_b0
    iget-object v10, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {v10, v6, v7, v9, v8}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->update(Ljava/lang/String;III)V

    .line 126
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_d7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_d7

    .line 127
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v7

    if-nez v7, :cond_d7

    .line 128
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

    iget v8, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerWidth:I

    iget v10, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerHeight:I

    if-le v8, v10, :cond_d2

    goto :goto_d3

    :cond_d2
    move v9, v1

    :goto_d3
    invoke-virtual {v7, v6, v5, v9}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->animator(Ljava/lang/String;Landroid/view/View;Z)V

    goto :goto_e4

    .line 130
    :cond_d7
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

    iget v8, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerWidth:I

    iget v10, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerHeight:I

    if-le v8, v10, :cond_e0

    goto :goto_e1

    :cond_e0
    move v9, v1

    :goto_e1
    invoke-virtual {v7, v6, v5, v9}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V

    .line 133
    :goto_e4
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {v7, v6}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_f3

    if-eq v7, v5, :cond_f3

    .line 135
    iget-object v8, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_f3
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {v7, v6, v5}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->cacheView(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_3e

    .line 139
    :cond_fa
    sput-boolean v1, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->sFirstEntry:Z

    return-void
.end method


# virtual methods
.method setContainerWidthAndHeight(II)V
    .registers 6

    .line 57
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

    .line 58
    iput p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerWidth:I

    .line 59
    iput p2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainerHeight:I

    return-void
.end method

.method update(Ljava/util/Map;IZ)V
    .registers 6

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->updateStart()V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->animatorStart()V

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->updateShowViews(Ljava/util/Map;IZ)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->updateEnd()Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_18
    if-ge p3, p2, :cond_2a

    .line 73
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_27
    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    .line 78
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->animatorEnd()V

    return-void
.end method
