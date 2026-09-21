.class public Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/model/VEAlgorithmResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "C1CategoryItem"
.end annotation


# instance fields
.field private prob:F

.field private satisfied:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FZI)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;->setProb(F)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;->setSatisfied(Z)V

    .line 56
    # getter for: Lcom/ss/android/ttve/model/VEAlgorithmResult;->tags:[Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/ttve/model/VEAlgorithmResult;->access$000()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProb()F
    .registers 1

    .line 60
    iget p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;->prob:F

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public isSatisfied()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;->satisfied:Z

    return p0
.end method

.method public setProb(F)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;->prob:F

    return-void
.end method

.method public setSatisfied(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;->satisfied:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;->tag:Ljava/lang/String;

    return-void
.end method
