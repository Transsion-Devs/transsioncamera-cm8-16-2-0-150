.class public Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private sum:F

.field private window:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private windowSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->window:Ljava/util/Queue;

    .line 13
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->windowSize:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->sum:F

    return-void
.end method

.method private calculateStdDev(Ljava/util/Queue;F)F
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v0

    sub-float/2addr v1, p2

    float-to-double v0, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 38
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    double-to-float v0, v2

    goto :goto_5

    .line 40
    :cond_21
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public processData(F)Ljava/lang/Float;
    .registers 4

    .line 18
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->window:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->windowSize:I

    if-ne v0, v1, :cond_1b

    .line 19
    iget v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->sum:F

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->window:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->sum:F

    .line 22
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->window:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 23
    iget v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->sum:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->sum:F

    .line 25
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->window:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 26
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->window:Ljava/util/Queue;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/supernight/utils/OutlierRemover;->calculateStdDev(Ljava/util/Queue;F)F

    move-result p0

    sub-float v0, p1, v0

    .line 28
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_46

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_46
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
