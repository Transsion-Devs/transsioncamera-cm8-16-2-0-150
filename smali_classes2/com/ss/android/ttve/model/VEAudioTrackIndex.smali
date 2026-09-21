.class public Lcom/ss/android/ttve/model/VEAudioTrackIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mTrackIndex:I

.field public mTrackType:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/ss/android/ttve/model/VEAudioTrackIndex;->mTrackIndex:I

    .line 12
    iput p2, p0, Lcom/ss/android/ttve/model/VEAudioTrackIndex;->mTrackType:I

    return-void
.end method
