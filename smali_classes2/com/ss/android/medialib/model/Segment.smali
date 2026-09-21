.class public Lcom/ss/android/medialib/model/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field path:Ljava/lang/String;

.field points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/model/Point;",
            ">;"
        }
    .end annotation
.end field

.field rotateAngle:I

.field speed:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/model/Point;",
            ">;I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ss/android/medialib/model/Segment;->path:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/ss/android/medialib/model/Segment;->speed:F

    .line 25
    iput-object p3, p0, Lcom/ss/android/medialib/model/Segment;->points:Ljava/util/List;

    .line 26
    iput p4, p0, Lcom/ss/android/medialib/model/Segment;->rotateAngle:I

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/ss/android/medialib/model/Segment;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPoints()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/model/Point;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/ss/android/medialib/model/Segment;->points:Ljava/util/List;

    return-object p0
.end method

.method public getPointsArray()[Lcom/ss/android/medialib/model/Point;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/ss/android/medialib/model/Segment;->points:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_19

    .line 63
    :cond_b
    iget-object v0, p0, Lcom/ss/android/medialib/model/Segment;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ss/android/medialib/model/Point;

    .line 64
    iget-object p0, p0, Lcom/ss/android/medialib/model/Segment;->points:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRotateAngle()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/ss/android/medialib/model/Segment;->rotateAngle:I

    return p0
.end method

.method public getSpeed()F
    .registers 1

    .line 38
    iget p0, p0, Lcom/ss/android/medialib/model/Segment;->speed:F

    return p0
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ss/android/medialib/model/Segment;->path:Ljava/lang/String;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/model/Point;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/ss/android/medialib/model/Segment;->points:Ljava/util/List;

    return-void
.end method

.method public setRotateAngle(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/ss/android/medialib/model/Segment;->rotateAngle:I

    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/ss/android/medialib/model/Segment;->speed:F

    return-void
.end method
