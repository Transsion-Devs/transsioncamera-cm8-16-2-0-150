.class public Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private mSaleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaleViewGroup:Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 4

    .line 30
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    .line 34
    sget p2, Lcom/transsion/camera/feature/imageryguide/R$id;->sale_guide_view_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleViewGroup:Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;

    return-void
.end method


# virtual methods
.method public onBindViewHolder()V
    .registers 7

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleViewGroup:Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->reset()V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 45
    :goto_10
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c6

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeImgFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->getDrawableFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->MODE_ENTRY_MODENAME_MAP:Ljava/util/Map;

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 48
    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5d

    .line 49
    :cond_5b
    sget v3, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_asd_mode_title:I

    .line 47
    :goto_5d
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleViewGroup:Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 53
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mDefaultBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c6

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mDefaultBeanList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getImgResourceId()I

    move-result v0

    if-nez v0, :cond_8e

    goto :goto_c3

    .line 57
    :cond_8e
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mDefaultBeanList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getImgResourceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mDefaultBeanList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getText()Ljava/lang/String;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleViewGroup:Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mDefaultBeanList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getModeName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    :goto_c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    :cond_c6
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleViewGroup:Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->setItemEnable(Z)V

    return-void
.end method

.method public updateSaleList(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mSaleList:Ljava/util/List;

    .line 39
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->mDefaultBeanList:Ljava/util/List;

    return-void
.end method
