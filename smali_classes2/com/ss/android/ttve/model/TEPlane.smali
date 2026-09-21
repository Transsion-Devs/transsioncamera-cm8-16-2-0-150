.class public Lcom/ss/android/ttve/model/TEPlane;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field planes:[Landroid/media/Image$Plane;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Landroid/media/Image$Plane;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ss/android/ttve/model/TEPlane;->planes:[Landroid/media/Image$Plane;

    return-void
.end method


# virtual methods
.method public getPlanes()[Landroid/media/Image$Plane;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ss/android/ttve/model/TEPlane;->planes:[Landroid/media/Image$Plane;

    return-object p0
.end method
