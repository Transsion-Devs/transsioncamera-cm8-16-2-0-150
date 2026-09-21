.class public Lcom/ss/android/medialib/photomovie/MovieCover;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 18
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadOldEditor()V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 33
    new-instance v0, Lcom/ss/android/medialib/photomovie/TransitionParams;

    const/16 v1, 0x9c4

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/ss/android/medialib/photomovie/TransitionParams;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/ss/android/medialib/photomovie/MovieCover;-><init>(Lcom/ss/android/medialib/photomovie/TransitionParams;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/medialib/photomovie/TransitionParams;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Lcom/ss/android/medialib/photomovie/TransitionParams;->id:I

    iget v1, p1, Lcom/ss/android/medialib/photomovie/TransitionParams;->photoTime:I

    iget p1, p1, Lcom/ss/android/medialib/photomovie/TransitionParams;->transitionTime:I

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/photomovie/MovieCover;->nativeCreate(III)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/photomovie/MovieCover;->mHandle:J

    return-void
.end method

.method private native nativeCreate(III)J
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetCover(J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIJII)Lcom/ss/android/medialib/model/CoverInfo;
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/ss/android/medialib/photomovie/MovieCover;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/photomovie/MovieCover;->nativeDestroy(J)V

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/ss/android/medialib/photomovie/MovieCover;->mHandle:J

    return-void
.end method

.method public getCover([Ljava/lang/String;Ljava/lang/String;IJII)Lcom/ss/android/medialib/model/CoverInfo;
    .registers 20

    .line 52
    iget-wide v1, p0, Lcom/ss/android/medialib/photomovie/MovieCover;->mHandle:J

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/medialib/photomovie/MovieCover;->nativeGetCover(J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIJII)Lcom/ss/android/medialib/model/CoverInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCover([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIJ)Lcom/ss/android/medialib/model/CoverInfo;
    .registers 20

    .line 66
    iget-wide v1, p0, Lcom/ss/android/medialib/photomovie/MovieCover;->mHandle:J

    const/16 v10, 0x2d0

    const/16 v11, 0x500

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/medialib/photomovie/MovieCover;->nativeGetCover(J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIJII)Lcom/ss/android/medialib/model/CoverInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCover([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIJII)Lcom/ss/android/medialib/model/CoverInfo;
    .registers 22

    .line 83
    iget-wide v1, p0, Lcom/ss/android/medialib/photomovie/MovieCover;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/medialib/photomovie/MovieCover;->nativeGetCover(J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIJII)Lcom/ss/android/medialib/model/CoverInfo;

    move-result-object p0

    return-object p0
.end method
