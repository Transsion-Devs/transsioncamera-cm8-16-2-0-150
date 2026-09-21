.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->properties:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onDisplayCallback(III)V
    .registers 12

    .line 251
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$700(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_74

    .line 253
    :cond_e
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 254
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    .line 259
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->isAudio()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_34

    if-eq p3, v4, :cond_3c

    :cond_34
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->isAudio()Z

    move-result v2

    if-nez v2, :cond_3e

    if-nez p3, :cond_3e

    :cond_3c
    move v2, v4

    goto :goto_3f

    :cond_3e
    move v2, v3

    .line 260
    :goto_3f
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->getTime()I

    move-result v5

    if-ge v5, p1, :cond_4b

    if-eqz v2, :cond_4b

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 262
    :cond_4b
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->getTime()I

    move-result v2

    if-ne v2, p1, :cond_18

    .line 263
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$700(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/ies/cutsame/veadapter/KeyframeListener;

    if-nez p2, :cond_6b

    move v6, v4

    goto :goto_6c

    :cond_6b
    move v6, v3

    .line 264
    :goto_6c
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->getSegmentId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeListener;->onDisplayWithProperties(ZLjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;)V

    goto :goto_5b

    :cond_74
    :goto_74
    return-void
.end method

.method public onProcessCallback(IILjava/lang/String;)V
    .registers 10

    .line 272
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->keyframeListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$700(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_b1

    .line 273
    :cond_14
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->mFilterIndexSegmentMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$800(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;

    if-nez v0, :cond_4d

    .line 275
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProcessCallback ignore: filterIndex:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",time:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",param:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cut.VEEditorAdapter"

    invoke-static {p1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_4d
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->getSegmentId()Ljava/lang/String;

    move-result-object p1

    .line 280
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$400(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getSegmentTrackIndex(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_67

    .line 281
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->getKeyframeType()Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    move-result-object v1

    sget-object v2, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    if-ne v1, v2, :cond_67

    .line 282
    const-string p1, ""

    .line 284
    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->properties:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 286
    const-string v2, "audio volume filter"

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->getFilterType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 287
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->properties:Ljava/util/HashMap;

    new-instance v4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->getKeyframeType()Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    move-result-object v5

    invoke-direct {v4, p2, p1, v5, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;-><init>(ILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;Z)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_9b
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$6;->properties:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->getParams()Ljava/util/Map;

    move-result-object p0

    .line 290
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->getFilterType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b1
    :goto_b1
    return-void
.end method
