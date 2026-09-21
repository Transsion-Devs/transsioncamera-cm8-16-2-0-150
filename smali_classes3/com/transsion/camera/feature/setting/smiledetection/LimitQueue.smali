.class public Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private limit:I

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->queue:Ljava/util/LinkedList;

    .line 15
    iput p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->limit:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLimit()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->limit:I

    return p0
.end method

.method public offer(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->limit:I

    if-lt v0, v1, :cond_f

    .line 23
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 25
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    return p0
.end method
