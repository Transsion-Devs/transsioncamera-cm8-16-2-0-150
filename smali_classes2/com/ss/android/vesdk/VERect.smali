.class public Lcom/ss/android/vesdk/VERect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/ss/android/vesdk/VERect;->x:I

    .line 16
    iput p2, p0, Lcom/ss/android/vesdk/VERect;->y:I

    .line 17
    iput p3, p0, Lcom/ss/android/vesdk/VERect;->width:I

    .line 18
    iput p4, p0, Lcom/ss/android/vesdk/VERect;->height:I

    return-void
.end method
