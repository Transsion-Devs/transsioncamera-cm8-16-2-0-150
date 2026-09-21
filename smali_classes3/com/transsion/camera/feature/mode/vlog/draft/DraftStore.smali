.class public Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/draft/IDraftStore;


# static fields
.field private static final DRAFT_ITEM:Ljava/lang/String; = "draft_item"

.field private static final DRAFT_NAME:Ljava/lang/String; = "vlog_draft"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

.field private mMMKV:Lcom/tencent/mmkv/MMKV;


# direct methods
.method public static synthetic $r8$lambda$7LKPIayJPgfUQJ87d4IQWBLhizs(Ljava/util/List;)V
    .registers 5

    .line 337
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDraft, path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_4

    :cond_2a
    return-void
.end method

.method public static synthetic $r8$lambda$WflxMXCGQMdw9QxtF3lXeu50tpo(Ljava/util/List;)V
    .registers 2

    .line 258
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_4

    :cond_14
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_Draft"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->init()V

    return-void
.end method

.method private clearSource()V
    .registers 4

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 241
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getOriginPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 242
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getOriginPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_28
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getPortraitPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 245
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getPortraitPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_35
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getLandscapePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 248
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getLandscapePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 252
    :cond_43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p0, v1, :cond_61

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_52
    if-ge v1, p0, :cond_60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    .line 254
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_52

    :cond_60
    return-void

    .line 257
    :cond_61
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doInit()V
    .registers 3

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doInit start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->loadDraft()Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    .line 53
    const-string p0, "doInit end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doRefresh(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 5

    if-eqz p1, :cond_21

    .line 77
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRefresh for cut same, templateItem title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getShortTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_28

    .line 79
    :cond_21
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doRefresh for free shot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    :goto_28
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;-><init>(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mMMKV:Lcom/tencent/mmkv/MMKV;

    const-string p1, "draft_item"

    invoke-virtual {p0, p1}, Lcom/tencent/mmkv/MMKV;->removeValueForKey(Ljava/lang/String;)V

    .line 85
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doRefresh end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doUpdateComposeState(I)V
    .registers 5

    .line 118
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateComposeState, composeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDraftItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    if-nez v1, :cond_25

    return-void

    .line 124
    :cond_25
    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->setComposeState(I)V

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->onFlush()V

    .line 127
    const-string p0, "doUpdateComposeState end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doUpdateCurrentSegment(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 143
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doUpdateCurrentSegment, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mediaItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mDraftItem: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", style: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getStyle()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    if-nez v3, :cond_3f

    return-void

    .line 150
    :cond_3f
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getStyle()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_80

    .line 151
    new-instance v6, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 152
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v9

    .line 155
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_width()I

    move-result v10

    .line 156
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_height()I

    move-result v11

    .line 157
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v12

    .line 158
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v14

    .line 159
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v15

    .line 160
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getStyle()I

    move-result v17

    invoke-direct/range {v6 .. v17}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJI)V

    .line 161
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getHlResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->setHlResults(Ljava/util/List;)V

    .line 162
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    .line 164
    :cond_80
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 165
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->setOriginPath(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->setPortraitPath(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->setLandscapePath(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->setSourceStartTime(J)V

    .line 169
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->setOrientation(I)V

    .line 170
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->setOriginDuration(J)V

    .line 173
    :goto_b6
    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->onFlush()V

    .line 175
    const-string v0, "doUpdateCurrentSegment end"

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doUpdateItemList(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateItemList, mDraftItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    if-nez v0, :cond_2a

    return-void

    .line 193
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 195
    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 196
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_width()I

    move-result v6

    .line 200
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_height()I

    move-result v7

    .line 201
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v8

    .line 202
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v10

    .line 203
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v11

    .line 204
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getStyle()I

    move-result v13

    invoke-direct/range {v2 .. v13}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJI)V

    .line 205
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getHlResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->setHlResults(Ljava/util/List;)V

    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 209
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->setSegmentItems(Ljava/util/List;)V

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->onFlush()V

    return-void
.end method

.method private doUpdateTemplateId(J)V
    .registers 6

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateTemplateId, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDraftItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    if-nez v1, :cond_25

    return-void

    .line 105
    :cond_25
    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->setTemplateId(J)V

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->onFlush()V

    .line 108
    const-string p0, "doUpdateTemplateId end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getDraftNameMMKV()Lcom/tencent/mmkv/MMKV;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mMMKV:Lcom/tencent/mmkv/MMKV;

    if-nez v0, :cond_d

    .line 58
    const-string/jumbo v0, "vlog_draft"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mMMKV:Lcom/tencent/mmkv/MMKV;

    .line 60
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mMMKV:Lcom/tencent/mmkv/MMKV;

    return-object p0
.end method

.method private onDelete()V
    .registers 3

    .line 228
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->resetVlogValue()V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mMMKV:Lcom/tencent/mmkv/MMKV;

    const-string v1, "draft_item"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->removeValueForKey(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    if-eqz v0, :cond_1d

    .line 232
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->clearSource()V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->reset()V

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    :cond_1d
    return-void
.end method

.method private onFlush()V
    .registers 3

    .line 215
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mMMKV:Lcom/tencent/mmkv/MMKV;

    const-string v1, "draft_item"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public delete()V
    .registers 3

    .line 221
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "delete begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->onDelete()V

    .line 223
    const-string p0, "delete end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getDraftStyle()I
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    if-eqz p0, :cond_9

    .line 278
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getStyle()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->getDraftNameMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mMMKV:Lcom/tencent/mmkv/MMKV;

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->doInit()V

    return-void
.end method

.method public declared-synchronized isValid()Z
    .registers 2

    monitor-enter p0

    .line 267
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    if-eqz v0, :cond_d

    .line 268
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->isValid()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    goto :goto_20

    .line 271
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->loadDraft()Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    if-eqz v0, :cond_1d

    .line 272
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->isValid()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_b

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    monitor-exit p0

    return v0

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_b

    throw v0
.end method

.method public loadDraft()Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;
    .registers 10

    .line 286
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadDraft begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->getDraftNameMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "null"

    const-string v2, "draft_item"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    if-eqz v0, :cond_f0

    .line 290
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getStyle()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    move v1, v4

    .line 291
    :goto_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_6a

    .line 293
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 294
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getPortraitPath()Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getLandscapePath()Ljava/lang/String;

    move-result-object v6

    .line 296
    invoke-static {v5}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 297
    :cond_5c
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->reset()V

    if-eqz v5, :cond_64

    .line 299
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_64
    if-eqz v6, :cond_3c

    .line 302
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 308
    :cond_6a
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v1

    .line 309
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_72
    const/4 v6, -0x1

    if-ge v4, v5, :cond_8c

    .line 311
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 312
    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getOriginPath()Ljava/lang/String;

    move-result-object v8

    .line 313
    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_89

    .line 314
    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->reset()V

    goto :goto_8d

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    :cond_8c
    move v4, v6

    :goto_8d
    if-eq v4, v6, :cond_b8

    .line 321
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 322
    :goto_94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_b5

    .line 323
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getOriginPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b2

    .line 326
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    .line 330
    :cond_b5
    invoke-interface {v1, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 332
    :cond_b8
    sget-object v4, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadDraft, segmentItems size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    :cond_d2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e0

    .line 336
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 344
    :cond_e0
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->isValid()Z

    move-result v1

    if-nez v1, :cond_f0

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->mDraftItem:Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    .line 347
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->getDraftNameMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/tencent/mmkv/MMKV;->removeValueForKey(Ljava/lang/String;)V

    .line 351
    :cond_f0
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDraft end, draftItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public refresh(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->doRefresh(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    return-void
.end method

.method public unInit()V
    .registers 1

    return-void
.end method

.method public updateComposeState(I)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->doUpdateComposeState(I)V

    return-void
.end method

.method public updateCurrentSegment(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V
    .registers 3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->doUpdateCurrentSegment(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V

    return-void
.end method

.method public updateItemList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->doUpdateItemList(Ljava/util/List;)V

    return-void
.end method

.method public updateTemplateId(J)V
    .registers 3

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->doUpdateTemplateId(J)V

    return-void
.end method
