.class public Lcom/ss/android/ttve/common/TETrackIndexManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/common/TETrackIndexManager$TETrackType;
    }
.end annotation


# static fields
.field public static final TRACK_TYPE_AUDIO:I = 0x1

.field public static final TRACK_TYPE_VIDEO:I = 0x2


# instance fields
.field private mAudioTrackIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstAudioIndex:I

.field private mFirstVideoIndex:I

.field private mVideoTrackIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstAudioIndex:I

    .line 31
    iput v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstVideoIndex:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mAudioTrackIndexList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mVideoTrackIndexList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTrack(II)I
    .registers 6

    if-gez p2, :cond_3

    goto :goto_a

    :cond_3
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_36

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    :goto_a
    return p2

    .line 73
    :cond_b
    iget p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstVideoIndex:I

    if-ne p1, v0, :cond_11

    .line 74
    iput p2, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstVideoIndex:I

    .line 76
    :cond_11
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mVideoTrackIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2c

    .line 77
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mVideoTrackIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 79
    :cond_2c
    iget-object p0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mVideoTrackIndexList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p2

    .line 63
    :cond_36
    iget p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstAudioIndex:I

    if-ne p1, v0, :cond_3c

    .line 64
    iput p2, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstAudioIndex:I

    .line 66
    :cond_3c
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mAudioTrackIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_57

    .line 67
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mAudioTrackIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 69
    :cond_57
    iget-object p0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mAudioTrackIndexList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method public getNativeTrackIndex(II)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_50

    .line 125
    :cond_9
    iget p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstVideoIndex:I

    if-lt p2, p1, :cond_50

    if-ne p1, v2, :cond_10

    goto :goto_50

    .line 128
    :cond_10
    :goto_10
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mVideoTrackIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_50

    .line 129
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mVideoTrackIndexList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_2a

    .line 130
    iget p0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstVideoIndex:I

    :goto_28
    add-int/2addr v1, p0

    return v1

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 115
    :cond_2d
    iget p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstAudioIndex:I

    if-lt p2, p1, :cond_50

    if-ne p1, v2, :cond_34

    goto :goto_50

    .line 118
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mAudioTrackIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_50

    .line 119
    iget-object p1, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mAudioTrackIndexList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_4d

    .line 120
    iget p0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstAudioIndex:I

    goto :goto_28

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_50
    :goto_50
    return p2
.end method

.method public release()V
    .registers 2

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstAudioIndex:I

    .line 140
    iput v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstVideoIndex:I

    .line 141
    iget-object v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mAudioTrackIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object p0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mVideoTrackIndexList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeTrack(II)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    return-void

    .line 98
    :cond_7
    iget-object p0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mVideoTrackIndexList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 95
    :cond_11
    iget-object p0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mAudioTrackIndexList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstAudioIndex:I

    .line 43
    iput v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mFirstVideoIndex:I

    .line 44
    iget-object v0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mAudioTrackIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object p0, p0, Lcom/ss/android/ttve/common/TETrackIndexManager;->mVideoTrackIndexList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
