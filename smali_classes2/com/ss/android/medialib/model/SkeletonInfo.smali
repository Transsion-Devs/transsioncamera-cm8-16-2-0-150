.class public Lcom/ss/android/medialib/model/SkeletonInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private info:[Lcom/ss/android/medialib/model/Skeleton;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()[Lcom/ss/android/medialib/model/Skeleton;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/android/medialib/model/SkeletonInfo;->info:[Lcom/ss/android/medialib/model/Skeleton;

    return-object p0
.end method

.method public setInfo([Lcom/ss/android/medialib/model/Skeleton;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/ss/android/medialib/model/SkeletonInfo;->info:[Lcom/ss/android/medialib/model/Skeleton;

    return-void
.end method
