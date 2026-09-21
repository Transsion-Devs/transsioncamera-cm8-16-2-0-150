.class public Lcom/ss/android/medialib/model/FaceAttributeItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field category:Ljava/lang/String;

.field label:F

.field score:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->category:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()F
    .registers 1

    .line 37
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->label:F

    return p0
.end method

.method public getScore()F
    .registers 1

    .line 45
    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->score:F

    return p0
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->category:Ljava/lang/String;

    return-void
.end method

.method public setLabel(F)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->label:F

    return-void
.end method

.method public setScore(F)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->score:F

    return-void
.end method
