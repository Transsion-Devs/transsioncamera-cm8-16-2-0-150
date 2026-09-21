.class public Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBuffer:[B

.field private mSize:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;->mBuffer:[B

    .line 19
    iput p2, p0, Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;->mSize:I

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;->mBuffer:[B

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 9
    iget p0, p0, Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;->mSize:I

    return p0
.end method
