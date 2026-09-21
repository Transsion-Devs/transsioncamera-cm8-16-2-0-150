.class public Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private height:I

.field private final hlResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation
.end field

.field private landscapePath:Ljava/lang/String;

.field private orientation:I

.field private originDuration:J

.field private originPath:Ljava/lang/String;

.field private portraitPath:Ljava/lang/String;

.field private sourceStartTime:J

.field private style:I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIJI)V
    .registers 13

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->hlResults:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originPath:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->portraitPath:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->landscapePath:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->width:I

    .line 30
    iput p5, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->height:I

    .line 31
    iput-wide p6, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->sourceStartTime:J

    .line 32
    iput p8, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->orientation:I

    .line 33
    iput-wide p9, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originDuration:J

    .line 34
    iput p11, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->style:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->height:I

    return p0
.end method

.method public getHlResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->hlResults:Ljava/util/List;

    return-object p0
.end method

.method public getLandscapePath()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->landscapePath:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 116
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->orientation:I

    return p0
.end method

.method public getOriginDuration()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originDuration:J

    return-wide v0
.end method

.method public getOriginPath()Ljava/lang/String;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPortraitPath()Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->portraitPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceStartTime()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->sourceStartTime:J

    return-wide v0
.end method

.method public getStyle()I
    .registers 1

    .line 133
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->style:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 68
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->width:I

    return p0
.end method

.method public isValid()Z
    .registers 7

    .line 38
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->style:I

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_23

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->portraitPath:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->landscapePath:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->orientation:I

    if-ltz v0, :cond_22

    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originDuration:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_22

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->sourceStartTime:J

    cmp-long p0, v2, v0

    if-gez p0, :cond_22

    return v5

    :cond_22
    return v4

    :cond_23
    if-ne v0, v5, :cond_3a

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originPath:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->orientation:I

    if-ltz v0, :cond_3a

    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originDuration:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3a

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->sourceStartTime:J

    cmp-long p0, v2, v0

    if-gez p0, :cond_3a

    return v5

    :cond_3a
    return v4
.end method

.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originPath:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->portraitPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->width:I

    .line 60
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->height:I

    .line 61
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->landscapePath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->sourceStartTime:J

    const/4 v2, -0x1

    .line 63
    iput v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->orientation:I

    .line 64
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originDuration:J

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->height:I

    return-void
.end method

.method public setHlResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->hlResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->hlResults:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setLandscapePath(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->landscapePath:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 120
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->orientation:I

    return-void
.end method

.method public setOriginDuration(J)V
    .registers 3

    .line 128
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originDuration:J

    return-void
.end method

.method public setOriginPath(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->originPath:Ljava/lang/String;

    return-void
.end method

.method public setPortraitPath(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->portraitPath:Ljava/lang/String;

    return-void
.end method

.method public setSourceStartTime(J)V
    .registers 3

    .line 112
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->sourceStartTime:J

    return-void
.end method

.method public setStyle(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->style:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->width:I

    return-void
.end method
