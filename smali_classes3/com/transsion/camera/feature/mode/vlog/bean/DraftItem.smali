.class public Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private composeState:I

.field private final segmentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;",
            ">;"
        }
    .end annotation
.end field

.field private style:I

.field private templateId:J


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 16

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5f

    .line 19
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->templateId:J

    .line 20
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getComposeState()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->composeState:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->segmentItems:Ljava/util/List;

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->style:I

    .line 24
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 26
    :goto_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 28
    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 29
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_width()I

    move-result v6

    .line 33
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_height()I

    move-result v7

    .line 34
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v8

    .line 35
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v10

    .line 36
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v11

    const/4 v13, 0x2

    invoke-direct/range {v2 .. v13}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJI)V

    .line 38
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->segmentItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_5e
    return-void

    .line 41
    :cond_5f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->segmentItems:Ljava/util/List;

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->style:I

    return-void
.end method


# virtual methods
.method public getComposeState()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->composeState:I

    return p0
.end method

.method public getSegmentItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->segmentItems:Ljava/util/List;

    return-object p0
.end method

.method public getStyle()I
    .registers 1

    .line 88
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->style:I

    return p0
.end method

.method public getTemplateId()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->templateId:J

    return-wide v0
.end method

.method public isValid()Z
    .registers 2

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->segmentItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 48
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 2

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->segmentItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 58
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->reset()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setComposeState(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->composeState:I

    return-void
.end method

.method public setSegmentItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->segmentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->segmentItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setStyle(I)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->style:I

    return-void
.end method

.method public setTemplateId(J)V
    .registers 3

    .line 75
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->templateId:J

    return-void
.end method
