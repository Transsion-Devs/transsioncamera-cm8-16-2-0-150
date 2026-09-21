.class public Lcom/ss/android/vesdk/VETouchPointer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;
    }
.end annotation


# instance fields
.field private event:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

.field private force:F

.field private majorRadius:F

.field private pointerId:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/ss/android/vesdk/VETouchPointer$TouchEvent;FFFF)V
    .registers 7

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/ss/android/vesdk/VETouchPointer;->pointerId:I

    .line 44
    iput-object p2, p0, Lcom/ss/android/vesdk/VETouchPointer;->event:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    .line 45
    iput p3, p0, Lcom/ss/android/vesdk/VETouchPointer;->x:F

    .line 46
    iput p4, p0, Lcom/ss/android/vesdk/VETouchPointer;->y:F

    .line 47
    iput p5, p0, Lcom/ss/android/vesdk/VETouchPointer;->force:F

    .line 48
    iput p6, p0, Lcom/ss/android/vesdk/VETouchPointer;->majorRadius:F

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/ss/android/vesdk/VETouchPointer;->event:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    return-object p0
.end method

.method public getForce()F
    .registers 1

    .line 120
    iget p0, p0, Lcom/ss/android/vesdk/VETouchPointer;->force:F

    return p0
.end method

.method public getMajorRadius()F
    .registers 1

    .line 136
    iget p0, p0, Lcom/ss/android/vesdk/VETouchPointer;->majorRadius:F

    return p0
.end method

.method public getPointerId()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/ss/android/vesdk/VETouchPointer;->pointerId:I

    return p0
.end method

.method public getX()F
    .registers 1

    .line 88
    iget p0, p0, Lcom/ss/android/vesdk/VETouchPointer;->x:F

    return p0
.end method

.method public getY()F
    .registers 1

    .line 104
    iget p0, p0, Lcom/ss/android/vesdk/VETouchPointer;->y:F

    return p0
.end method

.method public setEvent(Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/ss/android/vesdk/VETouchPointer;->event:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    return-void
.end method

.method public setForce(F)V
    .registers 2

    .line 128
    iput p1, p0, Lcom/ss/android/vesdk/VETouchPointer;->force:F

    return-void
.end method

.method public setMajorRadius(F)V
    .registers 2

    .line 144
    iput p1, p0, Lcom/ss/android/vesdk/VETouchPointer;->majorRadius:F

    return-void
.end method

.method public setPointerId(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/ss/android/vesdk/VETouchPointer;->pointerId:I

    return-void
.end method

.method public setX(F)V
    .registers 2

    .line 96
    iput p1, p0, Lcom/ss/android/vesdk/VETouchPointer;->x:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 112
    iput p1, p0, Lcom/ss/android/vesdk/VETouchPointer;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pointerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VETouchPointer;->pointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TouchEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VETouchPointer;->event:Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VETouchPointer;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VETouchPointer;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", force: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VETouchPointer;->force:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", majorRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VETouchPointer;->majorRadius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
