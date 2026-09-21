.class public Lcom/ss/android/medialib/model/FaceDetectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field info:[Lcom/ss/android/medialib/model/FaceDetect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()[Lcom/ss/android/medialib/model/FaceDetect;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceDetectInfo;->info:[Lcom/ss/android/medialib/model/FaceDetect;

    return-object p0
.end method

.method public setInfo([Lcom/ss/android/medialib/model/FaceDetect;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetectInfo;->info:[Lcom/ss/android/medialib/model/FaceDetect;

    return-void
.end method
