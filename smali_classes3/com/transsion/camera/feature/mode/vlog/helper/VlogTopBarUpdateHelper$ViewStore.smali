.class final Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewStore"
.end annotation


# static fields
.field static final VIEW_REMOVE_STATE:I = 0x4

.field static final VIEW_STATE_NOT_REMOVE:I = 0x4

.field static final VIEW_STATE_NOT_VISIBLE:I = 0x2

.field static final VIEW_STATE_REMOVE:I = 0x3

.field static final VIEW_STATE_VISIBLE:I = 0x1

.field static final VIEW_TRANSLATION_CURRENT:I = 0x1

.field static final VIEW_TRANSLATION_DEFAULT:I = 0x0

.field static final VIEW_TRANSLATION_LAST:I = 0x0

.field static final VIEW_VISIBLE_CURRENT:I = 0x3

.field static final VIEW_VISIBLE_LAST:I = 0x2


# instance fields
.field mStateMap:Lcom/transsion/camera/utils/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/MultiValueMap;"
        }
    .end annotation
.end field

.field mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    .line 312
    new-instance v0, Lcom/transsion/camera/utils/MultiValueHashMap;

    invoke-direct {v0}, Lcom/transsion/camera/utils/MultiValueHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    return-void
.end method


# virtual methods
.method cacheView(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 385
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getValue(Ljava/lang/String;I)I
    .registers 3

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getView(Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 391
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 394
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_36

    .line 396
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mViewRefs is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 399
    :cond_36
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method removeView(Ljava/lang/String;)V
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 404
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 407
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method update(Ljava/lang/String;III)V
    .registers 9

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/MultiValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

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

    .line 340
    :goto_25
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {p0, p1, v2}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method updateEnd()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v1}, Lcom/transsion/camera/utils/MultiValueMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 358
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v1, "mStateMap is empty"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 361
    :cond_17
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v1}, Lcom/transsion/camera/utils/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v4, 0x4

    invoke-interface {v3, v2, v4}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_21

    .line 363
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v5, 0x1

    invoke-interface {v3, v2, v5}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-interface {v3, v2, v7, v6}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 364
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v2, v5, v6}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 365
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v3, v2, v4}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-interface {v3, v2, v6, v5}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 366
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 368
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_78

    .line 370
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "cached view is null"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_21

    .line 373
    :cond_78
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->removeView(Ljava/lang/String;)V

    goto :goto_21

    :cond_7f
    return-object v0
.end method

.method updateStart()V
    .registers 6

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v0}, Lcom/transsion/camera/utils/MultiValueMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

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

    .line 321
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v2, v1, v4, v3}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_12

    :cond_2a
    return-void
.end method
