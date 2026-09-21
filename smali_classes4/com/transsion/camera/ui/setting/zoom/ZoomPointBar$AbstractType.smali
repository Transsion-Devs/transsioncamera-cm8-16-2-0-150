.class abstract Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractType"
.end annotation


# instance fields
.field private mContentBounds:Landroid/graphics/RectF;

.field protected final mInnerZoomItems:Ljava/util/List;

.field protected final mItemNum:I

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Ljava/util/List;)V
    .registers 3

    .line 841
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 839
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mContentBounds:Landroid/graphics/RectF;

    .line 842
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    .line 843
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mItemNum:I

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 1

    .line 912
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->getZoomItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected getCurrentSelectedItem()Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;
    .registers 4

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmIsTypeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchingItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/Set;

    move-result-object v0

    goto :goto_11

    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    .line 887
    :goto_11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 888
    iget-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    if-eqz v2, :cond_15

    return-object v1

    .line 892
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectedIndex(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    return-object p0
.end method

.method protected getItemAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)I
    .registers 3

    .line 867
    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 868
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchItemInAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result p0

    return p0

    :cond_c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 872
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchItemOutAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result p0

    return p0

    :cond_16
    const/16 p0, 0xff

    return p0
.end method

.method public getItemByRatio(I)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;
    .registers 4

    .line 858
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 859
    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getItemScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)F
    .registers 3

    .line 878
    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 879
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchInScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result p0

    return p0

    :cond_c
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getZoomItemNum()I
    .registers 1

    .line 853
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mItemNum:I

    return p0
.end method

.method public getZoomItems()Ljava/util/List;
    .registers 1

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    return-object p0
.end method

.method public isOutOfContent(FF)Z
    .registers 8

    .line 897
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    goto :goto_41

    .line 900
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mContentBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_38

    .line 901
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getContentWidth()F

    move-result v0

    .line 902
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterX(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 904
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mContentBounds:Landroid/graphics/RectF;

    .line 907
    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_41
    :goto_41
    const/4 p0, 0x0

    return p0
.end method
