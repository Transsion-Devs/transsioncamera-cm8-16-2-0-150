.class public Lcom/ss/android/medialib/model/Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field left:J

.field right:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/ss/android/medialib/model/Point;->left:J

    .line 12
    iput-wide p3, p0, Lcom/ss/android/medialib/model/Point;->right:J

    return-void
.end method


# virtual methods
.method public getLeft()J
    .registers 3

    .line 16
    iget-wide v0, p0, Lcom/ss/android/medialib/model/Point;->left:J

    return-wide v0
.end method

.method public getRight()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/ss/android/medialib/model/Point;->right:J

    return-wide v0
.end method

.method public setLeft(J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/ss/android/medialib/model/Point;->left:J

    return-void
.end method

.method public setRight(J)V
    .registers 3

    .line 28
    iput-wide p1, p0, Lcom/ss/android/medialib/model/Point;->right:J

    return-void
.end method
