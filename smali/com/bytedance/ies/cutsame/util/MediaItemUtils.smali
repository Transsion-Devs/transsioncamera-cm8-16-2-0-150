.class public final Lcom/bytedance/ies/cutsame/util/MediaItemUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaItemUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/util/MediaItemUtils;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/MediaItemUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/MediaItemUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaItemUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final mergePickList(Ljava/util/List;Ljava/util/List;)V
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "target"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pickList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 38
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_27

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_27
    check-cast v4, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 8
    invoke-virtual {v4}, Lcom/ss/android/ugc/cut_ui/MediaItem;->isMutable()Z

    move-result v6

    if-nez v6, :cond_31

    goto/16 :goto_b8

    .line 11
    :cond_31
    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/ss/android/ugc/cut_ui/MediaItem;

    invoke-virtual {v8}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMaterialId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMaterialId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    goto :goto_55

    :cond_54
    const/4 v7, 0x0

    :goto_55
    check-cast v7, Lcom/ss/android/ugc/cut_ui/MediaItem;

    if-eqz v7, :cond_b8

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 14
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v26

    .line 15
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMediaSrcPath()Ljava/lang/String;

    move-result-object v32

    .line 16
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSourceStartTime()J

    move-result-wide v27

    .line 17
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getTargetStartTime()J

    move-result-wide v10

    .line 18
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getTargetEndTime()J

    move-result-wide v33

    .line 19
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v30

    .line 20
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCropScale()F

    move-result v29

    .line 21
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getOriDuration()J

    move-result-wide v24

    .line 22
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getVolume()F

    move-result v35

    .line 23
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getType()Ljava/lang/String;

    move-result-object v31

    .line 24
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getAlignMode()Ljava/lang/String;

    move-result-object v13

    .line 25
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse()Z

    move-result v15

    .line 26
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getClipWidth()I

    move-result v20

    .line 27
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getClipHeight()I

    move-result v21

    .line 28
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getRelation_video_group()Ljava/lang/String;

    move-result-object v36

    .line 29
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getWidth()I

    move-result v18

    .line 30
    invoke-virtual {v7}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getHeight()I

    move-result v19

    const/16 v37, 0x10d5

    const/16 v38, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v22, 0x0

    .line 13
    invoke-static/range {v8 .. v38}, Lcom/ss/android/ugc/cut_ui/MediaItem;->copy$default(Lcom/ss/android/ugc/cut_ui/MediaItem;Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;ILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/MediaItem;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b8
    :goto_b8
    move v3, v5

    goto/16 :goto_16

    :cond_bb
    return-void
.end method
