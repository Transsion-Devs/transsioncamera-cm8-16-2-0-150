.class public Lcom/ss/android/medialib/model/Skeleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private ID:I

.field private points:[Landroid/graphics/PointF;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()I
    .registers 1

    .line 43
    iget p0, p0, Lcom/ss/android/medialib/model/Skeleton;->ID:I

    return p0
.end method

.method public getPoints()[Landroid/graphics/PointF;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/ss/android/medialib/model/Skeleton;->points:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public getRect()Landroid/graphics/RectF;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/medialib/model/Skeleton;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setID(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/ss/android/medialib/model/Skeleton;->ID:I

    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/ss/android/medialib/model/Skeleton;->points:[Landroid/graphics/PointF;

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/ss/android/medialib/model/Skeleton;->rect:Landroid/graphics/RectF;

    return-void
.end method
