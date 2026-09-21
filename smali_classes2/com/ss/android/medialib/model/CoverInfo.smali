.class public Lcom/ss/android/medialib/model/CoverInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field data:[I

.field height:I

.field width:I


# direct methods
.method public constructor <init>(II[I)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/ss/android/medialib/model/CoverInfo;->width:I

    .line 17
    iput p2, p0, Lcom/ss/android/medialib/model/CoverInfo;->height:I

    .line 18
    iput-object p3, p0, Lcom/ss/android/medialib/model/CoverInfo;->data:[I

    return-void
.end method


# virtual methods
.method public getData()[I
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/ss/android/medialib/model/CoverInfo;->data:[I

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/ss/android/medialib/model/CoverInfo;->height:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/ss/android/medialib/model/CoverInfo;->width:I

    return p0
.end method

.method public setData([I)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/ss/android/medialib/model/CoverInfo;->data:[I

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/ss/android/medialib/model/CoverInfo;->height:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/ss/android/medialib/model/CoverInfo;->width:I

    return-void
.end method
