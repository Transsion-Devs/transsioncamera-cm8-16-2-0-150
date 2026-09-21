.class public Lcom/ss/android/medialib/camera/Plane;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field mPlanes:[Landroid/media/Image$Plane;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Landroid/media/Image$Plane;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Plane;->mPlanes:[Landroid/media/Image$Plane;

    return-void
.end method


# virtual methods
.method public getPlanes()[Landroid/media/Image$Plane;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Plane;->mPlanes:[Landroid/media/Image$Plane;

    return-object p0
.end method
