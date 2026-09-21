.class public Lcom/ss/android/medialib/photomovie/TransitionParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PHOTO_TIME:I = 0x9c4

.field public static final DEFAULT_TRANSITION_TIME:I = 0x1f4


# instance fields
.field public id:I

.field public photoTime:I

.field public transitionTime:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/ss/android/medialib/photomovie/TransitionParams;->id:I

    const/16 v0, 0x9c4

    .line 41
    iput v0, p0, Lcom/ss/android/medialib/photomovie/TransitionParams;->photoTime:I

    const/16 v0, 0x1f4

    .line 47
    iput v0, p0, Lcom/ss/android/medialib/photomovie/TransitionParams;->transitionTime:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/ss/android/medialib/photomovie/TransitionParams;->id:I

    .line 18
    iput p2, p0, Lcom/ss/android/medialib/photomovie/TransitionParams;->photoTime:I

    .line 19
    iput p3, p0, Lcom/ss/android/medialib/photomovie/TransitionParams;->transitionTime:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v1, "\"id\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/medialib/photomovie/TransitionParams;->id:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ",\"photoTime\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/medialib/photomovie/TransitionParams;->photoTime:I

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ",\"transitionTime\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/medialib/photomovie/TransitionParams;->transitionTime:I

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
