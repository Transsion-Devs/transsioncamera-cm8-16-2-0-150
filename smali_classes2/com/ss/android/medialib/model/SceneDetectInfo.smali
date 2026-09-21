.class public Lcom/ss/android/medialib/model/SceneDetectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field choose:I

.field mSceneDetectItems:[Lcom/ss/android/medialib/model/SceneDetectItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChoose()I
    .registers 1

    .line 21
    iget p0, p0, Lcom/ss/android/medialib/model/SceneDetectInfo;->choose:I

    return p0
.end method

.method public getSceneDetectItems()[Lcom/ss/android/medialib/model/SceneDetectItem;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/android/medialib/model/SceneDetectInfo;->mSceneDetectItems:[Lcom/ss/android/medialib/model/SceneDetectItem;

    return-object p0
.end method

.method public setChoose(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/ss/android/medialib/model/SceneDetectInfo;->choose:I

    return-void
.end method

.method public setSceneDetectItems([Lcom/ss/android/medialib/model/SceneDetectItem;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/ss/android/medialib/model/SceneDetectInfo;->mSceneDetectItems:[Lcom/ss/android/medialib/model/SceneDetectItem;

    return-void
.end method
