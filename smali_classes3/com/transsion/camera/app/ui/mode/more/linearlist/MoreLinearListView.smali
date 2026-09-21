.class public Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;
.implements Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearItemDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;
    }
.end annotation


# static fields
.field private static final BOKEH_MODE_LIST:Ljava/util/List;

.field private static final SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

.field private mDragItemFromGridToTab:Z

.field private mDragListener:Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;

.field private mDragStateListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;

.field private mEnterPlaceHolder:Z

.field private mHaveThreeFixMode:Z

.field private mScreenSize:Landroid/util/Size;


# direct methods
.method public static synthetic $r8$lambda$Cebk1pbDgrMNeH1aYRiS2bUAz_Q(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->lambda$setLeftPadding$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NGBOnkQGLCaohnG5xeQ7aYOBppc(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->lambda$setRightPadding$1(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoreLinearListView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const-string v5, "com.transsion.camera.feature.mode.bwportrait.BWPortraitModeEntry"

    const-string v6, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    const-string v1, "com.transsion.camera.feature.mode.vsdof.SdofPhotoModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.vsdof.BackSdofPhotoModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.stblurmode.BackSTBlurModeEntry"

    const-string v4, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->BOKEH_MODE_LIST:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.makeup.MakeUpModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->initView()V

    return-void
.end method

.method private addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_21

    .line 574
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 575
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 576
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 577
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_21

    .line 578
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    :cond_21
    return-void
.end method

.method private addItemToBeginOrEnd(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z
    .registers 8

    .line 121
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 124
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 125
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    if-eqz v2, :cond_85

    if-nez v0, :cond_1f

    goto :goto_85

    .line 130
    :cond_1f
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    int-to-float p2, p2

    add-float/2addr v2, p2

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    cmpl-float v0, v2, p2

    const/4 v2, -0x1

    if-lez v0, :cond_52

    .line 134
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    if-ne p2, v2, :cond_4a

    goto :goto_4e

    .line 138
    :cond_4a
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 140
    :goto_4e
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return v3

    .line 142
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    cmpl-float p2, v0, p2

    if-lez p2, :cond_85

    .line 144
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    if-ne p2, v2, :cond_80

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result p2

    goto :goto_81

    :cond_80
    add-int/2addr p2, v3

    .line 150
    :goto_81
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return v3

    :cond_85
    :goto_85
    return v1
.end method

.method private asdTabLocationInScreenRight(I)Z
    .registers 5

    .line 207
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 209
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mHaveThreeFixMode:Z

    if-nez v1, :cond_21

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 212
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    cmpl-float p0, v0, p0

    if-lez p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method private checkItemChangeCondition(FIZ)Z
    .registers 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    int-to-float p2, p2

    if-eqz p3, :cond_b

    cmpg-float p1, p1, p2

    if-gez p1, :cond_a

    return v0

    :cond_a
    return p0

    :cond_b
    cmpl-float p1, p1, p2

    if-lez p1, :cond_10

    return v0

    :cond_10
    return p0
.end method

.method private checkMoveLeftAreaDragEnterEvent(ILcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 6

    .line 586
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_2c

    :cond_d
    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    if-eqz v1, :cond_2c

    .line 590
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v2, :cond_2c

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2c

    .line 591
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->moveItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private checkMoveRightAreaDragEnterEvent(ILcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .registers 7

    .line 596
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_42

    .line 599
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const-string v2, "place_holder"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    .line 602
    :cond_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    if-eqz v0, :cond_42

    .line 603
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v3, :cond_42

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_42

    .line 604
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->moveItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return v2

    :cond_42
    :goto_42
    return v1
.end method

.method private containBetween(III)Z
    .registers 4

    if-le p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 614
    :cond_4
    new-instance p0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .registers 3

    .line 618
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private getAsdTabPosition()I
    .registers 4

    const/4 v0, 0x0

    .line 196
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 197
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 198
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method private getChildItemPosition(II)F
    .registers 3

    .line 622
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    int-to-float p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method private getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I
    .registers 4

    .line 504
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 508
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 509
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    .line 510
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 511
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 513
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getRightPosition(Landroid/view/View;)F
    .registers 3

    .line 626
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$dimen;->more_mode_list_item_half_spacing:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private initView()V
    .registers 3

    const/16 v0, 0x1e

    .line 631
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 632
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private insertItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .registers 4

    .line 517
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1f

    .line 520
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 521
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 523
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_1f

    .line 524
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private isTabItemNeedChange(Landroid/view/View;IIF)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_79

    const/4 v1, -0x1

    if-eq p2, v1, :cond_79

    if-eq p3, v1, :cond_79

    if-ne p2, p3, :cond_c

    goto/16 :goto_79

    .line 286
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 289
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/transsion/camera/app/ui/mode/more/Constants;->isNotSupportDragDropPosition(ILcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Z

    move-result v2

    .line 290
    sget-object v3, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNormalTabItemNeedChange, isNotSupportDragDrop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v2, :cond_71

    .line 293
    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 294
    const-string v2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 295
    const-string v4, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5f

    sget-object v4, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->BOKEH_MODE_LIST:Ljava/util/List;

    .line 296
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    goto :goto_5f

    :cond_5d
    move p1, v0

    goto :goto_60

    :cond_5f
    :goto_5f
    move p1, v3

    :goto_60
    if-le p2, p3, :cond_64

    if-nez v2, :cond_68

    :cond_64
    if-ge p2, p3, :cond_70

    if-eqz p1, :cond_70

    :cond_68
    if-le p2, p3, :cond_6b

    move v0, v3

    .line 298
    :cond_6b
    invoke-direct {p0, p4, v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->checkItemChangeCondition(FIZ)Z

    move-result p0

    return p0

    :cond_70
    return v0

    :cond_71
    if-le p2, p3, :cond_74

    move v0, v3

    .line 302
    :cond_74
    invoke-direct {p0, p4, v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->checkItemChangeCondition(FIZ)Z

    move-result p0

    return p0

    :cond_79
    :goto_79
    return v0
.end method

.method private synthetic lambda$setLeftPadding$0(I)V
    .registers 4

    .line 664
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_list_item_spacing:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    const/4 p1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$setRightPadding$1(I)V
    .registers 5

    .line 668
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/camera/R$dimen;->more_mode_list_item_spacing:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private moveItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .registers 7

    const/4 v0, -0x1

    if-eq p2, v0, :cond_85

    .line 637
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 638
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    if-eq v0, p2, :cond_85

    .line 640
    sget-object v1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveItem, modeUIItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 641
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 642
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 643
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-ge v0, p2, :cond_6d

    add-int/lit8 p2, p2, -0x1

    .line 646
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 647
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 648
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_85

    .line 649
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    return-void

    .line 652
    :cond_6d
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 653
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 654
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_85

    .line 655
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    :cond_85
    return-void
.end method

.method private notifyAddItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .registers 7

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_a4

    .line 160
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/Constants;->isNotSupportDragDropPosition(ILcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 161
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAsdTabPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_47

    .line 163
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 164
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 165
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->asdTabLocationInScreenRight(I)Z

    move-result p2

    if-eqz p2, :cond_37

    add-int/lit8 v0, v0, -0x1

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return-void

    .line 168
    :cond_37
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mHaveThreeFixMode:Z

    if-nez p2, :cond_41

    add-int/lit8 v0, v0, 0x3

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return-void

    :cond_41
    add-int/lit8 v0, v0, 0x2

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return-void

    :cond_47
    const/4 p2, 0x0

    .line 175
    :goto_48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_a4

    .line 176
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v1

    .line 178
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_76

    add-int/lit8 v1, v1, -0x1

    .line 179
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return-void

    .line 181
    :cond_76
    sget-object v2, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    add-int/lit8 v1, v1, 0x1

    .line 182
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return-void

    .line 184
    :cond_8c
    sget-object v2, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    add-int/lit8 v1, v1, 0x2

    .line 185
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_a1
    add-int/lit8 p2, p2, 0x1

    goto :goto_48

    :cond_a4
    :goto_a4
    return-void

    .line 190
    :cond_a5
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return-void
.end method

.method private setLeftPadding(I)V
    .registers 3

    .line 664
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setRightPadding(I)V
    .registers 3

    .line 668
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;F)V
    .registers 8

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_de

    .line 87
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 90
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_list_item_half_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItemToBeginOrEnd(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto/16 :goto_de

    .line 94
    :cond_2c
    new-instance v1, Landroid/util/Range;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getChildItemPosition(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 95
    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getChildItemPosition(II)F

    move-result v3

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_df

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto/16 :goto_df

    .line 100
    :cond_5a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_94

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    add-int/2addr p2, v3

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/Constants;->isNotSupportDragDropPosition(ILcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_8f

    goto :goto_90

    :cond_8f
    move v2, p2

    .line 105
    :goto_90
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return-void

    .line 107
    :cond_94
    :goto_94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_de

    .line 108
    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getChildItemPosition(II)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v2

    float-to-int v2, v2

    float-to-int v4, p2

    invoke-direct {p0, v1, v2, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containBetween(III)Z

    move-result v1

    if-nez v1, :cond_c9

    add-int/lit8 v1, v3, -0x1

    .line 109
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getChildItemPosition(II)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containBetween(III)Z

    move-result v1

    if-eqz v1, :cond_c6

    goto :goto_c9

    :cond_c6
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 110
    :cond_c9
    :goto_c9
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 111
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyAddItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_de
    :goto_de
    return-void

    .line 96
    :cond_df
    :goto_df
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyAddItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    return-void
.end method

.method public containsData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 348
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    if-nez p0, :cond_b

    return v0

    .line 352
    :cond_b
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p0

    return p0
.end method

.method public findItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;
    .registers 3

    .line 216
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1e

    .line 219
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;
    .registers 1

    .line 224
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    return-object p0
.end method

.method public handleLinearViewDragEnterEvent(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .registers 5

    .line 234
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "handleLinearViewDragEnterEvent"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_18

    .line 235
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->findItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 236
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->checkMoveRightAreaDragEnterEvent(ILcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 237
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->checkMoveLeftAreaDragEnterEvent(ILcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    :cond_18
    return-void
.end method

.method public notifyDragEnterFixModeArea(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 7

    .line 424
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_13d

    .line 427
    :cond_8
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/Constants;->MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 428
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAsdTabPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_ee

    .line 430
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 431
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->asdTabLocationInScreenRight(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_71

    .line 432
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v0, :cond_13d

    .line 433
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 434
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 435
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 436
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 438
    :cond_48
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 439
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 441
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p2

    if-eqz p2, :cond_13d

    .line 442
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_13d

    .line 444
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    return-void

    .line 449
    :cond_71
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v0, :cond_13d

    .line 450
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 451
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 452
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 453
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 454
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 456
    :cond_93
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    .line 457
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const-string v2, "place_holder"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, p1, 0x2

    .line 459
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mHaveThreeFixMode:Z

    if-nez v3, :cond_b1

    add-int/lit8 v2, p1, 0x3

    :cond_b1
    if-eq v0, v1, :cond_d5

    if-eq v0, v2, :cond_b6

    goto :goto_d5

    :cond_b6
    add-int/lit8 v0, p1, 0x3

    if-nez v3, :cond_bc

    add-int/lit8 v0, p1, 0x4

    .line 474
    :cond_bc
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 475
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 477
    :cond_cd
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_13d

    .line 478
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    return-void

    .line 463
    :cond_d5
    :goto_d5
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_13d

    .line 464
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_13d

    .line 466
    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    return-void

    .line 484
    :cond_ee
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-nez v0, :cond_f3

    goto :goto_13d

    .line 488
    :cond_f3
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 489
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    goto :goto_138

    .line 490
    :cond_104
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 491
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_138

    .line 492
    :cond_117
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    const-string v0, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    .line 493
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_130

    goto :goto_132

    :cond_130
    move p1, v1

    goto :goto_138

    .line 494
    :cond_132
    :goto_132
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    :goto_138
    if-eq p1, v1, :cond_13d

    .line 497
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->insertItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_13d
    :goto_13d
    return-void
.end method

.method public notifyDragFromGridToTab(Z)V
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    return-void
.end method

.method public onDragEnter(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 8

    .line 356
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_e7

    .line 360
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    goto/16 :goto_e7

    .line 364
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/Constants;->isNotSupportDragDropPosition(ILcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto/16 :goto_e7

    .line 367
    :cond_29
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const-string v2, "place_holder"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_75

    .line 368
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mEnterPlaceHolder:Z

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragStateListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;

    if-eqz v0, :cond_42

    .line 370
    invoke-interface {v0, v3, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;->onDragStateChanged(ZZ)V

    .line 372
    :cond_42
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 373
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 374
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 375
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->moveItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    .line 377
    :cond_64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz v0, :cond_82

    .line 378
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    goto :goto_82

    .line 382
    :cond_75
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragStateListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;

    if-eqz v0, :cond_80

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mEnterPlaceHolder:Z

    if-eqz v4, :cond_80

    .line 383
    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;->onDragStateChanged(ZZ)V

    .line 385
    :cond_80
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mEnterPlaceHolder:Z

    :cond_82
    :goto_82
    if-eq p1, p2, :cond_e7

    .line 388
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_e7

    .line 389
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    if-eq p1, v1, :cond_e7

    .line 391
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    if-eqz v0, :cond_e7

    .line 392
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 393
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 394
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 395
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 396
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-lt p1, v3, :cond_ba

    add-int/lit8 p1, p1, -0x1

    .line 401
    :cond_ba
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/Constants;->MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getModeUIItem(I)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    goto :goto_e7

    .line 404
    :cond_cf
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p2

    if-eqz p2, :cond_e0

    .line 405
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 407
    :cond_e0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    if-eqz p0, :cond_e7

    .line 408
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;->onDragEnterFinish(I)V

    :cond_e7
    :goto_e7
    return-void
.end method

.method public onDragStop()V
    .registers 2

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mEnterPlaceHolder:Z

    .line 248
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragItemFromGridToTab:Z

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->onDragStop()V

    :cond_12
    return-void
.end method

.method public onFirstViewHolderWidthChanged(I)V
    .registers 2

    .line 530
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setLeftPadding(I)V

    return-void
.end method

.method public onLastViewHolderWidthChanged(I)V
    .registers 2

    .line 535
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setRightPadding(I)V

    return-void
.end method

.method public onLinearItemDragStart(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragListener:Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;

    if-eqz p0, :cond_7

    .line 419
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;->onItemDragStart(Landroid/view/View;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public removeItemForDragging(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 4

    .line 539
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 540
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_27

    .line 542
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setLeftPadding(I)V

    goto :goto_43

    .line 543
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_43

    .line 544
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setRightPadding(I)V

    .line 546
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 547
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_51
    return-void
.end method

.method public setAdapter(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)V
    .registers 2

    .line 228
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 229
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->setViewHolderWidthChangeListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;)V

    .line 230
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->setLinearItemDragListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearItemDragListener;)V

    return-void
.end method

.method public setDragEnterFinishCallback(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragEnterFinishCallback:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;

    return-void
.end method

.method public setOnDragStateListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragStateListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;

    return-void
.end method

.method public setOnLinearItemDragListener(Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mDragListener:Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;

    return-void
.end method

.method public setScreenSize(Landroid/util/Size;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mScreenSize:Landroid/util/Size;

    return-void
.end method

.method public showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 6

    .line 552
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 553
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    if-ltz p1, :cond_45

    .line 555
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 557
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 559
    sget v1, Lcom/transsion/camera/R$id;->linear_item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 560
    sget v2, Lcom/transsion/camera/R$id;->linear_item_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/more/linearlist/LinearListItemView;

    .line 561
    sget v3, Lcom/transsion/camera/R$id;->linear_item_background:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    .line 562
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 563
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 564
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    :cond_3e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removePlaceHolderIfNecessary(I)V

    :cond_45
    return-void
.end method

.method public swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Landroid/view/View;IIF)I
    .registers 8

    .line 255
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 258
    :cond_8
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->isTabItemNeedChange(Landroid/view/View;IIF)Z

    move-result p3

    if-eqz p3, :cond_74

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    check-cast p2, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    if-ne p2, v1, :cond_1f

    return v1

    .line 263
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p3

    if-eqz p3, :cond_42

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    const-string p4, "place_holder"

    invoke-virtual {p3, p4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_42

    .line 264
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    if-ne p2, p3, :cond_42

    return v1

    .line 267
    :cond_42
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p3

    .line 268
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p4

    if-eqz p4, :cond_62

    .line 269
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 270
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 272
    :cond_62
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_73
    return p2

    :cond_74
    return v1
.end method

.method public updateModeList(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 315
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 317
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 319
    :goto_1b
    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_1f
    if-ge v1, p2, :cond_30

    aget-object v3, p1, v1

    .line 320
    sget-object v4, Lcom/transsion/camera/app/ui/mode/more/Constants;->MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    add-int/lit8 v2, v2, 0x1

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 324
    :cond_30
    sget-object p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateModeList, fixModeCount: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-ne v2, p1, :cond_4b

    const/4 v0, 0x1

    .line 325
    :cond_4b
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->mHaveThreeFixMode:Z

    return-void
.end method
