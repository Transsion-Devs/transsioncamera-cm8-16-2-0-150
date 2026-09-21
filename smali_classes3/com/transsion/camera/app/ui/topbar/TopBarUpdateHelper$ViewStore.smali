.class final Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewStore"
.end annotation


# instance fields
.field mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

.field mViewMap:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    .line 570
    new-instance v0, Lcom/transsion/camera/utils/MultiValueHashMap;

    invoke-direct {v0}, Lcom/transsion/camera/utils/MultiValueHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    return-void
.end method


# virtual methods
.method cacheView(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 643
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getValue(Ljava/lang/String;I)I
    .registers 3

    .line 639
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getView(Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 657
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewMap don\'t contain view: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 660
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_36

    .line 662
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mViewRefs is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 665
    :cond_36
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method removeView(Ljava/lang/String;)V
    .registers 4

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 670
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mViewMap don\'t contain view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 673
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method shouldSkipRemoveByState(Ljava/lang/String;)Z
    .registers 4

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/MultiValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 651
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v0, 0x4

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method update(Ljava/lang/String;III)V
    .registers 9

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/MultiValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 591
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 592
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 598
    :goto_25
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 599
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {p0, p1, v2}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method updateEnd()Ljava/util/List;
    .registers 9

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 615
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v1}, Lcom/transsion/camera/utils/MultiValueMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 616
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v1, "mStateMap is empty"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 619
    :cond_17
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v1}, Lcom/transsion/camera/utils/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 620
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v4, 0x4

    invoke-interface {v3, v2, v4}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_21

    .line 621
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v5, 0x1

    invoke-interface {v3, v2, v5}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-interface {v3, v2, v7, v6}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 622
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v2, v5, v6}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 623
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v3, v2, v4}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-interface {v3, v2, v6, v5}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 624
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 626
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_78

    .line 628
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "cached view is null"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_21

    .line 631
    :cond_78
    new-instance v4, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;

    invoke-direct {v4, v2, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->build()Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->removeView(Ljava/lang/String;)V

    goto :goto_21

    :cond_88
    return-object v0
.end method

.method updateStart()V
    .registers 6

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v0}, Lcom/transsion/camera/utils/MultiValueMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v0}, Lcom/transsion/camera/utils/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 579
    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v2, v1, v4, v3}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_12

    :cond_2a
    return-void
.end method
